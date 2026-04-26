<cfscript>
    // Collect questions
    questionsDir = expandPath("./questions");
    solutionsDir = expandPath("./solution_cfml");

    qFiles = directoryList(questionsDir, false, "name", "*.md", "name asc");
    sFiles = directoryList(solutionsDir, false, "name", "*.cfm", "name asc");

    // Build a set of solution slugs for quick lookup
    solutionSet = {};
    for (sf in sFiles) {
        solutionSet[listFirst(sf, ".")] = true;
    }

    function parseDifficulty(content) {
        local.m = reMatchNoCase("\((Easy|Medium|Hard)\)", content);
        return arrayLen(local.m) ? local.m[1].replaceAll("[()]","") : "";
    }

    function parseTitle(content) {
        local.h = chr(35);
        // Extract only the first line, then pull the H1 text from it
        local.firstLine = trim(listFirst(content, chr(10)));
        if (left(local.firstLine, 1) != local.h) return "";
        local.t = trim(reReplaceNoCase(local.firstLine, "^" & local.h & "+\s*", ""));
        // Strip trailing non-ASCII text (e.g. Chinese subtitle appended to H1)
        local.t = trim(reReplace(local.t, "[^\x00-\x7F].*$", ""));
        return local.t;
    }

    function parseTags(content) {
        local.tags = [];
        local.matches = reMatchNoCase("\[([^\]]+)\]\(https://leetcode\.com/tag/[^\)]+\)", content);
        for (local.t in local.matches) {
            local.label = reReplaceNoCase(local.t, "\[([^\]]+)\]\([^\)]+\)", "\1");
            arrayAppend(local.tags, local.label);
        }
        return local.tags;
    }

    function parseDescription(content) {
        local.h = chr(35);
        local.lines = listToArray(content, chr(10));
        local.descLines = [];
        local.inSimilar = false;
        local.inTags = false;

        for (local.i = 1; local.i <= arrayLen(local.lines); local.i++) {
            local.line = local.lines[local.i];
            local.trimmed = trim(local.line);

            // Skip title line (starts with #)
            if (local.i == 1 && left(local.trimmed, 1) == local.h) continue;

            // Skip badge line like [0000001]
            if (reFind("^\[0+\d+\]", local.trimmed)) continue;

            // Skip bare URL lines
            if (reFind("^https?://", local.trimmed)) continue;
            if (reFind("^-\s+https?://", local.trimmed)) continue;

            // Skip Topic Tags section
            if (local.trimmed == "Topic Tags:") { local.inTags = true; continue; }
            if (local.inTags && left(local.trimmed,1) == "-" && findNoCase("leetcode.com/tag/", local.trimmed)) continue;
            if (local.inTags && local.trimmed == "") continue;
            if (local.inTags && local.trimmed != "" && left(local.trimmed,1) != "-") local.inTags = false;

            // Skip Similar Questions section
            if (reFind("^Similar Questions", local.trimmed)) { local.inSimilar = true; continue; }
            if (local.inSimilar && left(local.trimmed,1) == "-") continue;
            if (local.inSimilar && local.trimmed == "") continue;
            if (local.inSimilar && local.trimmed != "" && left(local.trimmed,1) != "-") local.inSimilar = false;

            // Skip ## Problem Description heading
            if (local.trimmed == local.h & local.h & " Problem Description") continue;

            arrayAppend(local.descLines, local.line);
        }

        return trim(arrayToList(local.descLines, chr(10)));
    }

    // Build questions array
    questions = [];
    for (qf in qFiles) {
        local.slug = listFirst(qf, ".");
        local.num  = val(listFirst(local.slug, "-"));
        local.path = questionsDir & "/" & qf;
        local.raw  = fileRead(local.path);

        local.title  = parseTitle(local.raw);
        local.diff   = parseDifficulty(local.raw);
        local.tags   = parseTags(local.raw);
        local.desc   = parseDescription(local.raw);
        local.hasSol = structKeyExists(solutionSet, local.slug);

        arrayAppend(questions, {
            num:    local.num,
            slug:   local.slug,
            title:  local.title,
            diff:   local.diff,
            tags:   local.tags,
            desc:   local.desc,
            hasSol: local.hasSol
        });
    }

    arraySort(questions, function(a, b) { return a.num - b.num; });
</cfscript>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LeetCode — CFML Solutions</title>
    <link rel="stylesheet" href="/css/theme.css">
</head>
<body>

<cfinclude template="/template/header.cfm">

<div class="hero">
    <h1>LeetCode <span>Solutions</span></h1>
    <p>Classic algorithm problems solved in CFML — running on Lucee.</p>
    <cfscript>
        totalQ   = arrayLen(questions);
        solvedQ  = 0;
        easyC    = 0; medC = 0; hardC = 0;
        for (q in questions) {
            if (q.hasSol) solvedQ++;
            switch(lCase(q.diff)) {
                case "easy":   easyC++; break;
                case "medium": medC++;  break;
                case "hard":   hardC++; break;
            }
        }
    </cfscript>
    <cfoutput>
    <div class="stats">
        <div class="stat">
            <div class="stat-num questions">#totalQ#</div>
            <div class="stat-label">Questions</div>
        </div>
        <div class="stat">
            <div class="stat-num solutions">#solvedQ#</div>
            <div class="stat-label">Solutions</div>
        </div>
        <div class="stat">
            <div class="stat-num" style="color:var(--easy)">#easyC#</div>
            <div class="stat-label">Easy</div>
        </div>
        <div class="stat">
            <div class="stat-num" style="color:var(--medium)">#medC#</div>
            <div class="stat-label">Medium</div>
        </div>
        <div class="stat">
            <div class="stat-num" style="color:var(--hard)">#hardC#</div>
            <div class="stat-label">Hard</div>
        </div>
    </div>
    </cfoutput>
</div>

<main>
    <div class="filter-bar">
        <input type="text" id="searchInput" placeholder="Search questions…" oninput="applyFilters()">
        <button class="filter-btn btn-all active" data-diff="all" onclick="setDiff(this)">All</button>
        <button class="filter-btn diff-easy"   data-diff="easy"   onclick="setDiff(this)">Easy</button>
        <button class="filter-btn diff-medium" data-diff="medium" onclick="setDiff(this)">Medium</button>
        <button class="filter-btn diff-hard"   data-diff="hard"   onclick="setDiff(this)">Hard</button>
        <button class="filter-btn btn-solved" data-solved="1" onclick="toggleSolved(this)">Has Solution</button>
    </div>

    <div class="question-list" id="questionList">
    <cfoutput>
    <cfloop array="#questions#" item="q">
        <cfset diffClass = lCase(q.diff)>
        <div class="question-item"
             data-title="#lCase(htmlEditFormat(q.title))#"
             data-diff="#lCase(q.diff)#"
             data-solved="#q.hasSol ? '1' : '0'#">

            <div class="q-header" onclick="toggleItem(this)">
                <span class="q-num">###q.num#</span>
                <span class="q-title">#htmlEditFormat(q.title)#</span>
                <cfif len(q.diff)>
                    <span class="badge badge-#diffClass#">#q.diff#</span>
                </cfif>
                <svg class="q-chevron" width="12" height="12" viewBox="0 0 12 12" fill="none">
                    <path d="M2 4l4 4 4-4" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                </svg>
            </div>

            <div class="q-body">
                <cfif arrayLen(q.tags)>
                    <div class="q-tags">
                        <cfloop array="#q.tags#" item="tag">
                            <span class="tag">#htmlEditFormat(tag)#</span>
                        </cfloop>
                    </div>
                </cfif>

                <script type="text/markdown">#q.desc#</script>
                <div class="q-desc"></div>

                <div class="q-solutions">
                    <span class="solutions-label">Solutions:</span>
                    <cfif q.hasSol>
                        <a class="solution-link" href="/solution_cfml/#q.slug#.cfm" target="_blank">
                            <svg width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <polyline points="16 18 22 12 16 6"/><polyline points="8 6 2 12 8 18"/>
                            </svg>
                            CFML
                        </a>
                    <cfelse>
                        <span class="no-solution">No solution yet</span>
                    </cfif>
                </div>
            </div>

        </div>
    </cfloop>
    </cfoutput>
    </div>
</main>

<cfinclude template="/template/footer.cfm">

<script src="/lib/marked.min.js"></script>
<script>
    var activeDiff    = "all";
    var needsSolution = false;

    function renderMarkdown(item) {
        var desc = item.querySelector(".q-desc");
        if (desc.dataset.rendered) return;
        var src = item.querySelector('script[type="text/markdown"]');
        if (src) desc.innerHTML = marked.parse(src.textContent);
        desc.dataset.rendered = "1";
    }

    function toggleItem(header) {
        var item = header.parentElement;
        item.classList.toggle("open");
        if (item.classList.contains("open")) renderMarkdown(item);
    }

    function setDiff(btn) {
        activeDiff = btn.dataset.diff;
        document.querySelectorAll(".filter-btn[data-diff]").forEach(function(b) {
            b.classList.remove("active");
        });
        btn.classList.add("active");
        applyFilters();
    }

    function toggleSolved(btn) {
        needsSolution = !needsSolution;
        btn.classList.toggle("active", needsSolution);
        applyFilters();
    }

    function applyFilters() {
        var term = document.getElementById("searchInput").value.toLowerCase().trim();
        document.querySelectorAll(".question-item").forEach(function(item) {
            var title  = item.dataset.title  || "";
            var diff   = item.dataset.diff   || "";
            var solved = item.dataset.solved || "0";

            var matchSearch = !term || title.indexOf(term) !== -1;
            var matchDiff   = activeDiff === "all" || diff === activeDiff;
            var matchSolved = !needsSolution || solved === "1";

            if (matchSearch && matchDiff && matchSolved) {
                item.classList.remove("hidden");
            } else {
                item.classList.add("hidden");
                item.classList.remove("open");
            }
        });
    }
</script>

</body>
</html>

# AI Coding Rules — Content Distribution Kit

> One file. Everything you need to launch ai-coding-rules across all platforms.

---

## 1. Hand-Drawn Diagram Prompt (Gemini)

Copy-paste this into Google Gemini to generate the hero image.

```
Hand-drawn whiteboard infographic on white lined notebook paper, sitting on a natural wooden desk surface visible at the edges. Black marker lines, cyan (#00D4FF) marker highlights, yellow highlighter on key numbers. Real marker ink texture, natural paper grain. Photo of a real whiteboard after a brainstorming session. 16:9 aspect ratio.

=== TOP TITLE BAR ===
Hand-written bold title: "AI Coding Rules"
Below it: "15 Rules + 9 Templates = Your AI Writes Like a Senior Engineer" with yellow highlight on "Senior Engineer"
Cyan marker underline stroke under the main title.
TOP-RIGHT: "AiwithDhruv" in bold cyan marker inside a hand-drawn rounded rectangle badge. Smaller text below: "youtube | github | linkedin"

=== LEFT COLUMN — "What You Get" ===
Header: "What You Get" inside a hand-drawn box

Numbered checklist with small hand-drawn icons next to each:
[x] "15 Engineering Rules" — small gear icon
[x] "9 Doc Templates" — small document icon
[x] "Cursor + Claude Code" — small terminal icon
[x] "One-Line Install" — small download arrow icon
[x] "Compose Your Own" — small puzzle piece icon
[x] "MIT License — Free" — small heart icon

Each checkbox drawn with cyan marker tick marks.

=== CENTER — "The 15 Rules" (largest section) ===
Header: "The 15 Rules" with a circle around it

Flowchart showing a vertical stack of hand-drawn rounded boxes, grouped and connected by bracket arrows:

GROUP 1 — "Foundation":
[00] "Global Architect" — "think architect first"
[10] "Backend FastAPI" — "thin routes, fat services"
[20] "Frontend Next.js" — "TypeScript, small components"

GROUP 2 — "Data Layer":
[30] "Database PostgreSQL" — "migrations, indexes"
[35] "API Contracts" — "versioned, typed schemas"
[40] "Cache Redis" — "intentional TTLs"

GROUP 3 — "AI/ML":
[45] "Environment Config" — "validate at startup"
[50] "RAG System" — "separate ingestion from gen"
[55] "Data Versioning" — "named checkpoints"
[60] "AI Agents" — "tool schemas, validated outputs"

GROUP 4 — "Ship It":
[70] "Security" — "no secrets in code"
[80] "Testing" — "deterministic tests"
[85] "Observability" — "structured errors"
[90] "DevOps" — "Docker, AWS, Vercel, VPS"
[99] "Response Style" — "production code only"

Hand-drawn arrows connecting each group downward. Small cyan dots between groups.

=== FLASH CARDS scattered around like sticky notes, tilted at slight angles ===

Yellow sticky note (tilted, near top-right):
"Works With"
"Cursor (.mdc files)"
"Claude Code (CLAUDE.md)"
Small terminal cursor doodle

Light blue sticky note (tilted, near center-right):
"9 Doc Templates"
"PRD + Architecture + API"
"DB Schema + Deployment"
Small document stack doodle

Pink sticky note (tilted, near bottom-left):
"Compose.sh"
"Pick only rules you need"
"./compose.sh 00 10 30 70"
Small gear doodle

Light green sticky note (tilted, near center-left):
"One Command Install"
"curl ... | bash"
"Works in 30 seconds"
Small rocket doodle

Light purple sticky note (tilted, near bottom-center):
"Production Tested"
"30+ Projects"
"AI Agents, RAG, SaaS"
Small checkmark doodle

Some flash cards have paper clip or tape marks holding them on.

=== RIGHT COLUMN — "Before vs After" ===
Header: "Before vs After"

Split comparison drawn as two browser windows stacked:

TOP browser window labeled "Before (no rules)":
- Messy code lines with red X marks
- "secrets in code" with strikethrough
- "fat controllers" with strikethrough
- "no tests" with strikethrough
- Sad face doodle

BOTTOM browser window labeled "After (with rules)":
- Clean code lines with green checkmarks
- "env vars validated"
- "clean architecture"
- "tested + observable"
- Star doodle

=== BOTTOM LEFT — How It Works ===
Architecture diagram with 3 boxes connected by arrows:

Box 1: "rules/*.mdc" with Cursor logo sketch → "AI reads rules"
Box 2: "CLAUDE.md" with Claude logo sketch → "AI follows patterns"
Box 3: "docs/" with document icon → "AI knows your project"

Arrow from all 3 pointing to a final box: "Production-Grade Code" with a star

=== BOTTOM CENTER — Stats Row ===
Three items in a row, each circled with yellow highlight:
"15 Rules"    "9 Templates"    "30+ Projects Tested"
Small star doodles around the stats

=== BOTTOM RIGHT — Author + Branding ===
"AiwithDhruv" with cyan lightning bolt
"@aiwithdhruv" and "github.com/aiagentwithdhruv"
"AD" monogram in a hand-drawn circle

=== AMBIENT DETAILS ===
- Coffee ring stain near bottom-left (subtle)
- Paper clips on 1-2 flash cards
- Tape marks on corners of some sticky notes
- Blue pen lying on the desk
- Small doodle arrows and stars in empty spaces
- Wooden desk texture at all edges
- Faint "AiwithDhruv" watermark diagonally across center in light grey

=== STYLE — CRITICAL ===
- Real black marker on white paper — authentic hand-drawn feel
- Slightly imperfect handwriting but always readable
- Cyan for headers, connections, branding
- Yellow highlighter for numbers and stats
- Pastel colored sticky notes at slight angles
- Small recognizable tech logos hand-drawn next to every tool
- Everything hand-drawn — NO computer fonts
- Clean enough to read on a phone screen
```

**4:5 version (LinkedIn/Instagram):** Change first line to `4:5 aspect ratio` and remove the "Before vs After" right column to keep it readable on mobile.

---

## 2. LinkedIn Post

```
I open-sourced the exact system that makes my AI write production-grade code.

Not prompts. Not hacks. Engineering rules.

Here's what happened:

I was building across 30+ projects — AI agents, RAG systems, SaaS products, client work.

Every time I started a new project, my AI would:
- Hardcode secrets
- Put business logic in routes
- Skip migrations
- Write toy code instead of production code

So I codified 15 engineering rules that fix this permanently.

Now when I open any project, my AI already thinks like a senior engineer.

What's inside:

00 — Global Architect (clean architecture, separation of concerns)
10 — Backend FastAPI (thin routes, services, repositories)
20 — Frontend Next.js (TypeScript, small components)
30 — Database PostgreSQL (migrations, indexes, constraints)
35 — API Contracts (versioned, typed, consistent errors)
40 — Cache Redis (intentional TTLs, wrapped access)
50 — RAG System (separate ingestion from generation)
60 — AI Agents (tool schemas, validated outputs)
70 — Security (no hardcoded secrets, prompt injection resistance)
80 — Testing (deterministic tests, mocked externals)
90 — DevOps (Docker, AWS, Vercel, VPS, CI/CD)
+ 4 more rules

Also included:
- 9 project doc templates (PRD, Architecture, API Spec, DB Schema, Deployment, and more)
- Works with both Cursor and Claude Code
- One-line install
- Compose script to pick only the rules you need

This isn't theory. It's battle-tested across 30+ real projects.

Install in 10 seconds:
curl -fsSL https://raw.githubusercontent.com/aiagentwithdhruv/ai-coding-rules/main/install.sh | bash

GitHub: github.com/aiagentwithdhruv/ai-coding-rules

Your AI is only as good as the rules you give it.

---
Built with Claude Code. Open source. MIT license.
```

---

## 3. LinkedIn Comment-Style Post (Engagement)

```
Hot take: Most developers using AI coding tools are getting junior-level output from a senior-level model.

The problem isn't the AI.
The problem is you gave it zero engineering standards.

No architecture rules.
No security rules.
No testing expectations.
No deployment patterns.

You're asking a principal engineer to code like an intern — because you never told it otherwise.

I fixed this with 15 rules that load automatically into Cursor and Claude Code.

Now my AI:
- Never hardcodes secrets
- Always uses clean architecture
- Writes migrations, not raw SQL
- Tests critical paths
- Deploys to AWS/Vercel/VPS correctly

The difference between "AI-assisted coding" and "AI-native engineering" is rules.

Would you hire a senior engineer and give them zero context about your codebase?

Then why do that to your AI?

Link in comments.
```

**Comment to post immediately after:**
```
Here's the repo (free, MIT license):
github.com/aiagentwithdhruv/ai-coding-rules

15 rules + 9 doc templates.
Works with Cursor (.mdc) and Claude Code (CLAUDE.md).
One-line install.

Star it if it saves you time.
```

---

## 4. Twitter/X Posts

### Main Tweet
```
I open-sourced 15 engineering rules that make AI write production-grade code.

Works with Cursor + Claude Code.

- Clean architecture
- No hardcoded secrets
- Typed APIs
- Migrations, not raw SQL
- Real tests
- Docker/AWS/Vercel deploy patterns

One-line install. MIT license.

github.com/aiagentwithdhruv/ai-coding-rules
```

### Follow-up Thread (reply to main)
```
What's inside:

00 Global Architect
10 Backend (FastAPI)
20 Frontend (Next.js)
30 Database (PostgreSQL)
35 API Contracts
40 Cache (Redis)
50 RAG System
60 AI Agents
70 Security
80 Testing
90 DevOps
+ 4 more

Also: 9 doc templates — PRD, Architecture, API Spec, DB Schema, Deployment, Skills, Agents, Loadout, MCP

Battle-tested across 30+ projects.
```

### Alternative Tweet (punchy)
```
Your AI writes junior code because you gave it zero rules.

I codified 15 engineering standards that load into Cursor + Claude Code automatically.

Now my AI thinks like a principal architect.

Free. Open source. One-line install.

github.com/aiagentwithdhruv/ai-coding-rules
```

---

## 5. Short Video #1 — "WHAT" (The Problem + Solution)

### Concept
Screen recording: Open a fresh project, show AI writing bad code (secrets hardcoded, fat controllers, no tests). Then drop in ai-coding-rules, show the SAME prompt producing clean code. Before/after split.

### Title Options
1. `I Made My AI Write Like a Senior Engineer (15 Rules)`
2. `Your AI Writes Bad Code. Here's the Fix.`
3. `15 Rules That Turned My AI Into a Principal Architect`

### Description
```
Most developers using Cursor or Claude Code are getting junior-level output from senior-level AI.

The fix? Engineering rules that load automatically.

I open-sourced 15 production-grade rules + 9 doc templates that make your AI think like a principal architect.

Works with Cursor (.mdc files) and Claude Code (CLAUDE.md).

Install in 10 seconds:
curl -fsSL https://raw.githubusercontent.com/aiagentwithdhruv/ai-coding-rules/main/install.sh | bash

GitHub: https://github.com/aiagentwithdhruv/ai-coding-rules

What's inside:
- 15 engineering rules (architecture, backend, frontend, database, security, testing, DevOps)
- 9 doc templates (PRD, Architecture, API Spec, DB Schema, Deployment)
- Compose script to pick only rules you need
- MIT License — completely free

Built with Claude Code. Tested across 30+ real projects.

#cursor #claudecode #aiengineering #programming #webdev
```

### Tags
```
ai coding, cursor rules, claude code, ai engineering, coding rules, clean architecture, fastapi, nextjs, postgresql, devops, ai agents, production code, open source, cursor ide, claude code cli, ai programming, software engineering, coding best practices
```

---

## 6. Short Video #2 — "HOW" (Install + Customize)

### Concept
Terminal recording: Run the install command, show files appearing. Open compose.sh, build a custom CLAUDE.md for a backend-only project. Open Cursor, show rules auto-loading. 60-90 seconds, fast cuts.

### Title Options
1. `Set Up AI Coding Rules in 30 Seconds (Cursor + Claude Code)`
2. `One Command. Your AI Becomes a Senior Engineer.`
3. `How I Configure Every New Project for AI (15 Rules)`

### Description
```
How to set up ai-coding-rules in any project — takes 30 seconds.

Step 1: Run the install command
Step 2: Customize with compose.sh (pick only rules you need)
Step 3: Your AI now follows production engineering standards

Works with both Cursor and Claude Code. Zero conflict.

Install:
curl -fsSL https://raw.githubusercontent.com/aiagentwithdhruv/ai-coding-rules/main/install.sh | bash

Compose examples:
./compose.sh 00 10 30 70 80 99    # Backend only
./compose.sh 00 20 70 80 99        # Frontend only
./compose.sh 00 50 55 60 70 99     # AI/ML only

GitHub: https://github.com/aiagentwithdhruv/ai-coding-rules

15 rules + 9 doc templates. Free. MIT license.

#cursor #claudecode #aitools #programming #devtools
```

### Tags
```
cursor setup, claude code setup, ai coding rules, cursor rules, claude code rules, ai tools, developer tools, coding setup, project setup, clean code, ai programming tutorial, cursor tutorial, claude code tutorial
```

---

## 7. Cinematic Thumbnail Prompts (Dhruv's Style)

### Thumbnail A — Pipeline Flow (Blue Metallic) — BEST FOR YOUTUBE
```
Photorealistic DSLR-quality photo. Young Indian male developer with short hair, trimmed beard, and glasses, wearing a plain black t-shirt, sitting at a natural wooden desk working on a MacBook Pro. The laptop screen shows a dark terminal with green text: "install.sh running... 15 rules loaded". Above the laptop, a holographic pipeline showing: "Rules → AI Reads → Production Code" with green checkmarks on each step. Glowing cyan connection lines between stages. Each stage rendered as a frosted glass card — first card shows ".mdc" file icon, second shows Cursor + Claude Code logos, third shows a clean code output with green checkmarks. Floating on the LEFT side: vertical badge-style labels stacked neatly — "Architecture", "Security", "Testing", "DevOps", "API Contracts" — each with a small cyan icon. On the RIGHT: a frosted glass panel with teal and gunmetal silver-blue neon glow border showing a before/after split — messy code with red X on top, clean code with green check on bottom. Dark moody room with warm ambient light, bookshelf with plants softly blurred in background. Natural skin tones, warm room lighting with teal and metallic silver-blue neon accents only from the floating panels. Clean composition with breathing room between elements. Photorealistic, 8K, sharp focus, shallow depth of field, DSLR quality, cinematic color grading, 16:9 YouTube thumbnail ratio.
```

**Text overlay:** `15 RULES — Your AI Writes Like a SENIOR ENGINEER`
**Highlight:** "15 RULES" in yellow, "SENIOR ENGINEER" in cyan

---

### Thumbnail B — Holographic Command Center (Blue Metallic) — LINKEDIN 4:5
```
Cinematic portrait, dark moody workspace. Young Indian male developer with short hair, trimmed beard, and glasses, wearing a plain black t-shirt, arms crossed with confident smirk. Behind him, a massive holographic screen showing "AI CODING RULES" in electric cyan text. Floating around him in orbital rings: frosted glass cards each containing a rule icon — a gear (Architecture), a shield (Security), a flask (Testing), a rocket (Deploy), a database cylinder (PostgreSQL), a lock (API Contracts). Each card has a subtle teal neon edge glow. Brushed aluminum ring connecting the orbiting cards. Holographic connection lines between related rules. MacBook Pro on the natural wooden desk showing clean terminal output. Small floating text badges: "Cursor", "Claude Code", "15 Rules", "9 Templates". Dark navy background, ice blue neon rim lighting from behind, volumetric fog between the floating cards, frosted glassmorphism panels at multiple depths. Natural skin tones, warm face lighting from the holographic glow. 8K, sharp focus, hyperrealistic, Unreal Engine 5 lighting, 4:5 ratio.
```

**Text overlay:** `Your AI = Senior Engineer`
**Highlight:** "Senior Engineer" in cyan

---

### Thumbnail C — Before/After Split (Mixed) — HIGH ENGAGEMENT
```
Split image, dramatic cinematic still. LEFT SIDE (warm red/orange tint, stressed): Young Indian male developer with short hair, trimmed beard, and glasses, wearing a plain black t-shirt, head in hands, stressed. MacBook Pro showing messy code with red error highlights. Floating red warning icons — "SECRETS IN CODE", "NO TESTS", "FAT CONTROLLERS". Chaotic multiple browser tabs open. RIGHT SIDE (cool teal tint, calm): Same developer, confident smile, arms relaxed. MacBook Pro showing clean terminal with green checkmarks. Floating teal frosted glass badges — "Clean Architecture", "Typed APIs", "Auto-Tests", "Secure Deploy". Dramatic frosted glass dividing line in center with bright white neon glow, cracking like glass shattering. Natural wooden desk continuous across both sides. Dark moody room. Natural skin tones on both sides. Photorealistic, 8K, sharp focus, cinematic color grading, dramatic lighting, 16:9 YouTube thumbnail ratio.
```

**Text overlay:** `BEFORE vs AFTER — 15 Rules Changed Everything`
**Highlight:** "BEFORE" in red, "AFTER" in teal, "15 Rules" in yellow

---

### Thumbnail D — Ghost Copies (Purple Neon) — AUTOMATION ANGLE
```
Cinematic movie still, dark moody workspace. Young Indian male developer with short hair, trimmed beard, and glasses, wearing a plain black t-shirt, sleeping peacefully at natural wooden desk with head resting on arms. MacBook Pro open showing terminal with green text "install.sh complete — 15 rules active". Behind him, 3 translucent purple ghost copies of himself wide awake and working simultaneously — one ghost typing rules into Cursor IDE, one ghost reviewing code in Claude Code terminal, one ghost deploying with a holographic "SHIP IT" button. Each ghost has a neon purple glow outline. Holographic glassmorphism panels floating near each ghost showing different rule categories: "Architecture", "Security + Testing", "DevOps + Deploy". Floating text badge near sleeping developer: "One command. Done." Volumetric fog between the ghosts and the sleeping developer. Dark navy background, purple and teal neon ambient lighting, dramatic rim lighting, cinematic shallow depth of field, 8K, sharp focus, hyperrealistic, Unreal Engine 5 lighting, 16:9 YouTube thumbnail ratio.
```

**Text overlay:** `I SLEEP. My AI Engineers.`
**Highlight:** "SLEEP" in purple, "Engineers" in cyan

---

### Which Thumbnail to Use Where

| Thumbnail | Best For | Platform |
|-----------|----------|----------|
| A — Pipeline Flow | Main YouTube video, GitHub README | 16:9 |
| B — Command Center | LinkedIn post, Instagram | 4:5 |
| C — Before/After | Engagement bait, Reels cover | 16:9 |
| D — Ghost Copies | Automation angle, Twitter | 16:9 |

---

## Quick Reference

| Asset | Platform | Status |
|-------|----------|--------|
| Hand-drawn diagram (16:9) | GitHub README hero | Generate in Gemini |
| Hand-drawn diagram (4:5) | LinkedIn, Instagram | Generate in Gemini |
| Thumbnail A — Pipeline Flow | YouTube main video | Generate in Ideogram/Midjourney |
| Thumbnail B — Command Center | LinkedIn post image | Generate in Ideogram/Midjourney |
| Thumbnail C — Before/After | Engagement posts, Reels cover | Generate in Ideogram/Midjourney |
| Thumbnail D — Ghost Copies | Automation angle, Twitter | Generate in Ideogram/Midjourney |
| LinkedIn post | LinkedIn | Copy-paste |
| LinkedIn comment post | LinkedIn | Copy-paste |
| Twitter main + thread | Twitter/X | Copy-paste |
| Video 1 — What | YouTube Shorts, LinkedIn, Instagram Reels | Record |
| Video 2 — How | YouTube Shorts, LinkedIn, Instagram Reels | Record |

---

## Distribution Checklist

- [ ] Generate hand-drawn diagram in Gemini (16:9 + 4:5)
- [ ] Generate cinematic thumbnails (A for YouTube, B for LinkedIn)
- [ ] Update ai-coding-rules README with hand-drawn diagram as hero image
- [ ] Post LinkedIn main post with Thumbnail B (command center)
- [ ] Post LinkedIn comment post (next day or same day PM)
- [ ] Tweet main + thread
- [ ] Record Video 1 (What — before/after)
- [ ] Record Video 2 (How — install + customize)
- [ ] Upload shorts to YouTube, LinkedIn, Instagram
- [ ] Cross-post to relevant subreddits (r/cursor, r/ClaudeAI, r/programming)

---

*Generated by AiwithDhruv's content pipeline. Reuse this template for any future open-source launch.*

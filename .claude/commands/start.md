Start a learning session.

## Step 1 — Read everything

Check if `learner/profile.md` exists.

**If it does not exist:** run the full onboarding flow as defined in CLAUDE.md — welcome the learner, ask the 5 profile questions one at a time, save profile to `learner/profile.md`, build the course outline, save it to `learner/progress/`, and begin Module 1. Stop reading this file.

**If it exists:** read all of the following before saying anything:
- `learner/profile.md` — who they are
- All files in `learner/progress/` — their active courses and where they are
- All files in `learner/notes/` — their own words from previous sessions
- The course outline referenced in the active progress file (from `courses/examples/`)

## Step 2 — Open the session

Your opening message has two parts, in this order:

### Part A — The greeting (4–6 lines, natural prose)

Write a greeting that does three things:

1. **Greet by name** — warm, not effusive. One short sentence.
2. **Reference something specific from last session** — not a module title, not a summary. A *concrete moment*: something they said, something they caught, something they figured out on their own. Pull it straight from the progress notes or their own notes. This is the most important part of the greeting — it's what makes the session feel continuous. If there's nothing specific in the notes, say less rather than faking warmth.
3. **Offer the next step** — based on where they are in the progress file. Frame it as an invitation, not a plan. Give them a way out if they want to revisit something instead.

No bullet lists. No headings. Natural prose, the way a tutor would actually talk.

### Part B — The course map

After the greeting, on a new line, show the full course outline as a compact visual list. Mark completed modules with `✓`, the current module with `→`, and upcoming modules with no marker. Use the module names from the course file. Format:

```
**<Course title>**
  ✓ 1. <Module 1 name>
  ✓ 2. <Module 2 name>
  → 3. <Current module name>
    4. <Module 4 name>
    5. <Module 5 name>
```

Keep it tight. No extra commentary after the map — the greeting already invited them to continue.

Then stop and wait for the learner to respond.

## Step 3 — Start the session clock

Run `date +%s` via Bash to capture the session start time (Unix seconds). Remember it silently.

Compute the **wrapup trigger time** = start + (session length in seconds − 5 min). For a 20-min session, that's start + 15 min.

You will check the clock periodically during the session. When `now >= wrapup trigger`, finish the current thought and run `/session-close` — do not start a new concept.

Do not show the clock or the math to the learner.

## Step 4 — Pre-session retrieval (≤1 min, only if a prior session exists)

Before introducing any new material, ask **one short retrieval question** tied to the most recent module. Purpose: activate prior knowledge and surface gaps before teaching.

- One question only. Conversational, not a quiz.
- If they nail it: one-line ack, move on.
- If shaky: 20–30 sec refresh, then move on. Do not grade. Do not belabor.
- If this is the very first session on a course (no prior progress), skip this step entirely.

Examples:
- "Before we jump into pricing — quick one: what does it mean for a business to break even?"
- "Before we move on: if fixed costs go up, what happens to the break-even point?"

## Step 5 — Continue as normal

Follow the teaching methodology in CLAUDE.md from there. Keep an eye on the clock.

---

## Example of a strong opening (for reference — do not copy verbatim)

> Hey Sofia — good to see you back.
>
> I've been thinking about what you said last time, about wanting to know whether a business is actually going to work. The break-even stuff we did gets you halfway there — you already spotted on your own that selling 10 shirts a day wasn't much of a return. That instinct is exactly what the next piece is about.
>
> Today we're heading into pricing — how much to charge, and why. Want to start there, or would you rather revisit anything from break-even first?
>
> **Business Fundamentals**
>   ✓ 1. What is a business?
>   ✓ 2. Revenue, costs, and profit
>   ✓ 3. Fixed vs variable costs
>   ✓ 4. Break-even analysis
>   → 5. Pricing strategies
>     6. Cash flow basics
>     7. Reading a simple P&L

Notice what the greeting does: it references a specific quote ("wanting to know whether a business is actually going to work"), it references a specific moment Sofia figured out on her own ("selling 10 shirts a day wasn't much of a return"), and it connects last session to this one through an idea, not a module number. The map then anchors her visually in the course.

That's the bar. If the progress notes don't give you enough to hit it, say less — don't manufacture detail.

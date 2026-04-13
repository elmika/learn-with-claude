Wrap up the session. Budget: **3–5 minutes total**. Keep each step tight — a stretched wrapup ruins a good session.

## When to trigger

- When `now >= wrapup trigger` computed at `/start` (session length − 5 min from start).
- Or when the current concept has reached a natural stopping point near the cutoff.
- Or when the learner signals they need to stop.

Finish the in-flight thought, then move into the wrapup. Do **not** introduce a new concept once the trigger has fired.

---

## Step 1 — Mini recap (≤30 sec)

Give a tight 2–3 bullet summary of what was covered this session. No headings, no fluff. Example:

> Today we covered:
> - Break-even = fixed costs ÷ (price − variable cost per unit)
> - Why the break-even point shifts when fixed costs or price change
> - Spotted on your own that 10 shirts/day wasn't enough return

Pull specifics from the actual session. Reference moments they figured things out — not just topics.

## Step 2 — Post-session retrieval (≤1–2 min)

Ask **one synthesis question** that pulls the learner to connect today's material in their own words. One question, not three.

- "In your own words, what's the core idea from today?"
- "If you had to explain break-even to a friend in one sentence, what would you say?"

Let them answer. Brief ack. Do not grade. If they struggle, offer one short reframe and move on.

## Step 3 — Socratic capture (≤30 sec)

Ask: *"What felt most important from this session?"*

- Let them answer in their own words — don't pre-fill, don't suggest.
- If they're stuck: *"What would you want to remember if you came back to this in two weeks?"*
- Save their answer verbatim to `learner/notes/YYYY-MM-DD-<topic-slug>.md` using the notes format in CLAUDE.md.
- If they say nothing worth saving, that's fine — don't force it.

## Step 4 — Update progress (silent, no learner interaction)

Update `learner/progress/<topic-slug>.md`:
- Move the current module to **Completed** if it's done
- Update **Current** with the module and where you stopped (one line)
- Update **Next** to the upcoming module
- Add one line to **Notes** if something about how they engage with the topic is worth remembering

## Step 5 — Closing line (≤10 sec)

One sentence that names what comes next session. Natural, warm, brief.

> "See you next time — we'll pick up with pricing strategies."

Then stop. No extra commentary, no summary of the summary.

---

## Pacing guardrails

- Total wrapup: **3–5 min**, aim for the lower end.
- If you're running over, cut the retrieval question, not the capture or progress update.
- The capture (learner's own words) is the single most valuable artifact — never skip it.
- Progress update must always happen, even if silent — it's what makes the next session feel continuous.

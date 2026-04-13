# Learn With Claude

A personal learning guide that lives in a folder. Markdown only — no code.

Open it in Claude Code, type `/start`, and an AI tutor teaches you whatever you want to learn, at your pace, remembering where you left off.

---

## What you need

- A [Claude Code](https://claude.ai/code) subscription
- This folder open in Claude Code

That's it. No setup. No installs. No configuration.

---

## How to start

1. Open this folder in Claude Code
2. Type `/start`
3. Follow the conversation

On your first session, Claude asks you five short questions, builds a course outline tailored to you, and starts teaching. Next time, `/start` picks up right where you stopped.

---

## What a session looks like

Each session runs on your time budget (you set this during onboarding — 15 min, 30 min, 1 hour+).

- **Warm-up.** A short recall question on the previous module — just enough to reactivate what you already know.
- **Teaching.** One concept at a time. You answer. Claude adapts.
- **Wrap-up.** A tight recap, one synthesis question, and your own words saved as notes. Progress updated silently.

The whole rhythm is defined in `CLAUDE.md` and the two commands under `.claude/commands/`. Nothing hidden.

---

## What can you learn?

Anything, but this works especially well for:

- Programming languages (Python, JavaScript, Java…)
- Tools and technologies (Docker, Git, SQL, APIs…)
- Concepts (system design, data structures, how the web works…)

If you're not sure what to learn, just say so. Claude will help you figure it out.

---

## What happens to your progress?

Everything is saved locally in the `learner/` folder — your profile, your course outline, the notes you take in your own words, and where you left off. It's yours. It's plain markdown. You can read it, edit it, version it, or throw it away.

---

## How it works under the hood

There is no backend. There is no app. Every rule the tutor follows is written in plain English in two places:

- `CLAUDE.md` — how the agent teaches, takes notes, tracks progress
- `.claude/commands/` — `/start` and `/session-close`

Read them. Change them. Make it yours.

---

## Who is this for?

Anyone. You don't need to be a developer. You don't need prior experience.
All you need is curiosity and a Claude Code subscription.

---

## License

MIT — see [LICENSE](LICENSE). Clone it, fork it, remix it. If you build something interesting on top of it, I'd love to hear about it.

# Course: Docker Reactivation

**Target learner:** Someone who has used Docker before but hasn't touched it in a while. Wants to get back up to speed fast — not learn from zero.
**Goal:** Confidently run, build, and manage containers in a real project context.
**Suggested session length:** 30–45 min

---

## Modules

### Module 1: The mental model (refreshed)
**Outcome:** Clearly explain what a container is and why it exists — without looking it up.
**Key concepts:** containers vs VMs, images vs containers, the Docker daemon, why isolation matters
**Teaching notes:** This learner has context — don't rebuild from scratch. Ask what they remember first. Fill the gaps, correct misconceptions. Use an analogy they'll recognize (shipping container, not a VM).

### Module 2: The core commands
**Outcome:** Run, stop, inspect, and clean up containers without hesitation.
**Key concepts:** `docker run`, `docker ps`, `docker stop`, `docker rm`, `docker images`, `docker pull`
**Teaching notes:** Don't list commands. Give a scenario ("you just pulled an image, now what?") and let them drive. Correct as needed.

### Module 3: The Dockerfile
**Outcome:** Write a Dockerfile for a simple application from scratch.
**Key concepts:** `FROM`, `WORKDIR`, `COPY`, `RUN`, `CMD`, layer caching, `.dockerignore`
**Teaching notes:** Start with a real example — a Python script or a Node app, based on learner background. Explain *why* each instruction exists, not just what it does. Layer caching is the one thing most people don't get — spend time on it.

### Module 4: docker-compose
**Outcome:** Write a `docker-compose.yml` that runs a multi-container app (e.g. app + database).
**Key concepts:** services, volumes, networks, `depends_on`, environment variables, `docker compose up/down`
**Teaching notes:** This is where it clicks for most people. Use a concrete stack: Python/Node API + Postgres. Don't abstract — build something real.

### Module 5: Containerize your own project
**Outcome:** Have a working Dockerfile (and optionally a compose file) for something the learner is actually building.
**Key concepts:** applying everything from modules 1–4 to a real codebase
**Teaching notes:** Ask them to describe their project. Help them write the Dockerfile together. This is the most valuable module — don't rush it. If they don't have a project, use a provided example from `courses/examples/`.

### Module 6: Debugging and inspecting
**Outcome:** Diagnose and fix the most common container issues without panic.
**Key concepts:** `docker logs`, `docker exec -it`, `docker inspect`, exit codes, common failure patterns (port conflicts, missing env vars, volume permission issues)
**Teaching notes:** Run through real failure scenarios. Ask them to read the error and guess what went wrong before explaining.

### Module 7: Day-to-day workflow
**Outcome:** Have a personal "Docker workflow" — the 10 commands they'll actually use every day.
**Key concepts:** pruning (`docker system prune`), tagging and pushing to a registry, the commands that matter vs. the ones that don't
**Teaching notes:** Keep this short. The goal is confidence, not completeness. End by asking: "What's still unclear?" and address whatever comes up.

---

## Adaptation notes

- **Complete beginner (ignore "reactivation" label):** Slow down modules 1–2 significantly. Add a "what is a terminal?" pre-step if needed. Skip module 7 until the rest is solid.
- **Strong background:** Compress modules 1–2 into a 5-minute check. Focus time on modules 4–5.
- **No personal project for module 5:** Use a provided starter app. Ask Claude to generate a simple Python Flask API + Postgres setup as the target.

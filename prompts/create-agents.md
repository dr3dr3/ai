# AI Assistant: agents.md Creation Guide

Guide users through creating effective `agents.md` files using a consultative approach. Ask targeted questions, gather information progressively, then synthesize into a well-structured agent definition.

## Discovery Process

### 1. Purpose & Persona

- What specific task? (tests, docs, APIs, security)
- Agent name? (@test-agent, @docs-agent)
- Professional persona? (QA engineer, technical writer)

**Rule**: Specialists only, not generalists.

### 2. Project Context

- Tech stack with versions (e.g., "React 18, TypeScript, Vite")
- Key directories (`src/`, `tests/`, `docs/`)
- Critical dependencies

### 3. Commands & Tools

- Specific commands with flags (`npm test`, `pytest -v --coverage`)
- Prioritize frequently used commands

**Rule**: Put commands early, include complete syntax.

### 4. Code Style

- Key conventions (naming, formatting)
- Provide good vs bad examples

**Rule**: Show, don't tell.

### 5. Boundaries (Critical)

- ✅ **Always do**: Required actions
- ⚠️ **Ask first**: Needs approval
- 🚫 **Never do**: Forbidden actions

**Rule**: "Never commit secrets" is most common constraint.

### 6. Documentation (if applicable)

- Format, audience, style

## Output Format

```markdown
---
name: agent-name
description: One-sentence description
---

You are an expert [persona] for this project.

## Your role
- [Key responsibilities and primary task]

## Project knowledge
- **Tech Stack:** [Technologies with versions]
- **File Structure:** `dir/` – [description]

## Commands
`command --flags` – [what it does]

## Code style
```language
// ✅ Good - [why]
[example]

// ❌ Bad - [why]
[example]
```

## Boundaries

- ✅ **Always do:** [items]
- ⚠️ **Ask first:** [items]
- 🚫 **Never do:** [items]

## Quality Checklist

- [ ] Specific persona (not generic)
- [ ] Complete commands with flags
- [ ] Tech stack with versions
- [ ] Code examples included
- [ ] Three-tier boundaries
- [ ] Specific file paths

## Common Agent Types

- **@docs-agent**: Technical writing
- **@test-agent**: Unit/integration tests
- **@lint-agent**: Code style fixes
- **@api-agent**: API endpoints
- **@security-agent**: Security analysis
- **@review-agent**: Code review

## Six Core Areas

1. Commands (with flags)
2. Testing (validation)
3. Project structure (directories)
4. Code style (with examples)
5. Git workflow (commits/branches)
6. Boundaries (always/ask/never)

## Starting Prompt

"I'll help you create an agents.md file. Let's start: What specific task should this agent handle? (tests, docs, APIs, security, etc.)"

## Usage

1. Share this file with your AI assistant
2. Ask: "Help me create an agents.md using agent-creator.md guidelines"
3. Answer the questions
4. Review generated file
5. Save to `.github/agents/[name].md`

---

Based on [analysis](https://github.blog/ai-and-ml/github-copilot/how-to-write-a-great-agents-md-lessons-from-over-2500-repositories/) of 2,500+ agents.md files from GitHub repositories

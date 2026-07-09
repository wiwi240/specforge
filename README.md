# specforge

## Context

This project was created as part of Project 01 in the vibecoding course. The goal is to define a first AI-assisted developer tool before moving on to mockups and code.

## Selected Idea

The tool is called **SpecForge**.

SpecForge helps a developer turn a vague product request, GitHub issue, or ticket into:

- a clear technical plan,
- broken-down tasks,
- key risk points,
- a first draft of tests.

In practical terms, the tool is meant to support the thinking work that happens before implementation, not to replace implementation itself.

## Why This Idea

I selected this idea for three reasons:

1. It solves a real problem: a lot of time is lost clarifying a request before coding even starts.
2. The user pain is frequent, especially for junior developers and small teams without strong product structure.
3. The MVP is realistic: it can start with text analysis and structured output without requiring a complex agent or full IDE integration.

## Problem Being Solved

When a request is poorly defined, developers make bad decisions:

- misunderstood scope,
- missed edge cases,
- insufficient tests,
- technical debt introduced too early.

SpecForge aims to reduce that risk from the start of the work.

## Who This Tool Is For

The first version is mainly designed for:

- junior developers who need help framing a task before coding,
- freelancers who receive vague client briefs,
- small product teams that lack a strong specification process.

It is not primarily aimed at large enterprises with mature product operations, because those teams usually already have formal planning workflows and more specialized internal tooling.

## Planned MVP

Version 1:

- paste an issue, ticket, or brief,
- get a summary of the request,
- get a proposed implementation plan,
- get a list of blocking questions,
- get an initial list of tests to prepare.

## Example Workflow

A typical workflow for the MVP would look like this:

1. A user pastes a ticket, issue, or short product brief into SpecForge.
2. The tool identifies the core goal, missing details, and technical uncertainty.
3. The tool returns a structured output with a summary, a task breakdown, open questions, risks, and test ideas.
4. The user reviews that output before writing code or replying to a client or product manager.

## Non-Goals for Version 1

To keep the MVP realistic, SpecForge will not try to do everything at once. Version 1 does not aim to:

- write production-ready code,
- replace a project management tool,
- automatically estimate delivery dates,
- fully understand a complete codebase,
- make decisions without human review.

These are tempting directions, but they would make the scope too large and the output less reliable for a first version.

## Main Value Proposition

The core value of SpecForge is simple:

- reduce ambiguity before coding starts,
- help users ask better questions,
- improve task breakdown quality,
- encourage better testing thinking earlier in the process.

## Project Structure

- `README.md`: project presentation and context
- `docs/IDEAS.md`: list of ideas explored during brainstorming
- `docs/PERSONAS.md`: target user profiles
- `docs/USER_STORIES.md`: MVP user stories
- `backend/commands.md`: Rails API setup commands for the backend MVP
- `backend/routes.rb`: example Rails routes for the main resource
- `backend/README.md`: backend architecture notes
- `front/index.html`: homepage structure
- `front/style.css`: homepage styles
- `front/script.js`: homepage interaction
- `prompts/prompt_guide.md`: short guide for writing reusable prompts
- `prompts/html_prompt.txt`: prompt for generating a landing page HTML skeleton
- `prompts/rails_prompt.txt`: prompt for generating Rails API setup commands
- `prompts/story_prompt.txt`: prompt for generating additional user stories

## Prompt Library

The `prompts/` folder contains reusable prompts prepared for the next steps of the project.

Its purpose is to:

- speed up code and content generation,
- keep prompting more consistent,
- reduce low-quality or overly generic outputs,
- build a reusable base for future Vibecoding modules.

Each file focuses on one task:

- `prompt_guide.md` explains the structure of a strong prompt and summarizes zero-shot, few-shot, and chain-of-thought prompting.
- `html_prompt.txt` is meant to generate the first HTML structure for a landing page.
- `rails_prompt.txt` is meant to generate Rails commands for a backend MVP.
- `story_prompt.txt` is meant to generate additional user stories in a consistent format.

To use them, copy the content of a prompt file into your LLM of choice, review the output, and refine the prompt if the result is too generic or not aligned with the project constraints.

## Clone the Project

```bash
git clone https://github.com/wiwi240/specforge.git
cd specforge
```

## Frontend Page

The repository now includes a first static homepage in the `front/` folder.

Open it locally with:

```bash
open front/index.html
```

If `open` is not available on your system, open the file directly in your browser.

Files:

- `front/index.html`: semantic HTML structure for the homepage
- `front/style.css`: visual styling for layout, colors, spacing, and typography
- `front/script.js`: JavaScript behavior for the "En savoir plus" button

## Backend Preparation

The repository also includes a `backend/` folder used to prepare the future Rails API structure.

Files:

- `backend/commands.md`: Rails commands to create the API application and main resource
- `backend/routes.rb`: example route declaration for the main resource
- `backend/README.md`: short explanation of Rails, MVC, and the backend organization

## Current Status

This repository now contains the product definition phase, a first static frontend page, and backend preparation files for a future Rails API.

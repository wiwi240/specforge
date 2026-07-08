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

## Planned MVP

Version 1:

- paste an issue, ticket, or brief,
- get a summary of the request,
- get a proposed implementation plan,
- get a list of blocking questions,
- get an initial list of tests to prepare.

## Project Structure

- `README.md`: project presentation and context
- `docs/IDEAS.md`: list of ideas explored during brainstorming
- `docs/PERSONAS.md`: target user profiles
- `docs/USER_STORIES.md`: MVP user stories

## Clone the Project

```bash
git clone https://github.com/wiwi240/specforge.git
cd specforge
```

## Current Status

This repository currently contains only the product definition phase. Mockups and code will be added in the next steps.

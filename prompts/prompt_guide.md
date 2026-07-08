# Prompt Guide

## What Makes a Good Prompt

A good prompt is clear, scoped, and explicit about the expected output. In practice, it usually contains four parts:

1. **Role**
   Tell the model who it should act as.
   Example: "You are a senior frontend developer."

2. **Context**
   Give the model the minimum background needed to produce a relevant answer.
   Example: project name, product goal, target users, or current technical constraints.

3. **Instruction**
   State exactly what you want the model to do.
   The instruction should be concrete and narrow enough to avoid vague output.

4. **Output Format**
   Define how the answer should be returned.
   Example: "Return HTML only", "Use bullet points", or "Write three user stories."

## Good Prompt Principles

- Be specific about the task.
- Give enough context, but not unnecessary noise.
- Ask for one clear result at a time.
- Define the expected format.
- Mention constraints when they matter.

## Prompting Techniques

### Zero-shot

Zero-shot means asking the model to do a task directly without giving examples.

Use it when:

- the task is simple,
- the format is easy to define,
- you want a fast first draft.

Example:
"Write three user stories for an AI developer tool."

### Few-shot

Few-shot means giving the model a small number of examples before asking it to generate a new result.

Use it when:

- the format must be very consistent,
- the wording matters,
- the model needs guidance through examples.

Example:
Give two user stories in the expected style, then ask for three more in the same format.

### Chain-of-thought

Chain-of-thought is a prompting style that encourages the model to reason through a problem step by step before answering.

Use it when:

- the task involves analysis,
- the answer depends on multiple decisions,
- you want more structured reasoning.

It can improve quality, but it can also make outputs too long if the prompt is not controlled. For reusable prompts, it is often better to ask for a structured result than to ask for long visible reasoning.

## Practical Advice for This Project

For SpecForge, the most useful prompts are prompts that:

- keep the output structured,
- reduce vague answers,
- focus on real developer workflows,
- avoid asking the model to do too much at once.

The goal is not to create "smart-sounding" prompts. The goal is to create prompts that are reusable and produce useful outputs consistently.

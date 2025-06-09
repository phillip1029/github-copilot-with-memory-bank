# GitHub Copilot Memory Bank Instructions

This repository includes Memory Bank methodology instructions optimized for GitHub Copilot.

## Quick Access Instructions

**For GitHub Copilot Context/Instructions:**

1. **Analysis & Planning:**
   - [VAN Analysis](.copilot/instructions/01-van-analysis.md) - Start here for any new task
   - [Planning & Architecture](.copilot/instructions/02-planning-architecture.md) - For Level 2+ complexity
   - [Creative Design](.copilot/instructions/03-creative-design.md) - For Level 3-4 complexity

2. **Implementation & Review:**
   - [Implementation](.copilot/instructions/04-implementation.md) - Structured coding approach
   - [Quality Assurance](.copilot/instructions/07-quality-assurance.md) - Validation at any phase
   - [Reflection & Review](.copilot/instructions/05-reflection-review.md) - Post-implementation analysis

3. **Documentation:**
   - [Archive & Documentation](.copilot/instructions/06-archive-documentation.md) - Comprehensive documentation

## How to Use with GitHub Copilot

### Method 1: Add as Context (Recommended)
1. Right-click on any instruction file above
2. Select "Add as Context" or "Use as Instructions"
3. GitHub Copilot will use that methodology in your chat

### Method 2: Copy-Paste Approach
1. Open the instruction file you need
2. Copy the entire content
3. Paste into GitHub Copilot Chat with `@workspace`

### Method 3: Reference Active Context
- Always keep [`contexts/active_context.md`](contexts/active_context.md) updated
- Reference it in GitHub Copilot for current project state
- Use `@workspace` to include full project context

## Workflow Decision Tree

```
New Task/Feature?
│
├─ Start with: VAN Analysis (01-van-analysis.md)
│
├─ Complexity Level 1? → Implementation (04-implementation.md)
│
├─ Complexity Level 2? → Planning (02-planning-architecture.md) → Implementation
│
└─ Complexity Level 3-4? → Planning → Creative Design (03-creative-design.md) → Implementation

After Implementation:
│
├─ Always: Reflection & Review (05-reflection-review.md)
│
├─ Level 3-4: Archive & Documentation (06-archive-documentation.md)
│
└─ Any Phase: Quality Assurance (07-quality-assurance.md)
```

## Project Context Files

- **Active Context:** [`contexts/active_context.md`](contexts/active_context.md) - Current development focus
- **Documentation:** [`docs/memory_bank/`](docs/memory_bank/) - Project documentation storage
- **Templates:** [`templates/`](templates/) - Reusable templates
- **Examples:** [`examples/`](examples/) - Usage examples

---

**Ready to start?** Right-click [VAN Analysis](.copilot/instructions/01-van-analysis.md) and select "Add as Context" to begin your Memory Bank workflow!

# VAN Mode - Validation & Analysis

## Purpose
Analyze the current codebase/project to understand structure, complexity, and determine the appropriate development approach.

## GitHub Copilot Prompt Template

```markdown
@workspace VAN MODE ANALYSIS

Please perform a comprehensive analysis of this project/codebase and provide:

## 1. PROJECT OVERVIEW
- Project type and primary technology stack
- Current state and development phase
- Key components and their purposes
- Main dependencies and external integrations

## 2. COMPLEXITY ASSESSMENT
Based on the following criteria, determine the complexity level:

**Level 1 (Simple)**: Basic functionality, minimal dependencies, straightforward implementation
**Level 2 (Moderate)**: Multiple components, some integration complexity, moderate planning needed
**Level 3 (Complex)**: Advanced features, multiple integrations, design decisions required
**Level 4 (Enterprise)**: Large-scale architecture, multiple systems, extensive planning required

Current Complexity Level: [1/2/3/4]

## 3. CODEBASE STRUCTURE ANALYSIS
- Directory structure and organization
- Code quality and patterns observed
- Areas needing attention or refactoring
- Technical debt identified

## 4. DEVELOPMENT REQUIREMENTS
- Missing functionality or components
- Required integrations or external dependencies
- Performance considerations
- Security considerations

## 5. RECOMMENDED WORKFLOW
Based on complexity level, recommend:
- Next development phases to follow
- Key areas of focus
- Potential challenges or risks
- Estimated effort and timeline

## 6. ACTIVE CONTEXT SETUP
Create initial context for the project including:
- Current focus area
- Immediate next steps
- Key decisions needed
- Success criteria

Please structure your analysis using the above template and save key findings to the project's context files.
```

## Usage Instructions

1. Copy the prompt template above
2. Paste it into GitHub Copilot Chat
3. Let Copilot analyze your workspace
4. Review the analysis and determine next steps
5. Use the output to guide your development workflow

## Expected Outputs

- **Project complexity level** (1-4)
- **Structured analysis** of current state
- **Recommended workflow** for development
- **Initial context** for subsequent phases
- **Key insights** about the codebase

## Next Steps

Based on the complexity level determined:
- **Level 1**: Proceed to IMPLEMENT mode
- **Level 2**: Move to PLAN mode
- **Level 3-4**: Move to PLAN mode, then CREATIVE mode

## Tips for Better Results

- Ensure your workspace includes all relevant files
- Use `@workspace` to give Copilot full context
- Be specific about areas you want analyzed
- Ask follow-up questions for clarification
- Save important findings to context files 
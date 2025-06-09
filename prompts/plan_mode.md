# PLAN Mode - Planning & Architecture

## Purpose
Create detailed implementation plans, break down tasks, and establish clear development roadmaps based on VAN analysis.

## GitHub Copilot Prompt Template

```markdown
@workspace PLAN MODE - IMPLEMENTATION PLANNING

Based on the VAN analysis, create a comprehensive implementation plan:

## 1. TASK BREAKDOWN
Break down the development work into manageable tasks:

### High-Level Features
- [ ] Feature 1: [Description]
- [ ] Feature 2: [Description]
- [ ] Feature 3: [Description]

### Detailed Task List
For each feature, provide:
- **Prerequisites**: What needs to be done first
- **Implementation steps**: Specific coding tasks
- **Testing requirements**: How to validate completion
- **Dependencies**: External libraries or services needed

## 2. ARCHITECTURE DECISIONS
Document key architectural choices:

### Technology Stack
- **Frontend**: [Framework/Language]
- **Backend**: [Framework/Language]
- **Database**: [Type and specific technology]
- **Infrastructure**: [Deployment and hosting]

### Design Patterns
- **Overall architecture**: (MVC, Microservices, etc.)
- **Code organization**: Directory structure and modules
- **Data flow**: How information moves through the system
- **API design**: Interface specifications

## 3. DEVELOPMENT SEQUENCE
Prioritize tasks in logical order:

### Phase 1: Foundation
1. [Core infrastructure tasks]
2. [Basic data models]
3. [Essential utilities]

### Phase 2: Core Features
1. [Primary functionality]
2. [User interactions]
3. [Data processing]

### Phase 3: Integration & Polish
1. [External integrations]
2. [UI/UX improvements]
3. [Performance optimization]

## 4. DEPENDENCY MAPPING
Identify and document dependencies:

### External Dependencies
- **Libraries**: List required packages/modules
- **Services**: APIs, databases, third-party services
- **Tools**: Development and deployment tools

### Internal Dependencies
- **Component relationships**: How modules interact
- **Data dependencies**: Shared data structures
- **Sequence dependencies**: What must be built first

## 5. RISK ASSESSMENT
Identify potential challenges:

### Technical Risks
- **Complexity hotspots**: Areas likely to be difficult
- **Integration challenges**: Potential compatibility issues
- **Performance concerns**: Scalability and speed issues

### Mitigation Strategies
- **Alternative approaches**: Backup plans for risky decisions
- **Prototype needs**: What should be tested early
- **Learning requirements**: Skills or knowledge gaps

## 6. SUCCESS CRITERIA
Define clear completion metrics:

### Definition of Done
- **Functional requirements**: What the system must do
- **Quality standards**: Performance, security, maintainability
- **Testing coverage**: Required test types and coverage

### Milestones
- **Phase 1 complete**: [Specific deliverables]
- **Phase 2 complete**: [Specific deliverables]
- **Final delivery**: [Complete system requirements]

Please create this implementation plan and save it to the project documentation.
```

## Usage Instructions

1. **Use after VAN analysis**: Ensure you have completed VAN mode first
2. **Copy the template**: Paste into GitHub Copilot Chat
3. **Customize for your project**: Let Copilot adapt the plan to your specific needs
4. **Review and refine**: Iterate on the plan as needed
5. **Save the output**: Document the plan for reference during implementation

## Expected Outputs

- **Detailed task breakdown** with clear deliverables
- **Architecture decisions** with rationale
- **Development sequence** with logical ordering
- **Dependency mapping** showing relationships
- **Risk assessment** with mitigation strategies
- **Success criteria** for measuring completion

## Next Steps

After completing PLAN mode:
- **Level 1-2 projects**: Proceed to IMPLEMENT mode
- **Level 3-4 projects**: Move to CREATIVE mode for design exploration
- **All projects**: Begin implementation following the plan

## Tips for Better Planning

- **Be specific**: Vague tasks lead to unclear implementation
- **Consider dependencies**: Plan tasks in logical order
- **Include testing**: Plan validation at each step
- **Stay flexible**: Plans may need adjustment during implementation
- **Document decisions**: Record why choices were made 
# Project Complexity Level Guide

*This guide helps determine the appropriate complexity level and workflow for your project.*

## Complexity Level Assessment

### Level 1: Simple Tasks
**Characteristics:**
- Single feature or small enhancement
- Minimal dependencies or integrations
- Straightforward implementation
- Low risk of technical challenges
- Can be completed in 1-3 days

**Examples:**
- Bug fixes
- Simple UI updates
- Basic CRUD operations
- Configuration changes
- Minor feature additions

**Recommended Workflow:**
```
VAN → IMPLEMENT → REFLECT
```

**Typical Duration:** 1-3 days

---

### Level 2: Moderate Complexity
**Characteristics:**
- Multiple related features
- Some integration requirements
- Moderate planning needed
- Some architectural decisions required
- Can be completed in 1-2 weeks

**Examples:**
- New API endpoints with database changes
- Integration with existing third-party service
- Multi-component feature development
- Refactoring existing functionality
- Performance optimization projects

**Recommended Workflow:**
```
VAN → PLAN → IMPLEMENT → REFLECT
```

**Typical Duration:** 1-2 weeks

---

### Level 3: Complex Projects
**Characteristics:**
- Significant new functionality
- Multiple integration points
- Design decisions impact architecture
- User experience considerations important
- Can be completed in 2-6 weeks

**Examples:**
- New major feature with UI/UX design
- Integration with multiple external services
- Significant database schema changes
- New microservice development
- Complex business logic implementation

**Recommended Workflow:**
```
VAN → PLAN → CREATIVE → IMPLEMENT → REFLECT → ARCHIVE
```

**Typical Duration:** 2-6 weeks

---

### Level 4: Enterprise-Level
**Characteristics:**
- Large-scale system changes
- Multiple teams involved
- Significant architectural impact
- High complexity and risk
- Extended development timeline

**Examples:**
- Complete system redesign
- Major platform migration
- Multi-service architecture implementation
- Large-scale data migration
- Enterprise integration projects

**Recommended Workflow:**
```
VAN → PLAN → CREATIVE → IMPLEMENT → REFLECT → ARCHIVE
(with multiple iterations through cycles)
```

**Typical Duration:** 1-6 months or more

## Assessment Questions

Use these questions to determine your project's complexity level:

### Technical Complexity
1. **How many components/services are involved?**
   - 1-2: Level 1-2
   - 3-5: Level 2-3
   - 5+: Level 3-4

2. **How many external integrations are required?**
   - None: Level 1
   - 1-2: Level 2
   - 3+: Level 3-4

3. **Are there significant architectural changes?**
   - No: Level 1-2
   - Minor: Level 2-3
   - Major: Level 3-4

### Business Impact
1. **How many users/systems are affected?**
   - Few: Level 1-2
   - Moderate: Level 2-3
   - Many: Level 3-4

2. **What's the risk if something goes wrong?**
   - Low: Level 1-2
   - Medium: Level 2-3
   - High: Level 3-4

### Time and Resources
1. **How much development time is estimated?**
   - Days: Level 1-2
   - Weeks: Level 2-3
   - Months: Level 3-4

2. **How many people are involved?**
   - 1-2: Level 1-2
   - 3-5: Level 2-3
   - 5+: Level 3-4

## Workflow Adaptation Guidelines

### When to Use Each Phase

#### VAN (Always Required)
- **Level 1**: Quick analysis and validation
- **Level 2**: Thorough analysis with complexity assessment
- **Level 3-4**: Comprehensive analysis with stakeholder alignment

#### PLAN (Level 2+)
- **Level 2**: Basic implementation plan with task breakdown
- **Level 3-4**: Detailed architecture and comprehensive planning

#### CREATIVE (Level 3-4)
- **Level 3**: Design exploration for complex components
- **Level 4**: Comprehensive design thinking and multiple alternatives

#### IMPLEMENT (Always Required)
- **All Levels**: Systematic implementation following established patterns

#### REFLECT (Always Required)
- **Level 1**: Quick review and lesson capture
- **Level 2-4**: Comprehensive review with improvement planning

#### ARCHIVE (Level 3-4)
- **Level 3**: Documentation for complex systems
- **Level 4**: Comprehensive knowledge preservation

## Special Considerations

### Cross-Team Projects
- Automatically consider Level 3+ regardless of technical complexity
- Add additional communication and coordination overhead
- Include stakeholder alignment in VAN phase

### Legacy System Integration
- Add one complexity level due to unknown factors
- Include additional discovery in VAN phase
- Plan for unexpected challenges

### New Technology Adoption
- Add one complexity level for learning curve
- Include prototyping in CREATIVE phase
- Plan for additional validation in QA

### Compliance Requirements
- Add one complexity level for regulatory overhead
- Include compliance validation in QA
- Plan for additional documentation in ARCHIVE

## Quick Decision Matrix

| Criteria | Level 1 | Level 2 | Level 3 | Level 4 |
|----------|---------|---------|---------|---------|
| **Duration** | Days | 1-2 weeks | 2-6 weeks | Months |
| **Team Size** | 1-2 people | 2-3 people | 3-5 people | 5+ people |
| **Components** | 1-2 | 2-3 | 3-5 | 5+ |
| **Integrations** | None | 1-2 | 2-3 | 3+ |
| **Risk Level** | Low | Medium | High | Very High |
| **Design Needed** | Minimal | Some | Significant | Extensive |

## Usage Tips

1. **When in doubt, choose the higher level** - it's better to over-plan than under-plan
2. **Consider the full project scope** - including deployment, testing, and documentation
3. **Factor in team experience** - less experienced teams may need higher complexity workflows
4. **Account for dependencies** - external dependencies can increase complexity significantly
5. **Review and adjust** - complexity can change as you learn more about the project

---

*Use this guide to select the appropriate workflow for your project and ensure proper planning and execution.* 
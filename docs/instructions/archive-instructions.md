# ARCHIVE Mode - Documentation & Knowledge Preservation

## Purpose
Create comprehensive documentation, organize knowledge artifacts, and preserve insights for long-term reference and knowledge transfer.

## GitHub Copilot Prompt Template

```markdown
@workspace ARCHIVE MODE - COMPREHENSIVE DOCUMENTATION

Create comprehensive documentation and knowledge artifacts for: [PROJECT/FEATURE/MILESTONE]

## 1. TECHNICAL DOCUMENTATION
Complete technical reference materials:

### System Architecture
- **High-level overview**: [System components and their relationships]
- **Technology stack**: [Detailed breakdown of all technologies used]
- **Data flow diagrams**: [How information moves through the system]
- **Integration architecture**: [External system connections and APIs]
- **Security architecture**: [Authentication, authorization, and data protection]

### API Documentation
- **Endpoint specifications**: [Complete API reference with examples]
- **Request/response formats**: [Data structures and validation rules]
- **Authentication methods**: [How to authenticate and authorize requests]
- **Error handling**: [Error codes and troubleshooting guidance]
- **Rate limiting**: [Usage limits and throttling information]

### Database Documentation
- **Schema design**: [Table structures, relationships, and constraints]
- **Data dictionary**: [Field definitions and business rules]
- **Migration history**: [Database change log and versioning]
- **Backup and recovery**: [Data protection and disaster recovery procedures]
- **Performance optimization**: [Indexing strategies and query optimization]

## 2. USER DOCUMENTATION
End-user and operator guidance:

### User Guide
- **Getting started**: [Initial setup and first steps]
- **Feature walkthrough**: [Detailed explanation of all functionality]
- **Common workflows**: [Step-by-step guides for typical tasks]
- **Troubleshooting**: [Common issues and their solutions]
- **FAQ**: [Frequently asked questions and answers]

### Administration Guide
- **Installation procedures**: [Complete setup instructions]
- **Configuration options**: [All settings and their effects]
- **Monitoring and maintenance**: [Health checks and routine procedures]
- **Backup and restore**: [Data protection procedures]
- **Security hardening**: [Best practices for secure deployment]

### Developer Guide
- **Development setup**: [Environment configuration for contributors]
- **Code organization**: [Project structure and conventions]
- **Contribution guidelines**: [How to contribute new features or fixes]
- **Testing procedures**: [How to run and create tests]
- **Deployment process**: [Steps for releasing changes]

## 3. DECISION RECORDS
Preserve important decisions and their context:

### Architecture Decision Records (ADRs)
For each major technical decision:

**ADR-001: [Decision Title]**
- **Status**: [Proposed/Accepted/Superseded]
- **Context**: [What situation led to this decision]
- **Decision**: [What was decided]
- **Consequences**: [Expected positive and negative impacts]
- **Alternatives**: [Other options that were considered]

### Design Decision History
- **UI/UX decisions**: [Interface design choices and rationale]
- **Data model decisions**: [Database design choices and evolution]
- **Integration decisions**: [Third-party service choices and reasoning]
- **Performance decisions**: [Optimization choices and trade-offs]

## 4. KNOWLEDGE ARTIFACTS
Preserve learning and institutional knowledge:

### Lessons Learned Compendium
- **Technical insights**: [Key technical discoveries and breakthroughs]
- **Process improvements**: [Workflow optimizations and best practices]
- **Problem-solving patterns**: [Effective approaches to common challenges]
- **Failure analysis**: [What didn't work and why]

### Best Practices Guide
- **Code quality standards**: [Coding conventions and quality guidelines]
- **Testing strategies**: [Effective testing approaches and patterns]
- **Security practices**: [Security guidelines and threat mitigation]
- **Performance optimization**: [Proven performance improvement techniques]

### Reference Materials
- **Useful resources**: [External documentation, tutorials, and guides]
- **Tool configurations**: [Setup files and configuration templates]
- **Code snippets**: [Reusable code patterns and examples]
- **Checklists**: [Quality assurance and deployment checklists]

## 5. PROJECT ARTIFACTS
Organize all project-related materials:

### Development Timeline
- **Project milestones**: [Major achievements and deliverables]
- **Feature evolution**: [How features developed over time]
- **Technical debt history**: [Debt accumulation and repayment]
- **Team changes**: [Personnel changes and their impact]

### Metrics and Analytics
- **Performance metrics**: [System performance over time]
- **Usage statistics**: [How the system is being used]
- **Quality metrics**: [Code quality and test coverage trends]
- **Development velocity**: [Team productivity and delivery metrics]

### Asset Inventory
- **Code repositories**: [All related code and version control]
- **Documentation files**: [All written documentation and diagrams]
- **Configuration files**: [Environment and deployment configurations]
- **Test artifacts**: [Test data, scripts, and automation]

## 6. KNOWLEDGE TRANSFER
Facilitate future development and maintenance:

### Onboarding Documentation
- **New developer guide**: [How to get up to speed quickly]
- **System overview**: [High-level understanding for newcomers]
- **Key concepts**: [Important domain knowledge and terminology]
- **Common tasks**: [Frequent development and maintenance activities]

### Maintenance Playbooks
- **Routine maintenance**: [Regular tasks and their schedules]
- **Incident response**: [How to handle emergencies and outages]
- **Troubleshooting guides**: [Systematic problem-solving approaches]
- **Escalation procedures**: [When and how to escalate issues]

### Future Development Guidance
- **Roadmap suggestions**: [Recommended future enhancements]
- **Extension points**: [How to add new functionality]
- **Refactoring opportunities**: [Areas for future improvement]
- **Technology upgrades**: [Planned technology stack evolution]

Please create comprehensive documentation following this framework and organize it for easy access and maintenance.
```

## Usage Instructions

1. **Use for complex projects**: ARCHIVE mode is typically for Level 3-4 complexity projects
2. **Compile all artifacts**: Gather documentation from all previous phases
3. **Create comprehensive guides**: Ensure documentation covers all audiences
4. **Organize systematically**: Structure information for easy discovery
5. **Plan for maintenance**: Ensure documentation can be kept current

## When to Use ARCHIVE Mode

- **End of major projects**: When completing significant development efforts
- **Before team transitions**: When team members are changing roles
- **Product releases**: When delivering software to users or other teams
- **Knowledge preservation**: When institutional knowledge needs to be captured
- **Compliance requirements**: When documentation is required for audits or regulations

## Documentation Types

### Technical Documentation
- System architecture and design
- API and interface specifications
- Database schemas and data models
- Configuration and deployment guides
- Security and compliance documentation

### User Documentation
- User manuals and guides
- Administrator documentation
- Developer onboarding materials
- Troubleshooting and support guides
- Training materials and tutorials

### Process Documentation
- Development workflows and procedures
- Quality assurance processes
- Release and deployment procedures
- Incident response plans
- Change management processes

## Expected Outputs

- **Complete technical reference** for system understanding
- **User guides** for all system stakeholders
- **Decision records** preserving important choices
- **Knowledge artifacts** capturing lessons learned
- **Organized asset inventory** for easy access
- **Knowledge transfer materials** for future teams

## Organization Strategy

### Directory Structure
```
docs/
├── technical/          # Technical documentation
├── user/              # User-facing documentation
├── decisions/         # Architecture and design decisions
├── knowledge/         # Lessons learned and best practices
├── processes/         # Workflows and procedures
└── assets/           # Diagrams, images, and other media
```

### Documentation Standards
- **Consistent formatting**: Use standard templates and styles
- **Clear navigation**: Organize for easy discovery
- **Regular updates**: Plan for ongoing maintenance
- **Version control**: Track changes and evolution
- **Accessibility**: Ensure documentation is accessible to all users

## Next Steps

After ARCHIVE mode:
- **Distribute documentation** to relevant stakeholders
- **Set up maintenance schedule** for keeping docs current
- **Create feedback mechanisms** for documentation improvement
- **Begin new development cycle** with VAN mode for next features
- **Conduct post-project review** with team and stakeholders

## Tips for Effective Archiving

- **Think about your audience**: Write for different skill levels and roles
- **Include context**: Explain not just what, but why
- **Use visual aids**: Diagrams and screenshots enhance understanding
- **Keep it current**: Plan for ongoing documentation maintenance
- **Make it searchable**: Organize and tag for easy discovery
- **Test documentation**: Have others follow your guides to verify clarity 
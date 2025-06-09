# IMPLEMENT Mode - Code Implementation & Building

## Purpose
Systematically implement planned features and components following the established plan and design decisions.

## GitHub Copilot Prompt Template

```markdown
@workspace IMPLEMENT MODE - CODE IMPLEMENTATION

Implement the following component/feature based on our planning and design: [SPECIFIC FEATURE/COMPONENT]

## 1. IMPLEMENTATION FOCUS
Current implementation target:

### Component Overview
- **Feature name**: [What we're building]
- **Core functionality**: [Primary purpose and behavior]
- **Integration points**: [How it connects to existing code]
- **Success criteria**: [How we know it's complete]

### Prerequisites Check
- [ ] Dependencies installed
- [ ] Required files/modules available
- [ ] Database/external services configured
- [ ] Development environment ready

## 2. CODE IMPLEMENTATION
Generate production-ready code:

### File Structure
Create/modify these files:
```
project/
├── [main-component-file]
├── [supporting-files]
├── [test-files]
└── [configuration-files]
```

### Core Implementation
**Primary Component**: [Main functionality code]
- Include all necessary imports
- Follow established project patterns
- Add appropriate error handling
- Include logging where needed
- Add comprehensive comments

**Supporting Functions**: [Helper functions and utilities]
- Reusable utility functions
- Validation logic
- Data transformation functions
- Configuration handlers

**Integration Code**: [Connection to existing systems]
- API endpoints or database connections
- Service integrations
- Event handlers
- State management

## 3. CODE QUALITY ASSURANCE
Ensure high-quality implementation:

### Code Standards
- **Naming conventions**: Follow project standards
- **Code organization**: Logical structure and separation
- **Documentation**: Inline comments and docstrings
- **Error handling**: Graceful failure management
- **Security considerations**: Input validation and secure practices

### Performance Optimization
- **Efficiency**: Optimize for speed and memory usage
- **Scalability**: Design for growth and load
- **Caching**: Implement appropriate caching strategies
- **Database optimization**: Efficient queries and indexing

## 4. TESTING IMPLEMENTATION
Create comprehensive tests:

### Unit Tests
- **Function testing**: Test individual functions
- **Edge cases**: Handle boundary conditions
- **Error scenarios**: Test failure modes
- **Mocking**: Mock external dependencies

### Integration Tests
- **Component interaction**: Test how parts work together
- **API testing**: Validate endpoints and responses
- **Database testing**: Verify data operations
- **End-to-end flows**: Test complete user scenarios

### Test Code Example
```language
// Example test structure
describe('[Component Name]', () => {
  test('should [expected behavior]', () => {
    // Test implementation
  });
  
  test('should handle [error case]', () => {
    // Error handling test
  });
});
```

## 5. DOCUMENTATION UPDATES
Keep documentation current:

### Code Documentation
- **README updates**: Installation and usage instructions
- **API documentation**: Endpoint specifications
- **Configuration docs**: Setup and deployment guides
- **Troubleshooting**: Common issues and solutions

### Technical Documentation
- **Architecture updates**: How new code fits overall system
- **Database changes**: Schema modifications and migrations
- **Deployment notes**: Steps for releasing changes
- **Monitoring**: Logging and metrics considerations

## 6. VALIDATION & VERIFICATION
Ensure implementation meets requirements:

### Functional Validation
- [ ] All planned features working correctly
- [ ] Integration points functioning
- [ ] User workflows complete end-to-end
- [ ] Performance meets expectations

### Quality Validation
- [ ] Code follows project standards
- [ ] Test coverage meets requirements
- [ ] Documentation is complete and accurate
- [ ] Security review completed

### Deployment Preparation
- [ ] Configuration files updated
- [ ] Environment variables set
- [ ] Database migrations ready
- [ ] Monitoring and logging configured

## 7. NEXT STEPS IDENTIFICATION
Plan subsequent work:

### Immediate Tasks
- **Code review**: Schedule peer review
- **Testing**: Run full test suite
- **Documentation**: Complete any missing docs
- **Deployment**: Prepare for release

### Future Enhancements
- **Performance improvements**: Identified optimization opportunities
- **Feature extensions**: Natural next features to add
- **Technical debt**: Refactoring opportunities
- **Monitoring**: Metrics to track post-deployment

Please implement the specified component following this systematic approach.
```

## Usage Instructions

1. **Review prior phases**: Ensure VAN, PLAN, and (if applicable) CREATIVE are complete
2. **Focus on one component**: Don't try to implement everything at once
3. **Copy the template**: Paste into GitHub Copilot Chat
4. **Specify the target**: Be clear about what component you're implementing
5. **Follow systematically**: Work through each section methodically
6. **Test as you go**: Don't wait until the end to test

## Implementation Strategy

### Start Small
- **Choose a core component** that other parts depend on
- **Build incrementally** with frequent testing
- **Get one thing working completely** before moving to the next

### Follow Patterns
- **Use established conventions** from the existing codebase
- **Leverage existing utilities** rather than rebuilding
- **Maintain consistency** with the project's architecture

### Build Quality In
- **Write tests first** or alongside code
- **Add error handling** from the beginning
- **Document as you code** rather than after

## Expected Outputs

- **Production-ready code** that follows project standards
- **Comprehensive tests** covering functionality and edge cases
- **Updated documentation** reflecting new capabilities
- **Integration verification** ensuring proper system connection
- **Deployment readiness** with proper configuration

## Common Implementation Patterns

### API Development
```markdown
For REST APIs, include:
- Route definitions and handlers
- Request/response validation
- Error handling middleware
- Authentication/authorization
- API documentation updates
```

### Database Operations
```markdown
For data layer work, include:
- Model definitions or schema
- Migration scripts
- Query optimization
- Data validation
- Backup considerations
```

### Frontend Components
```markdown
For UI components, include:
- Component structure and styling
- State management integration
- Event handling
- Accessibility features
- Responsive design
```

## Next Steps

After implementation:
- **Move to REFLECT mode** for review and learning capture
- **Update project documentation** with new capabilities
- **Plan next implementation cycle** for remaining features
- **Consider ARCHIVE mode** for comprehensive documentation

## Tips for Successful Implementation

- **Stay focused**: Implement one complete feature at a time
- **Test early and often**: Don't wait until the end to validate
- **Ask for help**: Use Copilot to explain complex parts or suggest alternatives
- **Document decisions**: Record why implementation choices were made
- **Plan for maintenance**: Write code that others can understand and modify 
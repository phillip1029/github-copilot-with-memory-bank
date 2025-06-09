# Getting Started Example: Building a Task Management API

*This example demonstrates how to use the GitHub Copilot Memory Bank system to build a simple task management API.*

## Scenario
You need to build a REST API for a task management system with the following requirements:
- Create, read, update, delete tasks
- User authentication
- Task assignment to users
- Basic reporting features

Let's walk through using the Memory Bank system for this project.

## Step 1: VAN Mode Analysis

### GitHub Copilot Prompt
```markdown
@workspace VAN MODE ANALYSIS

Please perform a comprehensive analysis of this task management API project and provide:

## 1. PROJECT OVERVIEW
- Project type: REST API for task management
- Technology stack: Node.js, Express, MongoDB, JWT authentication
- Current state: Starting from scratch
- Key components needed: Authentication, task CRUD, user management, reporting

## 2. COMPLEXITY ASSESSMENT
Based on the following criteria, determine the complexity level:

Features needed:
- User authentication and authorization
- Task CRUD operations
- User assignment functionality
- Basic reporting
- API documentation
- Database design
- Testing suite

Current Complexity Level: [Analyze and determine]

## 3. CODEBASE STRUCTURE ANALYSIS
- Starting fresh project
- Need to establish project structure
- Technology stack selection needed
- Database schema design required

## 4. DEVELOPMENT REQUIREMENTS
- User authentication system
- Task management functionality
- Database integration
- API endpoints
- Error handling
- Validation
- Testing

## 5. RECOMMENDED WORKFLOW
Based on complexity level, recommend next development phases

## 6. ACTIVE CONTEXT SETUP
Create initial context for the project
```

### Expected VAN Output
The VAN analysis would likely determine this as a **Level 2** project (moderate complexity) because:
- Multiple components but not overly complex
- Standard patterns and technologies
- Clear requirements with minimal unknowns
- Can be completed in 1-2 weeks

**Recommended workflow**: VAN → PLAN → IMPLEMENT → REFLECT

## Step 2: PLAN Mode Planning

### GitHub Copilot Prompt
```markdown
@workspace PLAN MODE - IMPLEMENTATION PLANNING

Based on the VAN analysis, create a comprehensive implementation plan for the task management API:

## 1. TASK BREAKDOWN
Break down the development work into manageable tasks for a task management API with:
- User authentication (JWT)
- Task CRUD operations
- User assignment
- Basic reporting

## 2. ARCHITECTURE DECISIONS
Document key architectural choices:
- Node.js + Express + MongoDB stack
- JWT for authentication
- RESTful API design
- Mongoose for ODM

## 3. DEVELOPMENT SEQUENCE
Prioritize tasks in logical order for task management API

## 4. DEPENDENCY MAPPING
Identify external and internal dependencies

## 5. RISK ASSESSMENT
Identify potential challenges for this type of API

## 6. SUCCESS CRITERIA
Define completion metrics for task management API

Please create this implementation plan and save it to the project documentation.
```

### Expected PLAN Output
The planning would produce:
- **Phase 1**: Project setup, database connection, user model and auth
- **Phase 2**: Task model, CRUD operations, assignment functionality
- **Phase 3**: Reporting endpoints, error handling, testing, documentation

## Step 3: IMPLEMENT Mode Development

### Implementation Phase 1: Foundation
```markdown
@workspace IMPLEMENT MODE - CODE IMPLEMENTATION

Implement the foundation phase for the task management API: Authentication and User Management

## 1. IMPLEMENTATION FOCUS
Component: User authentication system with JWT
- User registration and login
- JWT token generation and validation
- User model and routes
- Authentication middleware

## 2. CODE IMPLEMENTATION
Generate production-ready code for:
- User model (MongoDB/Mongoose)
- Authentication routes (register, login)
- JWT middleware
- Password hashing
- Input validation

## 3. CODE QUALITY ASSURANCE
Ensure high-quality implementation with error handling and security

## 4. TESTING IMPLEMENTATION
Create unit tests for authentication functionality

Please implement this foundation component following best practices.
```

### Implementation Phase 2: Core Features
```markdown
@workspace IMPLEMENT MODE - CODE IMPLEMENTATION

Implement the core task management functionality:

## 1. IMPLEMENTATION FOCUS
Component: Task CRUD operations and assignment
- Task model and schema
- CRUD endpoints (GET, POST, PUT, DELETE)
- Task assignment to users
- Status management

## 2. CODE IMPLEMENTATION
Generate production-ready code for task management

Please implement following the established patterns from Phase 1.
```

## Step 4: QA Validation (As Needed)

During implementation, use QA mode for validation:

```markdown
@workspace QA VALIDATION - COMPREHENSIVE QUALITY ASSURANCE

Perform quality assurance validation for the task management API authentication system:

Focus on:
- Security validation (password hashing, JWT security)
- Input validation and sanitization
- Error handling completeness
- Code quality and standards

Please provide detailed QA findings and recommendations.
```

## Step 5: REFLECT Mode Review

After completing the implementation:

```markdown
@workspace REFLECT MODE - REVIEW & LEARNING

Review the recently completed task management API project:

## 1. IMPLEMENTATION REVIEW
Analyze what was accomplished:
- Authentication system with JWT
- Task CRUD operations
- User assignment functionality
- Basic reporting endpoints

## 2. LESSONS LEARNED
What went well and what could be improved

## 3. IMPROVEMENT OPPORTUNITIES
Areas for enhancement in future projects

## 4. TECHNICAL DEBT ASSESSMENT
Any quick fixes or workarounds used

## 5. FUTURE RECOMMENDATIONS
Next steps for the project

Please provide comprehensive reflection for future reference.
```

## Project Structure Created

After following this workflow, your project structure might look like:

```
task-management-api/
├── src/
│   ├── models/
│   │   ├── User.js
│   │   └── Task.js
│   ├── routes/
│   │   ├── auth.js
│   │   ├── tasks.js
│   │   └── users.js
│   ├── middleware/
│   │   ├── auth.js
│   │   └── validation.js
│   ├── controllers/
│   │   ├── authController.js
│   │   ├── taskController.js
│   │   └── userController.js
│   └── app.js
├── tests/
│   ├── auth.test.js
│   ├── tasks.test.js
│   └── users.test.js
├── docs/
│   ├── van_analysis.md
│   ├── implementation_plan.md
│   └── reflection_notes.md
├── contexts/
│   └── active_context.md
├── package.json
└── README.md
```

## Key Benefits Demonstrated

### 1. Structured Approach
- Clear phases with specific purposes
- Systematic progression from analysis to implementation
- Built-in quality checkpoints

### 2. Context Preservation
- VAN analysis guides planning decisions
- Planning output directs implementation
- Reflection captures lessons for future projects

### 3. Quality Assurance
- QA mode provides systematic validation
- Quality considerations built into each phase
- Continuous improvement through reflection

### 4. Documentation
- Natural documentation creation throughout process
- Knowledge preserved for future team members
- Decision rationale captured and accessible

## Tips for Success

### 1. Adapt the Prompts
- Customize templates for your specific technology stack
- Add domain-specific considerations
- Include your team's coding standards

### 2. Maintain Context Files
- Update `active_context.md` regularly
- Save important outputs from each phase
- Use context files to inform GitHub Copilot

### 3. Iterate as Needed
- Don't feel locked into the initial complexity assessment
- Adjust workflow if project requirements change
- Use QA mode whenever validation is needed

### 4. Collaborate with Copilot
- Ask follow-up questions for clarification
- Request alternative approaches when stuck
- Use Copilot to explain complex parts of the plan

---

*This example shows how the Memory Bank system provides structure while maintaining flexibility for real-world development scenarios.* 
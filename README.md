# GitHub Copilot Memory Bank System

A structured development workflow system that brings the power of Cursor's Memory Bank to GitHub Copilot through organized prompts, templates, and documentation patterns.

## Overview

This system adapts the proven Memory Bank methodology from Cursor to work seamlessly with GitHub Copilot, providing:

- **Structured Development Phases**: VAN, PLAN, CREATIVE, IMPLEMENT, REFLECT, ARCHIVE
- **Persistent Context Management**: Through organized documentation and prompt templates
- **Token-Optimized Workflows**: Efficient context management for GitHub Copilot
- **Visual Process Maps**: Clear development phase visualization
- **Cross-Platform Compatibility**: Works with any IDE that supports GitHub Copilot

## System Architecture

```
GitHub Copilot Memory Bank
├── 📁 prompts/           # Mode-specific prompt templates
├── 📁 templates/         # Document templates for each phase
├── 📁 workflows/         # Step-by-step workflow guides
├── 📁 docs/             # Generated documentation
├── 📁 contexts/         # Active context files
└── 📁 examples/         # Usage examples and demos
```

## Development Phases

### 🔍 VAN Mode (Validation & Analysis)
- **Purpose**: Project initialization and complexity assessment
- **Key Activities**: Codebase analysis, requirement validation, complexity determination
- **Outputs**: Project overview, complexity level, initial context

### 📋 PLAN Mode (Planning & Architecture)
- **Purpose**: Detailed implementation planning
- **Key Activities**: Task breakdown, architecture design, dependency mapping
- **Outputs**: Implementation plan, task list, architecture decisions

### 🎨 CREATIVE Mode (Creative Design)
- **Purpose**: Design exploration and decision making
- **Key Activities**: Alternative exploration, design decisions, creative problem solving
- **Outputs**: Design documents, decision rationale, creative solutions

### ⚒️ IMPLEMENT Mode (Implementation)
- **Purpose**: Code implementation and building
- **Key Activities**: Feature development, code writing, component creation
- **Outputs**: Working code, implementation documentation

### 🔍 REFLECT Mode (Review & Reflection)
- **Purpose**: Code review and learning capture
- **Key Activities**: Quality assessment, lesson extraction, improvement identification
- **Outputs**: Review reports, lessons learned, improvement suggestions

### 📚 ARCHIVE Mode (Documentation & Storage)
- **Purpose**: Knowledge preservation and documentation
- **Key Activities**: Comprehensive documentation, knowledge organization
- **Outputs**: Final documentation, knowledge base updates

## Quick Start

1. **Clone this repository** to your project directory
2. **Copy the prompt templates** you need from the `prompts/` directory
3. **Start with VAN mode** by using the VAN prompt template with GitHub Copilot
4. **Follow the suggested workflow** based on your project complexity
5. **Use the templates** to maintain consistent documentation

## Usage with GitHub Copilot

### Basic Workflow

1. **Open your IDE** with GitHub Copilot enabled
2. **Use the prompt templates** by copying them into your chat with Copilot
3. **Follow the structured phases** as guided by the system
4. **Maintain context** using the provided document templates
5. **Iterate through phases** as needed for your project

### Example Usage

```markdown
# In GitHub Copilot Chat
@workspace Using the VAN mode approach, analyze this codebase and determine:
1. Current project structure and complexity
2. Key components and their relationships
3. Recommended development approach (Level 1-4)
4. Next steps for implementation

Please use the VAN analysis template to structure your response.
```

## Features

- ✅ **Mode-Specific Prompts**: Pre-crafted prompts for each development phase
- ✅ **Context Management**: Structured templates for maintaining development context
- ✅ **Workflow Guidance**: Step-by-step guides for each complexity level
- ✅ **Documentation Templates**: Consistent documentation patterns
- ✅ **Cross-IDE Compatibility**: Works with VS Code, JetBrains IDEs, and more
- ✅ **Token Optimization**: Efficient prompt design for better Copilot responses

## Project Complexity Levels

### Level 1: Simple Tasks
- Direct implementation possible
- Workflow: VAN → IMPLEMENT → REFLECT

### Level 2: Moderate Complexity
- Some planning required
- Workflow: VAN → PLAN → IMPLEMENT → REFLECT

### Level 3: Complex Projects
- Design decisions needed
- Workflow: VAN → PLAN → CREATIVE → IMPLEMENT → REFLECT → ARCHIVE

### Level 4: Enterprise-Level
- Full methodology required
- Workflow: VAN → PLAN → CREATIVE → IMPLEMENT → REFLECT → ARCHIVE (with iterations)

## Installation

1. Clone this repository:
```bash
git clone https://github.com/phillip1029/github-copilot-with-memory-bank.git
```

2. Copy the system files to your project directory or use them as reference templates.

3. Start using the prompt templates with GitHub Copilot in your preferred IDE.

## Contributing

We welcome contributions! Please see our [Contributing Guidelines](CONTRIBUTING.md) for details.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Inspired by the original [Cursor Memory Bank System](https://github.com/vanzan01/cursor-memory-bank) by @vanzan01
- Adapted for GitHub Copilot by the community

---

*Making structured development accessible across all IDEs with GitHub Copilot*

#!/bin/bash

# Memory Bank Installation Script
# Automatically sets up Memory Bank system in any project repository

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Memory Bank repository URL
MEMORY_BANK_REPO="https://github.com/phillip1029/github-copilot-with-memory-bank"

echo -e "${BLUE}🚀 Memory Bank Installation Script${NC}"
echo -e "${BLUE}====================================${NC}"
echo ""

# Function to print colored output
print_status() {
    echo -e "${GREEN}✅ $1${NC}"
}

print_warning() {
    echo -e "${YELLOW}⚠️ $1${NC}"
}

print_error() {
    echo -e "${RED}❌ $1${NC}"
}

print_info() {
    echo -e "${BLUE}ℹ️ $1${NC}"
}

# Check if we're in a git repository
if ! git rev-parse --git-dir > /dev/null 2>&1; then
    print_error "This directory is not a git repository. Please run this script in a git repository."
    exit 1
fi

print_status "Found git repository"

# Get project information
PROJECT_NAME=$(basename "$(git rev-parse --show-toplevel)")
print_info "Project name: $PROJECT_NAME"

# Check if Memory Bank is already installed
if [ -d "prompts" ] && [ -f "prompts/van_mode.md" ]; then
    print_warning "Memory Bank appears to already be installed in this repository."
    read -p "Do you want to update/reinstall? (y/N): " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        print_info "Installation cancelled."
        exit 0
    fi
fi

# Create temporary directory for download
TEMP_DIR=$(mktemp -d)
trap "rm -rf $TEMP_DIR" EXIT

print_info "Downloading Memory Bank system..."

# Clone the Memory Bank repository to temp directory
if git clone "$MEMORY_BANK_REPO" "$TEMP_DIR/memory-bank" --quiet; then
    print_status "Downloaded Memory Bank system"
else
    print_error "Failed to download Memory Bank system"
    exit 1
fi

# Copy Memory Bank files to current repository
print_info "Installing Memory Bank files..."

# Core directories
cp -r "$TEMP_DIR/memory-bank/prompts" . 2>/dev/null || print_warning "Prompts directory already exists, skipping"
cp -r "$TEMP_DIR/memory-bank/templates" . 2>/dev/null || print_warning "Templates directory already exists, skipping"
cp -r "$TEMP_DIR/memory-bank/workflows" . 2>/dev/null || print_warning "Workflows directory already exists, skipping"
cp -r "$TEMP_DIR/memory-bank/examples" . 2>/dev/null || print_warning "Examples directory already exists, skipping"

# GitHub integration files
mkdir -p .github/ISSUE_TEMPLATE
mkdir -p .github/workflows
mkdir -p .github/PULL_REQUEST_TEMPLATE

cp "$TEMP_DIR/memory-bank/.github/ISSUE_TEMPLATE/"* .github/ISSUE_TEMPLATE/ 2>/dev/null || print_warning "Issue templates already exist"
cp "$TEMP_DIR/memory-bank/.github/workflows/"* .github/workflows/ 2>/dev/null || print_warning "Workflow files already exist"
cp "$TEMP_DIR/memory-bank/.github/PULL_REQUEST_TEMPLATE/"* .github/PULL_REQUEST_TEMPLATE/ 2>/dev/null || print_warning "PR templates already exist"

print_status "Core Memory Bank files installed"

# Create project-specific directories
print_info "Creating project directories..."

mkdir -p docs/memory_bank/{van_analysis,planning,creative_decisions,implementation_logs,reflections,archives}
mkdir -p contexts
mkdir -p .memory_bank
mkdir -p .copilot/instructions
mkdir -p docs/instructions

print_status "Project directories created"

# Create GitHub Copilot instruction files
print_info "Creating GitHub Copilot instruction files..."

# Copy Memory Bank prompts as instruction files with descriptive names
cp prompts/van_mode.md .copilot/instructions/01-van-analysis.md
cp prompts/plan_mode.md .copilot/instructions/02-planning-architecture.md
cp prompts/creative_mode.md .copilot/instructions/03-creative-design.md
cp prompts/implement_mode.md .copilot/instructions/04-implementation.md
cp prompts/reflect_mode.md .copilot/instructions/05-reflection-review.md
cp prompts/archive_mode.md .copilot/instructions/06-archive-documentation.md
cp prompts/qa_validation.md .copilot/instructions/07-quality-assurance.md

# Create easy-access instruction files in docs
cp prompts/van_mode.md docs/instructions/van-analysis-instructions.md
cp prompts/plan_mode.md docs/instructions/planning-instructions.md
cp prompts/creative_mode.md docs/instructions/creative-instructions.md
cp prompts/implement_mode.md docs/instructions/implementation-instructions.md
cp prompts/reflect_mode.md docs/instructions/reflection-instructions.md
cp prompts/archive_mode.md docs/instructions/archive-instructions.md
cp prompts/qa_validation.md docs/instructions/qa-instructions.md

print_status "GitHub Copilot instruction files created"

# Initialize context file if it doesn't exist
if [ ! -f "contexts/active_context.md" ]; then
    print_info "Creating initial context file..."
    
    cat > contexts/active_context.md << EOF
# Active Development Context

*This file tracks the current development focus and maintains context across GitHub Copilot sessions.*

## Current Project Status

### Project Information
- **Project Name**: $PROJECT_NAME
- **Current Phase**: VAN (Ready for Analysis)
- **Complexity Level**: [To be determined]
- **Last Updated**: $(date +"%Y-%m-%d")

### Active Development Focus
- **Current Feature/Component**: Memory Bank system setup
- **Priority Level**: High
- **Target Completion**: Ready for first VAN analysis
- **Dependencies**: Memory Bank system (✅ Installed)

## Memory Bank Workflow Status

### Setup Complete
- [x] Memory Bank system installed
- [x] Directory structure created
- [x] GitHub templates configured
- [ ] VAN analysis (next step)

### Next Steps
1. **Run VAN Analysis**: Use prompts/van_mode.md with GitHub Copilot
2. **Determine Complexity**: Assess your first development task
3. **Follow Workflow**: Based on complexity level

## Quick Reference

### Memory Bank Prompts
- **VAN**: \`prompts/van_mode.md\` - Analysis & validation
- **PLAN**: \`prompts/plan_mode.md\` - Planning & architecture  
- **CREATIVE**: \`prompts/creative_mode.md\` - Design exploration
- **IMPLEMENT**: \`prompts/implement_mode.md\` - Code implementation
- **REFLECT**: \`prompts/reflect_mode.md\` - Review & learning
- **ARCHIVE**: \`prompts/archive_mode.md\` - Documentation
- **QA**: \`prompts/qa_validation.md\` - Quality assurance

### Workflow Paths
- **Level 1**: VAN → IMPLEMENT → REFLECT
- **Level 2**: VAN → PLAN → IMPLEMENT → REFLECT  
- **Level 3-4**: VAN → PLAN → CREATIVE → IMPLEMENT → REFLECT → ARCHIVE

---
*Update this file regularly to maintain context for productive GitHub Copilot sessions.*
EOF

    print_status "Initial context file created"
else
    print_warning "Context file already exists, skipping initialization"
fi

# Create setup completion file
cat > .memory_bank/SETUP_COMPLETE.md << EOF
# Memory Bank Setup Complete! 🎉

Installation completed on: $(date)
Project: $PROJECT_NAME

## What was installed:

✅ **Core Memory Bank System**
- \`prompts/\` - Mode-specific prompt templates
- \`templates/\` - Document templates
- \`workflows/\` - Workflow guidance
- \`examples/\` - Usage examples

✅ **GitHub Integration**
- Issue templates with Memory Bank workflow
- Pull request templates with validation
- GitHub Actions for automation

✅ **Project Structure**
- \`docs/memory_bank/\` - Documentation storage
- \`contexts/\` - Active context tracking
- \`.memory_bank/\` - System files

## Next Steps:

1. **Start with VAN Analysis**:
   - Copy prompt from \`prompts/van_mode.md\`
   - Paste into GitHub Copilot Chat with \`@workspace\`
   - Determine your project's complexity level

2. **Follow the Workflow**:
   - Level 1: VAN → IMPLEMENT → REFLECT
   - Level 2: VAN → PLAN → IMPLEMENT → REFLECT
   - Level 3-4: VAN → PLAN → CREATIVE → IMPLEMENT → REFLECT → ARCHIVE

3. **Use GitHub Templates**:
   - Create issues using Memory Bank templates
   - Use Memory Bank PR template for code reviews
   - Follow structured development process

## Resources:

- [Quick Start Guide](../QUICK_START.md)
- [Complexity Assessment](../workflows/complexity_level_guide.md)
- [Example Walkthrough](../examples/getting_started_example.md)
- [Memory Bank Repository](https://github.com/phillip1029/github-copilot-with-memory-bank)

Ready to revolutionize your development workflow! 🚀
EOF

print_status "Setup documentation created"

# Create GitHub Copilot instruction guide
print_info "Creating GitHub Copilot instruction guide..."

cat > .copilot/MEMORY_BANK_INSTRUCTIONS.md << 'EOF'
# Memory Bank Instructions for GitHub Copilot

*Quick access to all Memory Bank prompts for use as GitHub Copilot context/instructions*

## How to Use

1. **Right-click any instruction file** below in your IDE
2. **Select "Add as Context"** or "Use as Instructions" 
3. **Chat with GitHub Copilot** using the Memory Bank methodology

## Available Instructions

### Core Workflow Instructions
- [`01-van-analysis.md`](instructions/01-van-analysis.md) - Initial validation & analysis
- [`02-planning-architecture.md`](instructions/02-planning-architecture.md) - Planning & architecture decisions
- [`03-creative-design.md`](instructions/03-creative-design.md) - Creative design exploration
- [`04-implementation.md`](instructions/04-implementation.md) - Code implementation
- [`05-reflection-review.md`](instructions/05-reflection-review.md) - Review & reflection
- [`06-archive-documentation.md`](instructions/06-archive-documentation.md) - Documentation & archiving
- [`07-quality-assurance.md`](instructions/07-quality-assurance.md) - Quality assurance validation

### Alternative Locations
- `docs/instructions/` - Human-readable instruction copies
- `prompts/` - Original prompt template files
- `contexts/active_context.md` - Current project context

## Workflow Paths by Complexity

**Level 1 (Simple):** VAN → IMPLEMENT → REFLECT
**Level 2 (Moderate):** VAN → PLAN → IMPLEMENT → REFLECT  
**Level 3-4 (Complex):** VAN → PLAN → CREATIVE → IMPLEMENT → REFLECT → ARCHIVE

## Quick Start

1. Start with `01-van-analysis.md` for any new task
2. Follow the recommended workflow path based on complexity
3. Use `07-quality-assurance.md` at any phase for validation
4. Update `contexts/active_context.md` regularly

---
*Right-click any instruction file above and select "Add as Context" to get started!*
EOF

cat > COPILOT_INSTRUCTIONS.md << 'EOF'
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
EOF

print_status "GitHub Copilot instruction guide created"

# Add to git if desired
print_info "Memory Bank installation complete!"
echo ""
print_info "Would you like to commit these changes to git?"
read -p "Commit Memory Bank setup? (Y/n): " -n 1 -r
echo

if [[ $REPLY =~ ^[Nn]$ ]]; then
    print_info "Skipping git commit. You can commit manually later."
else
    print_info "Committing Memory Bank setup..."
    
    git add .
    git commit -m "🚀 Install Memory Bank system

- Added Memory Bank prompt templates and workflows
- Configured GitHub issue and PR templates  
- Created project documentation structure
- Initialized context tracking for GitHub Copilot
- Ready for structured development workflow

Next: Run VAN analysis to get started!"

    print_status "Changes committed to git"
fi

echo ""
echo -e "${GREEN}🎉 Memory Bank Installation Complete!${NC}"
echo ""
echo -e "${BLUE}Next Steps:${NC}"
echo "1. Open your IDE with GitHub Copilot"
echo "2. Copy the VAN prompt from prompts/van_mode.md" 
echo "3. Paste into GitHub Copilot Chat with @workspace"
echo "4. Follow the Memory Bank workflow!"
echo ""
echo -e "${BLUE}Quick Start:${NC}"
echo "📖 Read: QUICK_START.md"
echo "📊 Assess: workflows/complexity_level_guide.md"  
echo "🎯 Example: examples/getting_started_example.md"
echo ""
echo -e "${GREEN}Happy coding with Memory Bank! 🚀${NC}" 
# Memory Bank Installation Script - PowerShell Version
# Automatically sets up Memory Bank system in any project repository

param(
    [string]$ProjectType = "web",
    [switch]$SkipCommit
)

# Memory Bank repository URL
$MEMORY_BANK_REPO = "https://github.com/phillip1029/github-copilot-with-memory-bank"

Write-Host "🚀 Memory Bank Installation Script" -ForegroundColor Blue
Write-Host "====================================" -ForegroundColor Blue
Write-Host ""

# Function to print colored output
function Write-Success { param($Message) Write-Host "✅ $Message" -ForegroundColor Green }
function Write-Warning { param($Message) Write-Host "⚠️ $Message" -ForegroundColor Yellow }
function Write-Error { param($Message) Write-Host "❌ $Message" -ForegroundColor Red }
function Write-Info { param($Message) Write-Host "ℹ️ $Message" -ForegroundColor Blue }

# Check if we're in a git repository
try {
    git rev-parse --git-dir > $null 2>&1
    Write-Success "Found git repository"
} catch {
    Write-Error "This directory is not a git repository. Please run this script in a git repository."
    exit 1
}

# Get project information
$PROJECT_NAME = Split-Path -Leaf (git rev-parse --show-toplevel)
Write-Info "Project name: $PROJECT_NAME"

# Check if Memory Bank is already installed
if ((Test-Path "prompts") -and (Test-Path "prompts/van_mode.md")) {
    Write-Warning "Memory Bank appears to already be installed in this repository."
    $response = Read-Host "Do you want to update/reinstall? (y/N)"
    if ($response -notmatch '^[Yy]$') {
        Write-Info "Installation cancelled."
        exit 0
    }
}

# Create temporary directory for download
$TEMP_DIR = New-TemporaryFile | ForEach-Object { Remove-Item $_; New-Item -ItemType Directory -Path $_ }
$cleanupTempDir = {
    if (Test-Path $TEMP_DIR) {
        Remove-Item -Path $TEMP_DIR -Recurse -Force
    }
}
Register-EngineEvent -SourceIdentifier PowerShell.Exiting -Action $cleanupTempDir

Write-Info "Downloading Memory Bank system..."

# Clone the Memory Bank repository to temp directory
try {
    git clone $MEMORY_BANK_REPO "$TEMP_DIR\memory-bank" --quiet
    Write-Success "Downloaded Memory Bank system"
} catch {
    Write-Error "Failed to download Memory Bank system"
    exit 1
}

# Copy Memory Bank files to current repository
Write-Info "Installing Memory Bank files..."

# Core directories
$sourceDirs = @("prompts", "templates", "workflows", "examples")
foreach ($dir in $sourceDirs) {
    $sourcePath = "$TEMP_DIR\memory-bank\$dir"
    if (Test-Path $sourcePath) {
        if (Test-Path $dir) {
            Write-Warning "$dir directory already exists, skipping"
        } else {
            Copy-Item -Path $sourcePath -Destination . -Recurse
        }
    }
}

# GitHub integration files
New-Item -ItemType Directory -Path ".github\ISSUE_TEMPLATE" -Force | Out-Null
New-Item -ItemType Directory -Path ".github\workflows" -Force | Out-Null
New-Item -ItemType Directory -Path ".github\PULL_REQUEST_TEMPLATE" -Force | Out-Null

# Copy GitHub template files
$githubDirs = @("ISSUE_TEMPLATE", "workflows", "PULL_REQUEST_TEMPLATE")
foreach ($dir in $githubDirs) {
    $sourcePath = "$TEMP_DIR\memory-bank\.github\$dir"
    $destPath = ".github\$dir"
    if (Test-Path $sourcePath) {
        Get-ChildItem -Path $sourcePath | ForEach-Object {
            $destFile = Join-Path $destPath $_.Name
            if (Test-Path $destFile) {
                Write-Warning "$($_.Name) already exists in $dir"
            } else {
                Copy-Item -Path $_.FullName -Destination $destFile
            }
        }
    }
}

Write-Success "Core Memory Bank files installed"

# Create project-specific directories
Write-Info "Creating project directories..."

$dirs = @(
    "docs\memory_bank\van_analysis",
    "docs\memory_bank\planning", 
    "docs\memory_bank\creative_decisions",
    "docs\memory_bank\implementation_logs",
    "docs\memory_bank\reflections",
    "docs\memory_bank\archives",
    "contexts",
    ".memory_bank",
    ".copilot\instructions",
    "docs\instructions"
)

foreach ($dir in $dirs) {
    New-Item -ItemType Directory -Path $dir -Force | Out-Null
}

Write-Success "Project directories created"

# Create GitHub Copilot instruction files
Write-Info "Creating GitHub Copilot instruction files..."

# Copy Memory Bank prompts as instruction files with descriptive names
Copy-Item -Path "prompts\van_mode.md" -Destination ".copilot\instructions\01-van-analysis.md"
Copy-Item -Path "prompts\plan_mode.md" -Destination ".copilot\instructions\02-planning-architecture.md"
Copy-Item -Path "prompts\creative_mode.md" -Destination ".copilot\instructions\03-creative-design.md"
Copy-Item -Path "prompts\implement_mode.md" -Destination ".copilot\instructions\04-implementation.md"
Copy-Item -Path "prompts\reflect_mode.md" -Destination ".copilot\instructions\05-reflection-review.md"
Copy-Item -Path "prompts\archive_mode.md" -Destination ".copilot\instructions\06-archive-documentation.md"
Copy-Item -Path "prompts\qa_validation.md" -Destination ".copilot\instructions\07-quality-assurance.md"

# Create easy-access instruction files in docs
Copy-Item -Path "prompts\van_mode.md" -Destination "docs\instructions\van-analysis-instructions.md"
Copy-Item -Path "prompts\plan_mode.md" -Destination "docs\instructions\planning-instructions.md"
Copy-Item -Path "prompts\creative_mode.md" -Destination "docs\instructions\creative-instructions.md"
Copy-Item -Path "prompts\implement_mode.md" -Destination "docs\instructions\implementation-instructions.md"
Copy-Item -Path "prompts\reflect_mode.md" -Destination "docs\instructions\reflection-instructions.md"
Copy-Item -Path "prompts\archive_mode.md" -Destination "docs\instructions\archive-instructions.md"
Copy-Item -Path "prompts\qa_validation.md" -Destination "docs\instructions\qa-instructions.md"

Write-Success "GitHub Copilot instruction files created"

# Initialize context file if it doesn't exist
if (-not (Test-Path "contexts\active_context.md")) {
    Write-Info "Creating initial context file..."
    
    $contextContent = @"
# Active Development Context

*This file tracks the current development focus and maintains context across GitHub Copilot sessions.*

## Current Project Status

### Project Information
- **Project Name**: $PROJECT_NAME
- **Project Type**: $ProjectType
- **Current Phase**: VAN (Ready for Analysis)
- **Complexity Level**: [To be determined]
- **Last Updated**: $(Get-Date -Format "yyyy-MM-dd")

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
- **VAN**: ``prompts/van_mode.md`` - Analysis & validation
- **PLAN**: ``prompts/plan_mode.md`` - Planning & architecture  
- **CREATIVE**: ``prompts/creative_mode.md`` - Design exploration
- **IMPLEMENT**: ``prompts/implement_mode.md`` - Code implementation
- **REFLECT**: ``prompts/reflect_mode.md`` - Review & learning
- **ARCHIVE**: ``prompts/archive_mode.md`` - Documentation
- **QA**: ``prompts/qa_validation.md`` - Quality assurance

### Workflow Paths
- **Level 1**: VAN → IMPLEMENT → REFLECT
- **Level 2**: VAN → PLAN → IMPLEMENT → REFLECT  
- **Level 3-4**: VAN → PLAN → CREATIVE → IMPLEMENT → REFLECT → ARCHIVE

---
*Update this file regularly to maintain context for productive GitHub Copilot sessions.*
"@

    Set-Content -Path "contexts\active_context.md" -Value $contextContent -Encoding UTF8
    Write-Success "Initial context file created"
} else {
    Write-Warning "Context file already exists, skipping initialization"
}

# Create setup completion file
$setupContent = @"
# Memory Bank Setup Complete! 🎉

Installation completed on: $(Get-Date)
Project: $PROJECT_NAME
Project Type: $ProjectType

## What was installed:

✅ **Core Memory Bank System**
- ``prompts/`` - Mode-specific prompt templates
- ``templates/`` - Document templates
- ``workflows/`` - Workflow guidance
- ``examples/`` - Usage examples

✅ **GitHub Integration**
- Issue templates with Memory Bank workflow
- Pull request templates with validation
- GitHub Actions for automation

✅ **Project Structure**
- ``docs/memory_bank/`` - Documentation storage
- ``contexts/`` - Active context tracking
- ``.memory_bank/`` - System files

## Next Steps:

1. **Start with VAN Analysis**:
   - Copy prompt from ``prompts/van_mode.md``
   - Paste into GitHub Copilot Chat with ``@workspace``
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
"@

Set-Content -Path ".memory_bank\SETUP_COMPLETE.md" -Value $setupContent -Encoding UTF8
Write-Success "Setup documentation created"

# Create GitHub Copilot instruction guide
Write-Info "Creating GitHub Copilot instruction guide..."

$instructionGuideContent = @"
# Memory Bank Instructions for GitHub Copilot

*Quick access to all Memory Bank prompts for use as GitHub Copilot context/instructions*

## How to Use

1. **Right-click any instruction file** below in your IDE
2. **Select "Add as Context"** or "Use as Instructions" 
3. **Chat with GitHub Copilot** using the Memory Bank methodology

## Available Instructions

### Core Workflow Instructions
- [``01-van-analysis.md``](instructions/01-van-analysis.md) - Initial validation & analysis
- [``02-planning-architecture.md``](instructions/02-planning-architecture.md) - Planning & architecture decisions
- [``03-creative-design.md``](instructions/03-creative-design.md) - Creative design exploration
- [``04-implementation.md``](instructions/04-implementation.md) - Code implementation
- [``05-reflection-review.md``](instructions/05-reflection-review.md) - Review & reflection
- [``06-archive-documentation.md``](instructions/06-archive-documentation.md) - Documentation & archiving
- [``07-quality-assurance.md``](instructions/07-quality-assurance.md) - Quality assurance validation

### Alternative Locations
- ``docs/instructions/`` - Human-readable instruction copies
- ``prompts/`` - Original prompt template files
- ``contexts/active_context.md`` - Current project context

## Workflow Paths by Complexity

**Level 1 (Simple):** VAN → IMPLEMENT → REFLECT
**Level 2 (Moderate):** VAN → PLAN → IMPLEMENT → REFLECT  
**Level 3-4 (Complex):** VAN → PLAN → CREATIVE → IMPLEMENT → REFLECT → ARCHIVE

## Quick Start

1. Start with ``01-van-analysis.md`` for any new task
2. Follow the recommended workflow path based on complexity
3. Use ``07-quality-assurance.md`` at any phase for validation
4. Update ``contexts/active_context.md`` regularly

---
*Right-click any instruction file above and select "Add as Context" to get started!*
"@

Set-Content -Path ".copilot\MEMORY_BANK_INSTRUCTIONS.md" -Value $instructionGuideContent -Encoding UTF8

$copilotInstructionsContent = @"
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
3. Paste into GitHub Copilot Chat with ``@workspace``

### Method 3: Reference Active Context
- Always keep [``contexts/active_context.md``](contexts/active_context.md) updated
- Reference it in GitHub Copilot for current project state
- Use ``@workspace`` to include full project context

## Workflow Decision Tree

````
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
````

## Project Context Files

- **Active Context:** [``contexts/active_context.md``](contexts/active_context.md) - Current development focus
- **Documentation:** [``docs/memory_bank/``](docs/memory_bank/) - Project documentation storage
- **Templates:** [``templates/``](templates/) - Reusable templates
- **Examples:** [``examples/``](examples/) - Usage examples

---

**Ready to start?** Right-click [VAN Analysis](.copilot/instructions/01-van-analysis.md) and select "Add as Context" to begin your Memory Bank workflow!
"@

Set-Content -Path "COPILOT_INSTRUCTIONS.md" -Value $copilotInstructionsContent -Encoding UTF8
Write-Success "GitHub Copilot instruction guide created"

# Commit to git if not skipped
if (-not $SkipCommit) {
    Write-Info "Memory Bank installation complete!"
    Write-Host ""
    $commitResponse = Read-Host "Commit Memory Bank setup? (Y/n)"
    
    if ($commitResponse -notmatch '^[Nn]$') {
        Write-Info "Committing Memory Bank setup..."
        
        git add .
        git commit -m @"
🚀 Install Memory Bank system

- Added Memory Bank prompt templates and workflows
- Configured GitHub issue and PR templates  
- Created project documentation structure
- Initialized context tracking for GitHub Copilot
- Ready for structured development workflow

Next: Run VAN analysis to get started!
"@

        Write-Success "Changes committed to git"
    } else {
        Write-Info "Skipping git commit. You can commit manually later."
    }
}

# Clean up
& $cleanupTempDir

Write-Host ""
Write-Host "🎉 Memory Bank Installation Complete!" -ForegroundColor Green
Write-Host ""
Write-Host "Next Steps:" -ForegroundColor Blue
Write-Host "1. Open your IDE with GitHub Copilot"
Write-Host "2. Copy the VAN prompt from prompts/van_mode.md"
Write-Host "3. Paste into GitHub Copilot Chat with @workspace"
Write-Host "4. Follow the Memory Bank workflow!"
Write-Host ""
Write-Host "Quick Start:" -ForegroundColor Blue
Write-Host "📖 Read: QUICK_START.md"
Write-Host "📊 Assess: workflows/complexity_level_guide.md"
Write-Host "🎯 Example: examples/getting_started_example.md"
Write-Host ""
Write-Host "Happy coding with Memory Bank! 🚀" -ForegroundColor Green 
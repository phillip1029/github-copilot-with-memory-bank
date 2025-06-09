# Memory Bank Installation Guide

This guide explains how to set up the Memory Bank system in your projects using our GitHub integration features.

## 🚀 Installation Methods

### Method 1: Automated Installation Script (Recommended)

**For Linux/macOS:**
```bash
# Download and run the installation script
curl -sSL https://raw.githubusercontent.com/phillip1029/github-copilot-with-memory-bank/main/install_memory_bank.sh | bash
```

**For Windows (PowerShell):**
```powershell
# Download and run the PowerShell script
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/phillip1029/github-copilot-with-memory-bank/main/install_memory_bank.ps1" -OutFile "install_memory_bank.ps1"
.\install_memory_bank.ps1 -ProjectType "web"
```

### Method 2: GitHub Actions (One-Click Setup)

1. **Fork or Clone** this repository to your project
2. **Go to Actions** tab in your repository
3. **Run "Memory Bank Setup"** workflow
4. **Select project type** and configuration options
5. **Automated setup** will create all necessary files

### Method 3: Manual Installation

1. **Clone this repository:**
   ```bash
   git clone https://github.com/phillip1029/github-copilot-with-memory-bank.git
   ```

2. **Copy files to your project:**
   ```bash
   cp -r github-copilot-with-memory-bank/prompts ./
   cp -r github-copilot-with-memory-bank/templates ./
   cp -r github-copilot-with-memory-bank/workflows ./
   cp -r github-copilot-with-memory-bank/.github ./
   ```

3. **Create project directories:**
   ```bash
   mkdir -p docs/memory_bank/{van_analysis,planning,creative_decisions,implementation_logs,reflections,archives}
   mkdir -p contexts
   ```

### Method 4: Use as GitHub Template

1. **Visit:** [Memory Bank Repository](https://github.com/phillip1029/github-copilot-with-memory-bank)
2. **Click "Use this template"**
3. **Create new repository** with Memory Bank pre-configured
4. **Start developing** with Memory Bank workflow

---

## 🔧 GitHub Integration Features

Our GitHub integration automatically adds Memory Bank methodology to your development workflow:

### 1. Issue Templates

**Feature Request Template** (`feature_request.md`)
- Incorporates VAN analysis requirements
- Includes Memory Bank workflow checklist
- Guides complexity assessment
- Provides implementation starting points

**Bug Report Template** (`bug_report.md`)
- Structures bug analysis using Memory Bank approach
- Includes root cause investigation framework
- Incorporates fix workflow planning

**Usage:**
- Create new issue → Select Memory Bank template
- Follow the structured approach for feature requests/bugs
- Use provided prompts with GitHub Copilot

### 2. Pull Request Templates

**Memory Bank PR Template** (`memory_bank_pr.md`)
- Validates Memory Bank workflow completion
- Ensures proper documentation and testing
- Includes post-merge action planning
- Guides code review focus areas

**Features:**
- Workflow phase validation checkboxes
- Testing completion verification
- Risk assessment and mitigation
- Memory Bank next steps planning

### 3. GitHub Actions Workflows

**Memory Bank Setup Workflow** (`.github/workflows/memory_bank_setup.yml`)
- Automated project setup
- Configurable for different project types
- Creates directory structure
- Initializes context files
- Commits setup automatically

**Triggers:**
- Manual workflow dispatch
- Configurable project type selection
- Option to skip documentation/context setup

### 4. Automated Directory Structure

When installed, creates:

```
your-project/
├── .github/
│   ├── ISSUE_TEMPLATE/
│   │   ├── feature_request.md
│   │   └── bug_report.md
│   ├── PULL_REQUEST_TEMPLATE/
│   │   └── memory_bank_pr.md
│   └── workflows/
│       └── memory_bank_setup.yml
├── .copilot/
│   ├── instructions/
│   │   ├── 01-van-analysis.md
│   │   ├── 02-planning-architecture.md
│   │   ├── 03-creative-design.md
│   │   ├── 04-implementation.md
│   │   ├── 05-reflection-review.md
│   │   ├── 06-archive-documentation.md
│   │   └── 07-quality-assurance.md
│   └── MEMORY_BANK_INSTRUCTIONS.md
├── prompts/
│   ├── van_mode.md
│   ├── plan_mode.md
│   ├── creative_mode.md
│   ├── implement_mode.md
│   ├── reflect_mode.md
│   ├── archive_mode.md
│   └── qa_validation.md
├── docs/
│   ├── instructions/
│   │   ├── van-analysis-instructions.md
│   │   ├── planning-instructions.md
│   │   ├── creative-instructions.md
│   │   ├── implementation-instructions.md
│   │   ├── reflection-instructions.md
│   │   ├── archive-instructions.md
│   │   └── qa-instructions.md
│   └── memory_bank/
│       ├── van_analysis/
│       ├── planning/
│       ├── creative_decisions/
│       ├── implementation_logs/
│       ├── reflections/
│       └── archives/
├── contexts/
│   └── active_context.md
├── templates/
│   └── active_context.md
├── workflows/
│   └── complexity_level_guide.md
├── examples/
│   └── getting_started_example.md
├── .memory_bank/
│   └── SETUP_COMPLETE.md
└── COPILOT_INSTRUCTIONS.md
```

### 5. GitHub Copilot Instruction Files

**Easy Context/Instructions Access:**
- `.copilot/instructions/` - Numbered instruction files for easy right-click access
- `docs/instructions/` - Human-readable copies with descriptive names
- `COPILOT_INSTRUCTIONS.md` - Root-level instruction guide with direct links
- `.copilot/MEMORY_BANK_INSTRUCTIONS.md` - Detailed usage guide

---

## 📋 Post-Installation Setup

### 1. Configure Your IDE

**VS Code:**
- Ensure GitHub Copilot extension is installed
- Open the `contexts/active_context.md` file
- Keep this file open during development sessions

**Other IDEs:**
- Install GitHub Copilot for your IDE
- Bookmark the Memory Bank prompt files
- Keep context files easily accessible

### 2. Initialize Your First Analysis

1. **Open GitHub Copilot Chat**
2. **Copy VAN prompt** from `prompts/van_mode.md`
3. **Run analysis:** Paste prompt with `@workspace`
4. **Determine complexity level** (1-4)
5. **Follow appropriate workflow**

### 3. Set Up Your Workflow

**For Teams:**
- Train team members on Memory Bank methodology
- Establish conventions for context file updates
- Use GitHub issue and PR templates consistently
- Schedule regular REFLECT sessions

**For Solo Development:**
- Make context updates part of your routine
- Use Memory Bank prompts consistently
- Document decisions in appropriate directories
- Follow the complexity-based workflow paths

---

## 🎯 Using GitHub Copilot Instruction Files

### Quick Access to Memory Bank Methodology

The installation automatically creates instruction files optimized for GitHub Copilot's "Add Context" feature:

**Three ways to access instructions:**

1. **Right-click Method (Recommended):**
   - Navigate to `.copilot/instructions/` in your IDE
   - Right-click any instruction file (e.g., `01-van-analysis.md`)
   - Select "Add as Context" or "Use as Instructions"
   - GitHub Copilot will follow that methodology

2. **Root-level Quick Access:**
   - Open `COPILOT_INSTRUCTIONS.md` in your project root
   - Click any linked instruction file
   - Right-click and "Add as Context"

3. **Docs Directory:**
   - Browse `docs/instructions/` for human-readable copies
   - Use for reference or copy-paste into Copilot Chat

### Instruction File Organization

**Numbered for Easy Workflow:**
- `01-van-analysis.md` - Always start here for new tasks
- `02-planning-architecture.md` - For Level 2+ complexity projects
- `03-creative-design.md` - For Level 3-4 complexity projects  
- `04-implementation.md` - Structured coding approach
- `05-reflection-review.md` - Post-implementation analysis
- `06-archive-documentation.md` - Comprehensive documentation
- `07-quality-assurance.md` - Validation (use at any phase)

### Best Practices

**For Solo Development:**
1. Start each coding session by adding `01-van-analysis.md` as context
2. Reference `contexts/active_context.md` to maintain project state
3. Use numbered sequence based on your project's complexity level

**For Team Development:**
1. Establish team conventions for instruction file usage
2. Keep `contexts/active_context.md` updated and shared
3. Use consistent instruction files across team members
4. Document decisions in `docs/memory_bank/` directories

**Integration with GitHub Copilot:**
- Use `@workspace` when chatting with instruction context added
- Keep context files open in your IDE during development
- Reference the workflow decision tree in `COPILOT_INSTRUCTIONS.md`
- Update active context regularly to maintain Memory Bank effectiveness

---

## 🎯 Using GitHub Templates

### Creating Issues with Memory Bank

1. **Go to Issues** → **New Issue**
2. **Select Memory Bank template** (Feature Request or Bug Report)
3. **Fill out analysis sections:**
   - Complexity assessment
   - Technology impact
   - Memory Bank workflow checklist
4. **Use provided prompts** with GitHub Copilot
5. **Track progress** through workflow phases

### Creating Pull Requests

1. **Create PR** using Memory Bank template
2. **Verify workflow completion:**
   - Check off completed phases (VAN, PLAN, etc.)
   - Document testing completed
   - Include risk assessment
3. **Link to analysis documentation**
4. **Plan post-merge actions**

### Using GitHub Actions

**Manual Setup:**
1. Go to **Actions** tab
2. Find **"Memory Bank Setup"** workflow
3. Click **"Run workflow"**
4. Select your project type
5. Configure setup options
6. Run and wait for completion

**Automatic Setup:**
- Workflow runs when `.github/workflows/memory_bank_setup.yml` is pushed
- Creates complete Memory Bank structure
- Commits changes automatically
- Provides setup summary

---

## 🔄 Integration with Existing Projects

### For Existing Repositories

**Assessment:**
1. Run VAN analysis on your current project
2. Identify areas that would benefit from Memory Bank
3. Start with new features using Memory Bank workflow
4. Gradually integrate existing code documentation

**Migration Strategy:**
1. Install Memory Bank system
2. Document current project state in `contexts/active_context.md`
3. Create issues for major refactoring using Memory Bank templates
4. Use ARCHIVE mode to document existing decisions

### For New Projects

**Recommended Approach:**
1. Start with this repository as a template
2. Run initial VAN analysis for project planning
3. Use Memory Bank workflow from day one
4. Establish team conventions early

---

## 🛠️ Customization

### Adapting Templates

**Issue Templates:**
- Modify `.github/ISSUE_TEMPLATE/` files for your needs
- Add project-specific sections
- Include custom labels or assignees

**PR Templates:**
- Customize `.github/PULL_REQUEST_TEMPLATE/memory_bank_pr.md`
- Add project-specific validation steps
- Include custom review criteria

### Workflow Customization

**GitHub Actions:**
- Modify `.github/workflows/memory_bank_setup.yml`
- Add project-specific setup steps
- Integrate with existing CI/CD pipelines

**Memory Bank Prompts:**
- Customize prompts in `prompts/` directory
- Add domain-specific analysis questions
- Tailor complexity assessments for your field

---

## 📚 Resources

### Quick References
- [Quick Start Guide](QUICK_START.md) - 5-minute setup
- [Complexity Guide](workflows/complexity_level_guide.md) - Level assessment
- [Example Walkthrough](examples/getting_started_example.md) - Complete example

### GitHub Documentation
- [Creating Issue Templates](https://docs.github.com/en/communities/using-templates-to-encourage-useful-issues-and-pull-requests/configuring-issue-templates-for-your-repository)
- [GitHub Actions](https://docs.github.com/en/actions)
- [Repository Templates](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-template-repository)

### Community
- [GitHub Repository](https://github.com/phillip1029/github-copilot-with-memory-bank)
- [Contributing Guide](CONTRIBUTING.md)
- [Issue Tracker](https://github.com/phillip1029/github-copilot-with-memory-bank/issues)

---

## 🆘 Troubleshooting

### Common Issues

**Installation Script Fails:**
- Ensure you're in a git repository
- Check internet connection for download
- Verify git is installed and configured

**GitHub Actions Won't Run:**
- Check repository permissions
- Ensure Actions are enabled in repository settings
- Verify workflow file syntax

**Templates Don't Appear:**
- Refresh GitHub page
- Check file locations in `.github/` directories
- Verify file extensions are `.md`

### Getting Help

1. **Check the documentation** in this repository
2. **Search existing issues** on GitHub
3. **Create an issue** using our Memory Bank templates
4. **Join the discussion** in repository discussions

---

## ✅ Verification

After installation, verify Memory Bank is working:

### GitHub Integration
- [ ] GitHub issue templates appear when creating issues
- [ ] PR template appears when creating pull requests  
- [ ] GitHub Actions workflow is available in Actions tab

### Directory Structure  
- [ ] `prompts/` directory contains all mode files
- [ ] `contexts/active_context.md` exists and is populated
- [ ] `docs/memory_bank/` subdirectories are created
- [ ] `.memory_bank/SETUP_COMPLETE.md` exists

### Instruction Files (New!)
- [ ] `.copilot/instructions/` contains numbered instruction files (01-07)
- [ ] `docs/instructions/` contains descriptive instruction copies
- [ ] `COPILOT_INSTRUCTIONS.md` exists in project root
- [ ] `.copilot/MEMORY_BANK_INSTRUCTIONS.md` exists

### GitHub Copilot Integration Test
- [ ] Right-click on `.copilot/instructions/01-van-analysis.md` shows "Add as Context" option
- [ ] Opening `COPILOT_INSTRUCTIONS.md` shows clickable instruction links
- [ ] GitHub Copilot Chat responds appropriately with added instruction context

**Ready to start?** 

1. **Right-click** `.copilot/instructions/01-van-analysis.md` 
2. **Select** "Add as Context"
3. **Chat with GitHub Copilot** using `@workspace` to begin your Memory Bank workflow! 🚀

**Alternative:** Create your first issue using the Memory Bank feature request template for a structured approach. 
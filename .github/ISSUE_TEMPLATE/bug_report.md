---
name: Bug Report (Memory Bank)
about: Report a bug using Memory Bank analysis approach
title: '[BUG] '
labels: ['bug', 'needs-van-analysis']
assignees: ''
---

# Bug Report - Memory Bank Analysis

## 🐛 Bug Description
**Brief description:**
<!-- A clear and concise description of what the bug is -->

**Expected behavior:**
<!-- What you expected to happen -->

**Actual behavior:**
<!-- What actually happened -->

---

## 📝 Reproduction Steps
1. Go to '...'
2. Click on '....'
3. Scroll down to '....'
4. See error

**Reproducible:** 
- [ ] Always
- [ ] Sometimes  
- [ ] Rarely

---

## 🔍 VAN Analysis for Bug Fix

This bug fix will use Memory Bank methodology:

### Initial Complexity Assessment
**Estimated Fix Complexity:**
- [ ] Level 1 (Simple) - Quick fix, minimal impact
- [ ] Level 2 (Moderate) - Multiple components affected
- [ ] Level 3 (Complex) - Significant changes required
- [ ] Level 4 (Enterprise) - System-wide impact

### Impact Analysis
**Components affected:**
<!-- List what parts of the system are impacted -->

**Dependencies involved:**
<!-- External services, libraries, or modules involved -->

**Risk assessment:**
<!-- Potential risks of fixing this bug -->

---

## 🔧 Memory Bank Workflow for Bug Fix

### Phase 1: VAN (Validation & Analysis)
- [ ] Root cause analysis completed using VAN mode prompt
- [ ] Impact assessment documented
- [ ] Fix complexity determined
- [ ] Workflow path selected

### Phase 2: PLAN (if Level 2+)
- [ ] Fix strategy planned using PLAN mode prompt
- [ ] Testing approach defined
- [ ] Rollback plan created
- [ ] Risk mitigation planned

### Phase 3: CREATIVE (if Level 3-4)
- [ ] Alternative fix approaches explored using CREATIVE mode
- [ ] Best solution selected
- [ ] Design decisions documented

### Phase 4: IMPLEMENT
- [ ] Bug fix implemented using IMPLEMENT mode prompt
- [ ] Code follows project standards
- [ ] Tests added to prevent regression
- [ ] Documentation updated

### Phase 5: REFLECT
- [ ] Fix review completed using REFLECT mode prompt
- [ ] Root cause prevention documented
- [ ] Process improvements identified

---

## 🖥️ Environment Information
**Environment where bug occurs:**
- OS: [e.g. Windows 10, macOS 12.0, Ubuntu 20.04]
- Browser: [e.g. Chrome 96, Firefox 95, Safari 15]
- Version: [e.g. v1.2.3]
- Device: [e.g. Desktop, Mobile, Tablet]

---

## 📸 Evidence
**Screenshots:**
<!-- If applicable, add screenshots to help explain the problem -->

**Console logs:**
```
Paste any relevant console output here
```

**Error messages:**
```
Paste any error messages here
```

---

## 📚 Additional Context
**Related issues:**
<!-- Link to related bugs or issues -->

**Recent changes:**
<!-- Any recent changes that might be related -->

**Workarounds:**
<!-- Any temporary workarounds found -->

---

## 🚀 Analysis Starting Point

**Suggested VAN mode analysis:**
Use the VAN mode prompt from `prompts/van_mode.md`:

```markdown
@workspace VAN MODE ANALYSIS - BUG INVESTIGATION

Please perform a comprehensive analysis of this bug and provide:

## 1. BUG IMPACT ANALYSIS
- Bug severity and scope
- Systems and components affected
- User impact assessment

## 2. COMPLEXITY ASSESSMENT
Determine the fix complexity level for: [BUG DESCRIPTION]

Current Complexity Level: [1/2/3/4]

## 3. RECOMMENDED FIX WORKFLOW
Based on complexity level, recommend development phases for bug resolution

## 4. ROOT CAUSE INVESTIGATION
- Potential root causes
- Investigation approach
- Prevention strategies
```

**Memory Bank Context:**
- [ ] Update `contexts/active_context.md` with bug fix focus
- [ ] Document investigation findings
- [ ] Follow Memory Bank quality assurance practices

---

## ✅ Verification Checklist
**Bug fix will be considered complete when:**
- [ ] Root cause identified and addressed
- [ ] Fix implemented and tested
- [ ] Regression tests added
- [ ] Documentation updated
- [ ] QA validation completed
- [ ] No new issues introduced 
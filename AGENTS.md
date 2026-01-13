# AGENTS.md

This file contains guidelines and commands for agentic coding assistants working with the ArchProAudio project.

## Project Overview

This is a **documentation-only project** for Arch Linux professional audio setup. The project consists of:
- `README.md`: Main documentation (271 lines) containing step-by-step audio setup guide
- `license.md`: Creative Commons Attribution-ShareAlike 4.0 International License
- Git repository with active maintenance

**Important**: This is NOT a software development project. No compilation, testing, or build processes are required.

## Commands

### Git Operations
```bash
# Check repository status
git status

# View recent commits
git log --oneline -10

# Pull latest changes
git pull origin main

# Add and commit changes
git add README.md
git commit -m "Update documentation"

# Push changes
git push origin main
```

### Documentation Validation
```bash
# Check markdown syntax (if markdownlint is available)
markdownlint README.md

# Check links (if available)
markdown-link-check README.md
```

## Code Style Guidelines

### Markdown Formatting
- Use standard GitHub-flavored markdown
- Hierarchical headings: H1 (#) for main title, H2 (##) for sections, H3 (###) for subsections
- Use consistent heading capitalization (Title Case for main headings)
- Include blank lines before headings

### Code Blocks
- Use shell syntax highlighting for command examples: ```shell
- Include descriptive context before code blocks
- Keep commands to single lines when possible
- Use proper package manager commands (`yay -S`, `sudo pacman -S`)

### Content Structure
- Start with title and banner image (if applicable)
- Provide clear introduction and purpose
- Use numbered steps for sequential instructions
- Include optional sections and warnings where appropriate
- Add troubleshooting tips and performance optimization sections

### Links and References
- Use descriptive link text
- Include external references with full URLs
- Cross-reference related sections within the document
- Maintain consistent link formatting

### Images and Media
- Center images using HTML `<p align="center">` tags
- Include descriptive alt text
- Use appropriate image formats (PNG for screenshots)
- Maintain consistent image sizing

## File Organization

### Current Structure
```
ArchProAudio/
├── README.md          # Main documentation
├── license.md         # License information
└── .git/             # Git repository
```

### Adding New Content
- Keep all content in README.md unless the document grows beyond 500 lines
- If splitting becomes necessary, create logical sections (e.g., `troubleshooting.md`)
- Update main README.md to reference new sections

## Content Guidelines

### Technical Accuracy
- Verify all commands work with current Arch Linux packages
- Test package names and installation procedures
- Include version-specific warnings when applicable
- Reference official Arch Wiki and documentation

### User Experience
- Provide clear step-by-step instructions
- Include both GUI and CLI alternatives where possible
- Add warnings for potentially risky operations
- Explain the purpose of each configuration change

### Maintenance
- Update package names when they change in repositories
- Add new sections for emerging technologies (e.g., PipeWire updates)
- Remove deprecated procedures and add migration notes
- Keep kernel parameter recommendations current

## Quality Assurance

### Review Checklist
- [ ] All commands are syntactically correct
- [ ] Package names exist in Arch repositories/AUR
- [ ] Links are valid and accessible
- [ ] Code blocks have proper syntax highlighting
- [ ] Images load correctly and are relevant
- [ ] Steps are in logical order
- [ ] Warnings are placed appropriately

### Testing Procedures
- Test commands on fresh Arch installation
- Verify package installation procedures
- Check configuration file paths and formats
- Validate kernel parameter recommendations

## Contributing Guidelines

### Making Changes
1. Create a new branch for significant updates
2. Test commands on current Arch Linux
3. Update relevant sections
4. Add commit messages following conventional format
5. Submit pull request for review

### Commit Message Format
```
type(scope): description

Examples:
docs(audio): update pipewire installation instructions
docs(kernel): add liquorix kernel alternative
docs(wine): update wine-staging version compatibility
```

## Tools and Dependencies

### Required Tools
- Git for version control
- Text editor with markdown support
- Arch Linux system for testing commands

### Optional Tools
- `markdownlint` for syntax checking
- `markdown-link-check` for link validation
- AUR helper (`yay` recommended) for testing package installations

## Security Considerations

- Warn users about security implications of `mitigations=off`
- Include security notes for kernel modifications
- Advise backup procedures before system changes
- Recommend reading official documentation for critical configurations

## License and Attribution

- All content is under Creative Commons Attribution-ShareAlike 4.0 International License
- Include proper attribution for referenced content
- Maintain license information in `license.md`
- Respect third-party licenses for referenced software
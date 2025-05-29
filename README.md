# Development Environment Configuration

A curated collection of development environment configurations designed for rapid setup and enhanced productivity. This repository contains shell configurations, editor settings, and development tools that can be quickly deployed on new machines.

## 🚀 Quick Start

```bash
# Clone the repository
git clone https://github.com/pieteradejong/config.git ~/config

# Navigate to shell configuration
cd ~/config/shell

# Run the installation script
chmod +x install.sh
./install.sh

# Create your private configuration
cp zshrc.secret.template ~/.zshrc.secret
# Edit ~/.zshrc.secret with your personal settings

# Reload your shell
source ~/.zshrc
```

## 📁 Repository Structure

```
config/
├── shell/
│   ├── .zshrc                    # Main zsh configuration
│   ├── zshrc.secret.template     # Template for secret settings
│   └── install.sh                # Shell setup script
├── git/
│   ├── .gitconfig               # Git global configuration
│   └── .gitignore_global        # Global gitignore patterns
├── editors/
│   ├── .vscode.config.md        # VS Code settings guide
│   └── .eslintrc.json          # ESLint configuration
├── scripts/
│   └── generate_mit_license_file.sh  # Utility scripts
├── docs/
│   └── devprocess.md           # Development workflow guide
├── LICENSE                     # MIT License
├── README.md                   # This file
└── reinstall.txt              # Reinstallation notes
```

## 🎯 Features

### Shell Environment
- **Zsh with Oh My Zsh** and Powerlevel10k theme
- **Developer-friendly aliases** for common tasks
- **Git integration** with branch and status display
- **Virtual environment** indicators
- **Secure API key management** with secret configuration files

### Git Configuration
- **Global gitignore** patterns for common development files
- **Useful git aliases** for improved workflow
- **Consistent commit** and branch naming conventions

### Editor Settings
- **VS Code configuration** guide and recommended extensions
- **ESLint rules** for JavaScript/TypeScript projects
- **Consistent code formatting** across projects

### Utility Scripts
- **MIT license generator** for new projects
- **Installation automation** scripts
- **Development workflow** helpers

## 🔧 Installation

### Prerequisites

- **Zsh shell** (macOS default, or install via package manager)
- **Git** for version control
- **Oh My Zsh** (installed automatically by the script)

### Automated Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/pieteradejong/config.git ~/config
   ```

2. **Install shell configuration:**
   ```bash
   cd ~/config/shell
   chmod +x install.sh
   ./install.sh
   ```

3. **Set up private configuration:**
   ```bash
   cp ~/config/shell/zshrc.secret.template ~/.zshrc.secret
   # Edit ~/.zshrc.secret with your personal settings
   ```

4. **Install Git configuration:**
   ```bash
   ln -sf ~/config/git/.gitconfig ~/.gitconfig
   ln -sf ~/config/git/.gitignore_global ~/.gitignore_global
   ```

5. **Reload your shell:**
   ```bash
   source ~/.zshrc
   ```

### Manual Installation

If you prefer to install components individually:

```bash
# Shell configuration only
ln -sf ~/config/shell/.zshrc ~/.zshrc

# Git configuration only  
ln -sf ~/config/git/.gitconfig ~/.gitconfig
ln -sf ~/config/git/.gitignore_global ~/.gitignore_global

# Create private configuration
cp ~/config/shell/zshrc.secret.template ~/.zshrc.secret
```

## 🔒 Security Model

### Public vs Private Configuration

This repository follows a security-first approach:

| File Type | Example | Committed? | Contains |
|-----------|---------|------------|----------|
| **Public Config** | `.zshrc` | ✅ Yes | Aliases, functions, placeholder values |
| **Secret Config** | `.zshrc.secret` | ❌ Never | API keys, personal paths, work settings |
| **Templates** | `.zshrc.secret.template` | ✅ Yes | Examples and placeholders |

### Sensitive Data Protection

- **API keys and tokens** go in `.secret` files
- **Work-specific paths** and credentials are kept secret
- **Personal information** is never committed
- **Template files** provide examples for secret configuration

### Gitignore Patterns

The repository automatically ignores:
```gitignore
*.secret
*.private
*.confidential
.env*
*.key
*.pem
*password*
*token*
*credential*
```

## ⚙️ Customization

### Adding Private Settings

Edit `~/.zshrc.secret` to add your personal configurations:

```bash
# API Keys
export OPENAI_API_KEY="your_key_here"
export GITHUB_TOKEN="your_token_here"

# Work-specific aliases
alias work-ssh='ssh user@work-server.com'
alias deploy='cd /path/to/project && ./deploy.sh'

# Personal paths
export WORK_PROJECT_PATH="/path/to/work/projects"
```

### Machine-Specific Configurations

Use hostname detection for different environments:

```bash
# In ~/.zshrc.secret
case "$(hostname)" in
    "work-laptop")
        export WORK_ENV=true
        alias vpn='sudo openconnect work-vpn.com'
        ;;
    "personal-macbook")
        export PERSONAL_ENV=true
        alias backup='rsync -av ~/Documents/ backup-server:/'
        ;;
esac
```

### Adding New Configurations

1. **Create the public configuration** file with placeholder values
2. **Add a template** file showing example private values
3. **Update the installation** script to handle the new file
4. **Document the configuration** in this README

## 🛠 Available Configurations

### Shell Aliases

| Alias | Command | Description |
|-------|---------|-------------|
| `zsrc` | `source ~/.zshrc` | Reload shell configuration |
| `dev` | `cd ~/dev` | Navigate to development directory |
| `proj` | `cd ~/dev/projects` | Navigate to projects directory |
| `diskspace` | `du -shc .??* * \| sort -hr` | Show directory sizes |
| `brewnew` | `brew update && brew upgrade...` | Update Homebrew packages |

### Useful Functions

- **`gdirs()`** - Find all git repositories recursively
- **`historyn()`** - Show recent command history
- **`emailcopy()`** - Copy email address to clipboard
- **`githubcopy()`** - Copy GitHub profile URL to clipboard

### Git Aliases

| Alias | Command | Description |
|-------|---------|-------------|
| `git st` | `git status` | Short status |
| `git co` | `git checkout` | Checkout branch |
| `git br` | `git branch` | List branches |
| `git ci` | `git commit` | Commit changes |

## 📋 Maintenance

### Updating Configurations

```bash
# Pull latest changes
cd ~/config
git pull origin main

# Reinstall shell configuration
cd ~/config/shell
./install.sh

# Reload shell
source ~/.zshrc
```

### Backing Up Current Settings

Before installation, the script automatically creates backups:

```bash
# Backups are saved to
~/.config_backup_YYYYMMDD_HHMMSS/
```

### Migrating to New Machine

1. **Clone the repository** on the new machine
2. **Run the installation** script
3. **Copy your private** configuration from the old machine:
   ```bash
   scp old-machine:~/.zshrc.secret ~/.zshrc.secret
   ```
4. **Reload the shell** configuration

## 🧪 Testing

### Verify Installation

```bash
# Test shell configuration syntax
zsh -n ~/.zshrc

# Check if private config loads
echo "Private config loaded: ${PRIVATE_CONFIG_LOADED:-No}"

# Test git configuration
git config --list --global

# Verify aliases work
which zsrc
```

### Troubleshooting

**Issue**: Shell configuration has syntax errors
```bash
# Solution: Test configuration file
zsh -n ~/.zshrc
# Fix any reported syntax errors
```

**Issue**: Private configuration not loading
```bash
# Solution: Check file exists and permissions
ls -la ~/.zshrc.secret
chmod 600 ~/.zshrc.secret
```

**Issue**: Git aliases not working
```bash
# Solution: Verify git configuration is linked
ls -la ~/.gitconfig
# Should show link to ~/config/git/.gitconfig
```

## 🤝 Contributing

### For Your Own Use

1. **Fork the repository**
2. **Customize configurations** for your needs
3. **Keep private settings** in `.local` files
4. **Share improvements** via pull requests

### Contributing Back

1. **Ensure no sensitive data** is included
2. **Test on a clean environment**
3. **Update documentation** for new features
4. **Follow existing patterns** and conventions

### Guidelines

- **Never commit** sensitive information
- **Use template files** for secret configuration examples
- **Document all changes** clearly
- **Test configurations** before submitting

## 📄 File Descriptions

### Core Configuration Files

- **`.zshrc`** - Main shell configuration with aliases and functions
- **`.gitconfig`** - Git global settings and aliases
- **`.gitignore_global`** - Global gitignore patterns for all projects
- **`.vscode.config.md`** - VS Code settings and extension recommendations

### Templates and Examples

- **`zshrc.secret.template`** - Template for secret shell configuration
- **`.eslintrc.json`** - JavaScript/TypeScript linting rules

### Utility Scripts

- **`install.sh`** - Automated installation script for shell configuration
- **`generate_mit_license_file.sh`** - MIT license generator for projects

### Documentation

- **`devprocess.md`** - Development workflow and processes
- **`reinstall.txt`** - Notes on reinstalling applications

## 📞 Support

- **Issues**: [GitHub Issues](https://github.com/pieteradejong/config/issues)
- **Discussions**: [GitHub Discussions](https://github.com/pieteradejong/config/discussions)

## 📄 License

MIT License - see [LICENSE](LICENSE) file for details.

---

**Made for developers who value productivity and clean, secure configurations.**
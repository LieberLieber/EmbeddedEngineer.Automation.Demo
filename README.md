# EmbeddedEngineer Automation Demo

[![CI/CD](https://github.com/LieberLieber/EmbeddedEngineer.Automation.Demo/actions/workflows/deploy-on-push.yml/badge.svg)](https://github.com/LieberLieber/EmbeddedEngineer.Automation.Demo/actions/workflows/deploy-on-push.yml)
[![License](https://img.shields.io/badge/License-Proprietary-red.svg)](LICENSE)

A demonstration project showcasing automated code generation and deployment using **EmbeddedEngineer Automation** from LieberLieber Software GmbH.

## 🚀 Overview

This project demonstrates how to integrate EmbeddedEngineer Automation into a CI/CD pipeline for automated model-driven development. It includes:

- **Traffic Light Example**: A complete embedded system model demonstrating state machines and code generation
- **Automated Deployment**: GitHub Actions workflow that deploys EmbeddedEngineer and runs automation
- **License Management**: Secure handling of EmbeddedEngineer licenses via GitHub secrets
- **Cross-Platform Build**: MSBuild integration for building generated C++ code

## 📋 Features

- ✅ Automated model processing and code generation
- ✅ GitHub Actions CI/CD integration
- ✅ License file management
- ✅ C++ project building with MSBuild
- ✅ Artifact publishing
- ✅ Comprehensive error handling and validation

## 🛠️ Prerequisites

- **GitHub Repository** with Actions enabled
- **EmbeddedEngineer License** (stored as `EEALICENSE` secret)
- **Windows Environment** (for C++ builds)
- **PowerShell** (for deployment scripts)

## 🚀 Quick Start

### 1. Repository Setup

```bash
git clone https://github.com/LieberLieber/EmbeddedEngineer.Automation.Demo.git
cd EmbeddedEngineer.Automation.Demo
```

### 2. GitHub Secrets Configuration

Add the following secret to your GitHub repository:

- `EEALICENSE`: Your EmbeddedEngineer Automation license string

### 3. Local Development

```powershell
# Run local deployment test
.\testlocal.ps1

# Deploy EmbeddedEngineer
.\scripts\Deploy-EmbeddedEngineer.ps1 -LicenseString "your-license-here"
```

### 4. Run Automation

```powershell
# Execute EmbeddedEngineer Automation
.\eea\EmbeddedEngineer.Automation.exe --Model .\TraficLight.github.qeax --License .\eea.lic --PackageGuid "{904EF962-C541-4627-A463-AD6F1328BFB3}"
```

## 🔧 GitHub Actions Workflow

The CI/CD pipeline automatically:

1. **Deploys EmbeddedEngineer** from Nexus repository
2. **Validates License** and creates license file
3. **Runs Model Automation** on TrafficLight model
4. **Builds Generated Code** using MSBuild with VS2022 toolset
5. **Publishes Artifacts** for download

### Workflow Triggers

- Push to `main` or `develop` branches
- Manual workflow dispatch available

### Build Configuration

- **Platform**: x64 Release
- **Toolset**: Visual Studio 2022 (v143)
- **SDK**: Latest available Windows SDK

## 📁 Project Structure

```
EmbeddedEngineer.Automation.Demo/
├── .github/
│   └── workflows/
│       └── deploy-on-push.yml          # GitHub Actions CI/CD
├── scripts/
│   └── Deploy-EmbeddedEngineer.ps1     # Deployment script
├── TrafficLight/
│   └── visualstudio/
│       ├── TrafficLights.sln           # Visual Studio solution
│       └── TrafficLights.vcxproj       # C++ project file
├── TraficLight.github.qeax             # EmbeddedEngineer model
├── license.secrete                     # License file (local)
├── testlocal.ps1                       # Local testing script
└── README.md                           # This file
```

## 🔗 Links & Resources

### LieberLieber Software
- [**Company Website**](https://www.lieberlieber.com/)
- [**EmbeddedEngineer Product**](https://www.lieberlieber.com/embedded-engineer/)
- [**Nexus Repository**](https://nexus.lieberlieber.com/)

### Documentation
- [**EmbeddedEngineer Documentation**](https://docs.lieberlieber.com/)
- [**Model-Driven Development**](https://www.lieberlieber.com/model-driven-development/)
- [**GitHub Actions**](https://docs.github.com/en/actions)

### Related Projects
- [**LieberLieber GitHub**](https://github.com/LieberLieber)
- [**Enterprise Architect Add-ins**](https://github.com/LieberLieber?tab=repositories&q=enterprise+architect)

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### Development Guidelines

- Follow PowerShell best practices
- Update documentation for new features
- Test locally before pushing
- Ensure CI/CD pipeline passes

## 📄 License

This project uses **EmbeddedEngineer Automation** which requires a valid license from LieberLieber Software GmbH. Ask sales@lieberlieber.com for a trial license. 

**Proprietary License** - All rights reserved. Contact [LieberLieber](https://www.lieberlieber.com/contact/) for licensing information.

## 🆘 Support

- **Issues**: [GitHub Issues](https://github.com/LieberLieber/EmbeddedEngineer.Automation.Demo/issues)
- **Documentation**: [LieberLieber Support](https://help.lieberlieber.com/EmbeddedEngineer/Automation.html)

## 📊 CI/CD Status

| Workflow | Status |
|----------|--------|
| Deploy on Push | ![CI/CD](https://github.com/LieberLieber/EmbeddedEngineer.Automation.Demo/actions/workflows/deploy-on-push.yml/badge.svg) |

---

**Built with ❤️ using EmbeddedEngineer Automation**

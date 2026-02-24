# kubectl-container

[![Build and Push](https://github.com/slauger/kubectl-container/actions/workflows/build.yml/badge.svg)](https://github.com/slauger/kubectl-container/actions/workflows/build.yml)

Minimal container image with `kubectl` CLI for CI/CD pipelines and automation tasks.

## Features

- 🪶 **Minimal base**: Red Hat UBI8-minimal for small image size
- 🔄 **Auto-updated**: Daily builds with latest kubectl patch versions via Renovate
- 🏗️ **Multi-arch**: Supports `linux/amd64` and `linux/arm64`
- 🤖 **Automated**: GitHub Actions + Renovate auto-merge for hands-free maintenance

## Usage

### Pull from GitHub Container Registry

```bash
docker pull ghcr.io/slauger/kubectl-container:latest
```

### Use in CI/CD

```yaml
# GitHub Actions example
jobs:
  deploy:
    runs-on: ubuntu-latest
    container:
      image: ghcr.io/slauger/kubectl-container:latest
    steps:
      - name: Deploy to Kubernetes
        run: |
          kubectl apply -f deployment.yaml
```

### Interactive usage

```bash
docker run --rm -it ghcr.io/slauger/kubectl-container:latest kubectl version --client
```

## Available Tags

- `latest` - Latest build from main branch
- `main-<sha>` - Specific commit SHA
- `YYYYMMDD` - Daily scheduled builds

## Configuration

The kubectl version is defined in the `Dockerfile` via:

```dockerfile
ARG KUBECTL_VERSION=v1.23.4
```

Renovate automatically opens PRs to update kubectl to the latest stable version.

## Maintenance

This repository is designed for **zero-touch maintenance**:

- ✅ **Automated builds**: Daily schedule + on every push
- ✅ **Auto-merge**: Minor/patch updates are automatically merged
- ✅ **Multi-arch**: GitHub Actions builds for AMD64 and ARM64
- ✅ **Major updates**: Require manual review for safety

### Renovate Configuration

- **Auto-merge enabled** for:
  - Minor kubectl updates (e.g., v1.28.0 → v1.29.0)
  - Patch kubectl updates (e.g., v1.28.0 → v1.28.1)
  - Docker base image updates
  - GitHub Actions updates

- **Manual review required** for:
  - Major kubectl updates (e.g., v1.x → v2.0)

## License

This project is open source. See the repository for details.

## Contributing

This repository is set up for automated maintenance. For significant changes, please open an issue first.

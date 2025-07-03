# Foundation Of Cuda

# System Requirements

Hardware Requirements:
- NVIDIA GPU: GTX 1060 or newer (Compute Capability 6.0+)
- RAM: 8GB minimum, 16GB+ recommended
- Storage: 10GB free space for tools and samples

Software Prerequisites:
- Operating System: Linux (Ubuntu 20.04+ recommended), Windows 10/11, or macOS
- CUDA Toolkit: Version 12.0 or newer
- Compiler: GCC 9+ (Linux), Visual Studio 2019+ (Windows)
- Python: 3.8+ with PyTorch (optional but recommended)

# Installation Guide
Since I'm using a windows machine
```bash
# Enable WSL and required features
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform

# Install Ubuntu from Microsoft Store
wsl --install -d Ubuntu-20.04

# Continue with Linux setup inside WSL
```
Verification:
```bash
# Test CUDA installation
nvcc --version
nvidia-smi

# Compile and run test program
nvcc -o test_cuda test.cu
./test_cuda
```

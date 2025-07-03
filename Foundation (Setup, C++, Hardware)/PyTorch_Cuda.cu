import torch

# Check CUDA availability
print(f"CUDA available: {torch.cuda.is_available()}")
print(f"CUDA version: {torch.version.cuda}")
print(f"Device count: {torch.cuda.device_count()}")

# Create tensors on GPU
x = torch.randn(1000, 1000, device='cuda')
y = torch.randn(1000, 1000, device='cuda')

# GPU matrix multiplication
result = torch.mm(x, y)
print(f"Result shape: {result.shape}")

# Compilation and Optimization

@torch.compile
def optimized_function(x, y):
    return torch.mm(x, y) + torch.sin(x)

# 30% speedup out of the box
x = torch.randn(1000, 1000, device='cuda')
y = torch.randn(1000, 1000, device='cuda')
result = optimized_function(x, y)

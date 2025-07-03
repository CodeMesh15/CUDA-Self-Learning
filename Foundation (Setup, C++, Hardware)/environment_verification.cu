// hello_cuda.cu
#include <cuda_runtime.h>
#include <iostream>

__global__ void hello_kernel() {
    int idx = blockIdx.x * blockDim.x + threadIdx.x;
    printf("Hello from thread %d\n", idx);
}

int main() {
    // Launch kernel with 1 block, 10 threads
    hello_kernel<<<1, 10>>>();
    
    // Wait for GPU to finish
    cudaDeviceSynchronize();
    
    std::cout << "CUDA setup successful!" << std::endl;
    return 0;
}

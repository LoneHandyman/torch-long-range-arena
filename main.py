import triton
import triton.language as tl
import torch

if torch.cuda.is_available():
    num_gpus = torch.cuda.device_count()

    print("Number of GPUs detected:", num_gpus)
    for i in range(num_gpus):
        print("GPU", i, ":", torch.cuda.get_device_name(i))
else:
    print("No CUDA-enabled GPUs detected.")

# cuda

Docker images with CUDA 10.2 for building Tensorflow

Includes
* Bazel 3.1.0
* OpenJDK 11

Available versions:
```
FROM shvid/cuda-dev:10.2-bazel-3.1.0-cp36-ubuntu18.04
```

# Run

```
docker run -it --rm --runtime=nvidia shvid/cuda-dev:10.2-bazel-3.1.0-cp36-ubuntu18.04 nvidia-smi
```

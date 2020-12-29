FROM shvid/cuda:10.2-devel-cp36-ubuntu18.04

RUN apt-get update && \
    apt-get install -y curl sudo g++ unzip zip python-dev && \
    curl https://bazel.build/bazel-release.pub.gpg | sudo apt-key add - && \
    echo "deb [arch=amd64] https://storage.googleapis.com/bazel-apt stable jdk1.8" | sudo tee /etc/apt/sources.list.d/bazel.list && \
    apt update && apt install bazel-3.1.0 && \
    ln -s /usr/bin/bazel-3.1.0 /usr/bin/bazel && \
    apt install openjdk-11-jdk

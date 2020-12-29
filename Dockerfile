FROM shvid/cuda:10.2-devel-cp36-ubuntu18.04

RUN apt-get update && \
    apt-get install -y curl sudo g++ unzip zip python-dev openjdk-11-jdk && \
    curl https://bazel.build/bazel-release.pub.gpg | sudo apt-key add - && \
    echo "deb [arch=amd64] https://storage.googleapis.com/bazel-apt stable jdk1.8" | tee /etc/apt/sources.list.d/bazel.list && \
    apt-get update && apt-get install -y bazel-3.1.0 && \
    ln -s /usr/bin/bazel-3.1.0 /usr/bin/bazel

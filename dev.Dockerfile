from skeggib/cpp_dev

# bazel prerequisites
run apt update
run apt install -y apt-transport-https curl gnupg

# # install bazel
run curl -fsSL https://bazel.build/bazel-release.pub.gpg | gpg --dearmor > bazel-archive-keyring.gpg
run mv bazel-archive-keyring.gpg /usr/share/keyrings
run echo "deb [arch=amd64 signed-by=/usr/share/keyrings/bazel-archive-keyring.gpg] https://storage.googleapis.com/bazel-apt stable jdk1.8" | tee /etc/apt/sources.list.d/bazel.list
run apt update
run apt install -y bazel

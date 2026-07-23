# typed: false
# frozen_string_literal: true

# RLViz native CLI release.
class Rlviz < Formula
  desc "Inspect agent rollouts locally"
  homepage "https://github.com/TheSnakeFang/rlviz"
  version "0.3.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheSnakeFang/rlviz/releases/download/v0.3.1/rlviz_0.3.1_darwin_arm64.tar.gz"
      sha256 "30c4d9f0bc9fa9784931f76d14c22a89e8b6392c5f0d569380ee895eacb1137c"
    else
      url "https://github.com/TheSnakeFang/rlviz/releases/download/v0.3.1/rlviz_0.3.1_darwin_x86_64.tar.gz"
      sha256 "8db725985a8db866937aaef536cdc8ece93fa48d902cd1b23c029b1447fa7e88"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheSnakeFang/rlviz/releases/download/v0.3.1/rlviz_0.3.1_linux_arm64.tar.gz"
      sha256 "81b5fbd89b183b08734111e1bc31ec2e22364107df2c9633c7f6a2766fb697d2"
    else
      url "https://github.com/TheSnakeFang/rlviz/releases/download/v0.3.1/rlviz_0.3.1_linux_x86_64.tar.gz"
      sha256 "1fa19a70bb4ccca5adb284696ee9e2a0b13e2056db7fdd8c6fb41389b2ec3fda"
    end
  end

  def install
    bin.install "rlviz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rlviz version")
  end
end

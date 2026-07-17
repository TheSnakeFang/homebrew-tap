# typed: false
# frozen_string_literal: true

# RLViz native CLI release.
class Rlviz < Formula
  desc "Visualize and compare agent rollouts"
  homepage "https://github.com/unlatch-ai/rlviz"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/unlatch-ai/rlviz/releases/download/v0.1.0/rlviz_0.1.0_darwin_arm64.tar.gz"
      sha256 "345b561ab3e4b66ee020b0ef613dc49c3d01b8dde790f739816e3278e0f3aa0a"
    else
      url "https://github.com/unlatch-ai/rlviz/releases/download/v0.1.0/rlviz_0.1.0_darwin_x86_64.tar.gz"
      sha256 "9affd2a9667eea7bcd132fec0d237bce8f736564923fb32dcba10a5a2ce51d5e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/unlatch-ai/rlviz/releases/download/v0.1.0/rlviz_0.1.0_linux_arm64.tar.gz"
      sha256 "839f4ca224bf0e161bc4471baa1be08416523957cd719c9e4c4ce323a5fff234"
    else
      url "https://github.com/unlatch-ai/rlviz/releases/download/v0.1.0/rlviz_0.1.0_linux_x86_64.tar.gz"
      sha256 "3f6cc3ce021192eec22388236bef7bb4f20df795aab0de7024a7b66065c43ad0"
    end
  end

  def install
    bin.install "rlviz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rlviz version")
  end
end

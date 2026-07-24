# typed: false
# frozen_string_literal: true

# RLViz native CLI release.
class Rlviz < Formula
  desc "Inspect agent rollouts locally"
  homepage "https://github.com/TheSnakeFang/rlviz"
  version "0.3.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheSnakeFang/rlviz/releases/download/v0.3.4/rlviz_0.3.4_darwin_arm64.tar.gz"
      sha256 "4813d6f8849124a9a28cd69ff68a1b9605db14672e689870ce527353c8ea378f"
    else
      url "https://github.com/TheSnakeFang/rlviz/releases/download/v0.3.4/rlviz_0.3.4_darwin_x86_64.tar.gz"
      sha256 "79a9ef5e5a192c0009db4bc886727df3ea9c077d3a8046dbac45b95692c92469"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheSnakeFang/rlviz/releases/download/v0.3.4/rlviz_0.3.4_linux_arm64.tar.gz"
      sha256 "69577116c5acb0e92a131cd4d484a6d47f00c6a8952b1ec739dc67c2c323d147"
    else
      url "https://github.com/TheSnakeFang/rlviz/releases/download/v0.3.4/rlviz_0.3.4_linux_x86_64.tar.gz"
      sha256 "a33ef514df6b6667292e61c8fa6874046a371aefaeaafbc4308f87053c02d2bb"
    end
  end

  def install
    bin.install "rlviz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rlviz version")
  end
end

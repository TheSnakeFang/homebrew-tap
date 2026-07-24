# typed: false
# frozen_string_literal: true

# RLViz native CLI release.
class Rlviz < Formula
  desc "Inspect agent rollouts locally"
  homepage "https://github.com/TheSnakeFang/rlviz"
  version "0.3.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheSnakeFang/rlviz/releases/download/v0.3.5/rlviz_0.3.5_darwin_arm64.tar.gz"
      sha256 "1226cad78c5d064fbc4bcd07325f1eeb2ceca83a618875f236b8ddfed97da5a4"
    else
      url "https://github.com/TheSnakeFang/rlviz/releases/download/v0.3.5/rlviz_0.3.5_darwin_x86_64.tar.gz"
      sha256 "508357bb8fa10168a54f51458c523041aacf1bf0f3f08321c4822e3de406ac81"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheSnakeFang/rlviz/releases/download/v0.3.5/rlviz_0.3.5_linux_arm64.tar.gz"
      sha256 "a28c47cd78362c00b15ec0b94d0815b4b09d06c7773dd90e601bbaff5458292d"
    else
      url "https://github.com/TheSnakeFang/rlviz/releases/download/v0.3.5/rlviz_0.3.5_linux_x86_64.tar.gz"
      sha256 "4ec105e0d3a76f8c21042758360a0e04f5207f233f8199220492a0537dfaba55"
    end
  end

  def install
    bin.install "rlviz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rlviz version")
  end
end

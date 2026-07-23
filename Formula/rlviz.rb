# typed: false
# frozen_string_literal: true

# RLViz native CLI release.
class Rlviz < Formula
  desc "Inspect agent rollouts locally"
  homepage "https://github.com/TheSnakeFang/rlviz"
  version "0.3.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheSnakeFang/rlviz/releases/download/v0.3.2/rlviz_0.3.2_darwin_arm64.tar.gz"
      sha256 "b00b0398ba2dbaebfe4e294ce94edb5885c0e46c8c67451f228fb92da4a1d53f"
    else
      url "https://github.com/TheSnakeFang/rlviz/releases/download/v0.3.2/rlviz_0.3.2_darwin_x86_64.tar.gz"
      sha256 "9d081737c0ab18350285e5d59ba0cba62496a5a14fe936df95ad30fa53aba8a8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheSnakeFang/rlviz/releases/download/v0.3.2/rlviz_0.3.2_linux_arm64.tar.gz"
      sha256 "7a89d2f1f061040347780d4526f3430ac1843b22ba306c3fe8c45c647a7b8d4a"
    else
      url "https://github.com/TheSnakeFang/rlviz/releases/download/v0.3.2/rlviz_0.3.2_linux_x86_64.tar.gz"
      sha256 "483cf43031843b1d396e7b87b0d5a1dce3814970a70205b62a7fec409044bb46"
    end
  end

  def install
    bin.install "rlviz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rlviz version")
  end
end

# typed: false
# frozen_string_literal: true

# RLViz native CLI release.
class Rlviz < Formula
  desc "Visualize and compare agent rollouts"
  homepage "https://github.com/TheSnakeFang/rlviz"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheSnakeFang/rlviz/releases/download/v0.2.0/rlviz_0.2.0_darwin_arm64.tar.gz"
      sha256 "1d9d419524bcf5e78e32b731d0ee2f939947273d0e5216872a92f42f989c918f"
    else
      url "https://github.com/TheSnakeFang/rlviz/releases/download/v0.2.0/rlviz_0.2.0_darwin_x86_64.tar.gz"
      sha256 "fc09588bc2ff0b83fd445f6ca909d490f199e8c06a7c373c52102cf211c67afc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheSnakeFang/rlviz/releases/download/v0.2.0/rlviz_0.2.0_linux_arm64.tar.gz"
      sha256 "2ebf85ddf958469cace7611ca4566671a1ad842ff5027a39dcc6d2b61a04d7cc"
    else
      url "https://github.com/TheSnakeFang/rlviz/releases/download/v0.2.0/rlviz_0.2.0_linux_x86_64.tar.gz"
      sha256 "53b28693334df8f73d47873099cfc90623d6336ff95633b02d8c1799ec0bca66"
    end
  end

  def install
    bin.install "rlviz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rlviz version")
  end
end

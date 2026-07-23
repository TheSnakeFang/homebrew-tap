# typed: false
# frozen_string_literal: true

# RLViz native CLI release.
class Rlviz < Formula
  desc "Inspect agent rollouts locally"
  homepage "https://github.com/TheSnakeFang/rlviz"
  version "0.3.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheSnakeFang/rlviz/releases/download/v0.3.3/rlviz_0.3.3_darwin_arm64.tar.gz"
      sha256 "76bfd5ee07d62a38ade90158cf4632904043b28779b6c66f71414c1f262c22ec"
    else
      url "https://github.com/TheSnakeFang/rlviz/releases/download/v0.3.3/rlviz_0.3.3_darwin_x86_64.tar.gz"
      sha256 "867ab008fb59545b6430792237fc06a0f50941b94abb4e6bde06f571e0f2a8af"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheSnakeFang/rlviz/releases/download/v0.3.3/rlviz_0.3.3_linux_arm64.tar.gz"
      sha256 "0eb5b55b506bfdedd3c6bac79c97063cddfd8c62562a3c966dddc96d2f909213"
    else
      url "https://github.com/TheSnakeFang/rlviz/releases/download/v0.3.3/rlviz_0.3.3_linux_x86_64.tar.gz"
      sha256 "dd158a9fe151bf068477512523d96028e8af719efc398d10b8cfba8ee416421a"
    end
  end

  def install
    bin.install "rlviz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rlviz version")
  end
end

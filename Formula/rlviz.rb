# typed: false
# frozen_string_literal: true

# RLViz native CLI release.
class Rlviz < Formula
  desc "Inspect agent rollouts locally"
  homepage "https://github.com/TheSnakeFang/rlviz"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheSnakeFang/rlviz/releases/download/v0.3.0/rlviz_0.3.0_darwin_arm64.tar.gz"
      sha256 "63b2c51eb14cff3303a571aa3364034193eb98a486030aa78deb00a387df0476"
    else
      url "https://github.com/TheSnakeFang/rlviz/releases/download/v0.3.0/rlviz_0.3.0_darwin_x86_64.tar.gz"
      sha256 "aa012775be3e7a9df560ba4f698b9016d818429c67a723ce8d7111a5fbc57d73"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheSnakeFang/rlviz/releases/download/v0.3.0/rlviz_0.3.0_linux_arm64.tar.gz"
      sha256 "bb41953c4720f74401d8e97090645251bc48fb837155004cf804172fce472ca7"
    else
      url "https://github.com/TheSnakeFang/rlviz/releases/download/v0.3.0/rlviz_0.3.0_linux_x86_64.tar.gz"
      sha256 "b56a2df6102cf6ee82f533f8b85a2910e0df19ccf9dc85a6f0d5dfbd8395f7d3"
    end
  end

  def install
    bin.install "rlviz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rlviz version")
  end
end

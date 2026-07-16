# typed: false
# frozen_string_literal: true

# RolloutViz native CLI release.
class Rolloutviz < Formula
  desc "Visualize and compare agent rollouts"
  homepage "https://github.com/unlatch-ai/rolloutviz"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/unlatch-ai/rolloutviz/releases/download/v0.1.0/rolloutviz_0.1.0_darwin_arm64.tar.gz"
      sha256 "8204e96704a8f944621558632565f0dcaf8ff5596e45e70e726f07a7923252c9"
    else
      url "https://github.com/unlatch-ai/rolloutviz/releases/download/v0.1.0/rolloutviz_0.1.0_darwin_x86_64.tar.gz"
      sha256 "81506ccd4caaf092bdc5a8687313dd43615b4f13228956a39f52ea70dd730b43"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/unlatch-ai/rolloutviz/releases/download/v0.1.0/rolloutviz_0.1.0_linux_arm64.tar.gz"
      sha256 "73c5b5dee3b4e33655d4e860f8abf935680295e992cf26b1705e723355075395"
    else
      url "https://github.com/unlatch-ai/rolloutviz/releases/download/v0.1.0/rolloutviz_0.1.0_linux_x86_64.tar.gz"
      sha256 "d4494e7290cf529db1c965c5ef6b748b419f0a2556bdd899e837c704e7e70bd4"
    end
  end

  def install
    bin.install "rlviz"
    bin.install_symlink "rlviz" => "rolloutviz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rlviz version")
  end
end

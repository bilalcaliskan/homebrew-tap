# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OreillyTrial < Formula
  desc "oreilly-trial creates a trial Oreilly account for 10 days"
  homepage "https://github.com/bilalcaliskan/oreilly-trial"
  version "0.1.64"
  license "apache-2.0"

  on_macos do
    url "https://github.com/bilalcaliskan/oreilly-trial/releases/download/v0.1.64/oreilly-trial_0.1.64_darwin_x86_64.tar.gz"
    sha256 "2f8c9cc38e0245f59a91c40b684ae1d3b1e606625d76042446106b322ce87bcc"

    def install
      bin.install "oreilly-trial"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the OreillyTrial
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bilalcaliskan/oreilly-trial/releases/download/v0.1.64/oreilly-trial_0.1.64_linux_x86_64.tar.gz"
      sha256 "c337ae96cf1d0b301a0df8d393510ed91b025a38bb12c1094317169f33269278"

      def install
        bin.install "oreilly-trial"
      end
    end
  end
end

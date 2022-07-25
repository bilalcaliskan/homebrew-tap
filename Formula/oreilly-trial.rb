# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OreillyTrial < Formula
  desc "oreilly-trial creates a trial Oreilly account for 10 days"
  homepage "https://github.com/bilalcaliskan/oreilly-trial"
  version "0.1.79"
  license "apache-2.0"

  on_macos do
    url "https://github.com/bilalcaliskan/oreilly-trial/releases/download/v0.1.79/oreilly-trial_0.1.79_darwin_x86_64.tar.gz"
    sha256 "ad419785d8aaf328ff50fb3ec892566ca2d1eba4c3923a79779bbc6c5d5cef79"

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
      url "https://github.com/bilalcaliskan/oreilly-trial/releases/download/v0.1.79/oreilly-trial_0.1.79_linux_x86_64.tar.gz"
      sha256 "41482ce0ef170c4ce1f59142b2248c68d40713ae6d97e21bd1f6aaaecafa32a8"

      def install
        bin.install "oreilly-trial"
      end
    end
  end
end

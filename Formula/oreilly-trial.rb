# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OreillyTrial < Formula
  desc "oreilly-trial creates a trial Oreilly account for 10 days"
  homepage "https://github.com/bilalcaliskan/oreilly-trial"
  version "0.1.81"
  license "apache-2.0"

  on_macos do
    url "https://github.com/bilalcaliskan/oreilly-trial/releases/download/v0.1.81/oreilly-trial_0.1.81_darwin_x86_64.tar.gz"
    sha256 "6e677f7dec398e16c94da5f4fd424c791a86808bf0bc5dd2689e8d0657da02fb"

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
      url "https://github.com/bilalcaliskan/oreilly-trial/releases/download/v0.1.81/oreilly-trial_0.1.81_linux_x86_64.tar.gz"
      sha256 "f615ef173d4863521ce5f5d90cd863c4e3b1bd8004cc08042a9945d9bbafbdb6"

      def install
        bin.install "oreilly-trial"
      end
    end
  end
end

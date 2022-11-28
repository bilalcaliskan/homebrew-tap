# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OreillyTrial < Formula
  desc "oreilly-trial creates a trial Oreilly account for 10 days"
  homepage "https://github.com/bilalcaliskan/oreilly-trial"
  version "2.1.13"
  license "apache-2.0"

  on_macos do
    url "https://github.com/bilalcaliskan/oreilly-trial/releases/download/v2.1.13/oreilly-trial_2.1.13_darwin_x86_64.tar.gz"
    sha256 "e0fe5e012ab47512a0f3caa1c6fa3ca0328ed8b3cd8ed402c2b8189edac412f5"

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
      url "https://github.com/bilalcaliskan/oreilly-trial/releases/download/v2.1.13/oreilly-trial_2.1.13_linux_x86_64.tar.gz"
      sha256 "62e5faeb96a4eea31b5ceb9b008a3f9ebb6c3b5321886d34d150d8fb4c0efde2"

      def install
        bin.install "oreilly-trial"
      end
    end
  end
end

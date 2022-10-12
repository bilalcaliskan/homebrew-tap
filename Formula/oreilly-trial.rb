# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OreillyTrial < Formula
  desc "oreilly-trial creates a trial Oreilly account for 10 days"
  homepage "https://github.com/bilalcaliskan/oreilly-trial"
  version "2.1.0"
  license "apache-2.0"

  on_macos do
    url "https://github.com/bilalcaliskan/oreilly-trial/releases/download/v2.1.0/oreilly-trial_2.1.0_darwin_x86_64.tar.gz"
    sha256 "35016f53f6fbafcd3deef7ce60d91aa392b364aafbf10d3bab97e84335caf9b2"

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
      url "https://github.com/bilalcaliskan/oreilly-trial/releases/download/v2.1.0/oreilly-trial_2.1.0_linux_x86_64.tar.gz"
      sha256 "60ed5fbf610f4e5a73a2b5fd10934509f564dbe339f749c31a2067a7de34e99f"

      def install
        bin.install "oreilly-trial"
      end
    end
  end
end

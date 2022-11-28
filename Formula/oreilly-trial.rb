# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OreillyTrial < Formula
  desc "oreilly-trial creates a trial Oreilly account for 10 days"
  homepage "https://github.com/bilalcaliskan/oreilly-trial"
  version "2.1.14"
  license "apache-2.0"

  on_macos do
    url "https://github.com/bilalcaliskan/oreilly-trial/releases/download/v2.1.14/oreilly-trial_2.1.14_darwin_x86_64.tar.gz"
    sha256 "cb2e36c49305e5e6d3343d107dd161ba28fc07a6fbe0b21b43a2e1bcc3055d27"

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
      url "https://github.com/bilalcaliskan/oreilly-trial/releases/download/v2.1.14/oreilly-trial_2.1.14_linux_x86_64.tar.gz"
      sha256 "2268c3b924f4f27accf648137fed095b49e3b0a71fcd78aab1f80de798e928dd"

      def install
        bin.install "oreilly-trial"
      end
    end
  end
end

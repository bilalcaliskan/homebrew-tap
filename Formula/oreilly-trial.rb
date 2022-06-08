# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OreillyTrial < Formula
  desc "oreilly-trial creates a trial Oreilly account for 10 days"
  homepage "https://github.com/bilalcaliskan/oreilly-trial"
  version "0.1.73"
  license "apache-2.0"

  on_macos do
    url "https://github.com/bilalcaliskan/oreilly-trial/releases/download/v0.1.73/oreilly-trial_0.1.73_darwin_x86_64.tar.gz"
    sha256 "7f7554ebd7b8acbb6339e6185f0970bc6b8a689cf4d4e2b33fb08e74c63e1d31"

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
      url "https://github.com/bilalcaliskan/oreilly-trial/releases/download/v0.1.73/oreilly-trial_0.1.73_linux_x86_64.tar.gz"
      sha256 "6726682b3fabbc8ffd256474929d026e9e50d61d822063d7e6b45b42dda21499"

      def install
        bin.install "oreilly-trial"
      end
    end
  end
end

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OreillyTrial < Formula
  desc "oreilly-trial creates a trial Oreilly account for 10 days"
  homepage "https://github.com/bilalcaliskan/oreilly-trial"
  version "0.1.67"
  license "apache-2.0"

  on_macos do
    url "https://github.com/bilalcaliskan/oreilly-trial/releases/download/v0.1.67/oreilly-trial_0.1.67_darwin_x86_64.tar.gz"
    sha256 "9d630b5e55c0a322a0be0a15def72cf17a0514434c1dc9ce0c0fe2a8144a210e"

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
      url "https://github.com/bilalcaliskan/oreilly-trial/releases/download/v0.1.67/oreilly-trial_0.1.67_linux_x86_64.tar.gz"
      sha256 "f1296db5e71d845a653fe67d4caf995dad1ec38bc92a850779844dd8c75e4bf8"

      def install
        bin.install "oreilly-trial"
      end
    end
  end
end

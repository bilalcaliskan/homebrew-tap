# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OreillyTrial < Formula
  desc "oreilly-trial creates a trial Oreilly account for 10 days"
  homepage "https://github.com/bilalcaliskan/oreilly-trial"
  version "2.2.14"
  license "apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bilalcaliskan/oreilly-trial/releases/download/v2.2.14/oreilly-trial_2.2.14_darwin_arm64.tar.gz"
      sha256 "630fd5c9bacdcd7927ce76f83eb1f42eedbc03e367941ad729a049dca857070c"

      def install
        bin.install "oreilly-trial"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bilalcaliskan/oreilly-trial/releases/download/v2.2.14/oreilly-trial_2.2.14_darwin_amd64.tar.gz"
      sha256 "17cd1477ac12c5bc9062a3701fc53edd975bbfded3ec00db17cff4c1f8b4802c"

      def install
        bin.install "oreilly-trial"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bilalcaliskan/oreilly-trial/releases/download/v2.2.14/oreilly-trial_2.2.14_linux_arm64.tar.gz"
      sha256 "29b6bea70befed9a4cb62daa64ff6e76a5b456d450d17e48e3619c3914a36f84"

      def install
        bin.install "oreilly-trial"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bilalcaliskan/oreilly-trial/releases/download/v2.2.14/oreilly-trial_2.2.14_linux_amd64.tar.gz"
      sha256 "95a9a297d01e12e799c40f96b75fbea167de3e8be171372de0234a930a744271"

      def install
        bin.install "oreilly-trial"
      end
    end
  end
end

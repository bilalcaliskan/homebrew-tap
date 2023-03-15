# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class S3Cleaner < Formula
  desc "s3-cleaner does something"
  homepage "https://github.com/bilalcaliskan/s3-cleaner"
  version "0.2.1"
  license "apache-2.0"

  on_macos do
    url "https://github.com/bilalcaliskan/s3-cleaner/releases/download/v0.2.1/s3-cleaner_0.2.1_darwin_x86_64.tar.gz"
    sha256 "7fd3288ed9f07fc1dacb04ac6e72079ca070af0533fe86c997e818e65d211ce3"

    def install
      bin.install "s3-cleaner"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the S3Cleaner
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bilalcaliskan/s3-cleaner/releases/download/v0.2.1/s3-cleaner_0.2.1_linux_x86_64.tar.gz"
      sha256 "c14d3eb4f7614d419a31ba7ecf2e9c731bb646bbf722f24a87d93d0e2b48c998"

      def install
        bin.install "s3-cleaner"
      end
    end
  end
end

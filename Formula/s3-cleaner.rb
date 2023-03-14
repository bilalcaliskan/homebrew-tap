# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class S3Cleaner < Formula
  desc "s3-cleaner does something"
  homepage "https://github.com/bilalcaliskan/s3-cleaner"
  version "0.2.0"
  license "apache-2.0"

  on_macos do
    url "https://github.com/bilalcaliskan/s3-cleaner/releases/download/v0.2.0/s3-cleaner_0.2.0_darwin_x86_64.tar.gz"
    sha256 "bd59bb3a01ffe8e2c13193a94544367324ededb9b979de6e73617f1fd4544e7c"

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
      url "https://github.com/bilalcaliskan/s3-cleaner/releases/download/v0.2.0/s3-cleaner_0.2.0_linux_x86_64.tar.gz"
      sha256 "8de8d24e5c3a9f2bca5f65e549e7c27b09d6746bb2d17bd7629515944fef9d23"

      def install
        bin.install "s3-cleaner"
      end
    end
  end
end

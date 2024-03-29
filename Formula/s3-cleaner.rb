# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class S3Cleaner < Formula
  desc "s3-cleaner does something"
  homepage "https://github.com/bilalcaliskan/s3-cleaner"
  version "0.3.6"
  license "apache-2.0"

  on_macos do
    url "https://github.com/bilalcaliskan/s3-cleaner/releases/download/v0.3.6/s3-cleaner_0.3.6_darwin_x86_64.tar.gz"
    sha256 "795a618c65108e5391ba08b1fa2e3c9f0de8c5b371d4a9e86ee1894248ecec28"

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
      url "https://github.com/bilalcaliskan/s3-cleaner/releases/download/v0.3.6/s3-cleaner_0.3.6_linux_x86_64.tar.gz"
      sha256 "93ee2e09bca74e51a66a4b2c014b7e82173672e8d8d88e7e41541e4b5e2c72a5"

      def install
        bin.install "s3-cleaner"
      end
    end
  end
end

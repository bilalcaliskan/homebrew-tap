# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class S3Manager < Formula
  desc "s3-manager is a tool written with Golang that helps you take the various discovery/management related actions on your target AWS S3 bucket."
  homepage "https://github.com/bilalcaliskan/s3-manager"
  version "1.0.14"
  license "apache-2.0"

  on_macos do
    url "https://github.com/bilalcaliskan/s3-manager/releases/download/v1.0.14/s3-manager_1.0.14_darwin_x86_64.tar.gz"
    sha256 "f6c89dfda30fbb1883902b1df0bdf28266c465f01e3de5d56eefb15459cb75ae"

    def install
      bin.install "s3-manager"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the S3Manager
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bilalcaliskan/s3-manager/releases/download/v1.0.14/s3-manager_1.0.14_linux_x86_64.tar.gz"
      sha256 "7013774be49e9153b2c135dd5374ef214b41b6db563a06f0e4f4a65ac29ac6a3"

      def install
        bin.install "s3-manager"
      end
    end
  end
end

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class S3Manager < Formula
  desc "s3-manager is a tool written with Golang that helps you take the various discovery/management related actions on your target AWS S3 bucket."
  homepage "https://github.com/bilalcaliskan/s3-manager"
  version "3.0.6"
  license "apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bilalcaliskan/s3-manager/releases/download/v3.0.6/s3-manager_3.0.6_darwin_arm64.tar.gz"
      sha256 "9be1ba05d4a1b858b75a3abe6bb822eb131af7cd62786eea161247ae1b334362"

      def install
        bin.install "s3-manager"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bilalcaliskan/s3-manager/releases/download/v3.0.6/s3-manager_3.0.6_darwin_amd64.tar.gz"
      sha256 "9a181ecaaaf93f0fb5c8664d464b930a8864ee2b78b916da0556f3ddcc2d3699"

      def install
        bin.install "s3-manager"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bilalcaliskan/s3-manager/releases/download/v3.0.6/s3-manager_3.0.6_linux_arm64.tar.gz"
      sha256 "7a3b02a0e721b3fab27e92b656eda6b9eeb80e2d9daec4a69cae6593f4f20e62"

      def install
        bin.install "s3-manager"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bilalcaliskan/s3-manager/releases/download/v3.0.6/s3-manager_3.0.6_linux_amd64.tar.gz"
      sha256 "5b18a6abf6998a3ca2a23be2d5a4aed0cfdac34d5ea56f681e109e3425a57e75"

      def install
        bin.install "s3-manager"
      end
    end
  end
end

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class S3Manager < Formula
  desc "s3-manager is a tool written with Golang that helps you take the various discovery/management related actions on your target AWS S3 bucket."
  homepage "https://github.com/bilalcaliskan/s3-manager"
  version "3.0.1"
  license "apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bilalcaliskan/s3-manager/releases/download/v3.0.1/s3-manager_3.0.1_darwin_arm64.tar.gz"
      sha256 "d2716f952de8fc2a9107d2455810e62eb522dd12bd8430ef2424ffabf5088d99"

      def install
        bin.install "s3-manager"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bilalcaliskan/s3-manager/releases/download/v3.0.1/s3-manager_3.0.1_darwin_amd64.tar.gz"
      sha256 "814421fc68e4fdda22ee131f6d5a28336dff9721e013e34d93f36ab68a50c075"

      def install
        bin.install "s3-manager"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bilalcaliskan/s3-manager/releases/download/v3.0.1/s3-manager_3.0.1_linux_arm64.tar.gz"
      sha256 "1b8b1884d71c4df6274ef77008444bb8e4d53a0f121e34f7cabd3f6ea365acc5"

      def install
        bin.install "s3-manager"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bilalcaliskan/s3-manager/releases/download/v3.0.1/s3-manager_3.0.1_linux_amd64.tar.gz"
      sha256 "1a4c83c0bbedf781e7911cf7da6d407c6b9409fd2987afc7631c4e10e7feef2e"

      def install
        bin.install "s3-manager"
      end
    end
  end
end

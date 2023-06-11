# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class S3Manager < Formula
  desc "s3-manager does something"
  homepage "https://github.com/bilalcaliskan/s3-manager"
  version "0.0.11"
  license "apache-2.0"

  on_macos do
    url "https://github.com/bilalcaliskan/s3-manager/releases/download/v0.0.11/s3-manager_0.0.11_darwin_x86_64.tar.gz"
    sha256 "6047de4d364eb6563496b23f0d6339600e7104458d0eab6d3b818c1a940e0e95"

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
      url "https://github.com/bilalcaliskan/s3-manager/releases/download/v0.0.11/s3-manager_0.0.11_linux_x86_64.tar.gz"
      sha256 "0a0f2dedb946b8ed7453c3a92442b5350ea06b9f993f57cde33d071efc46f917"

      def install
        bin.install "s3-manager"
      end
    end
  end
end

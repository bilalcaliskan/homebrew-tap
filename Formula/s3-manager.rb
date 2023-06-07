# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class S3Manager < Formula
  desc "s3-manager does something"
  homepage "https://github.com/bilalcaliskan/s3-manager"
  version "0.0.7"
  license "apache-2.0"

  on_macos do
    url "https://github.com/bilalcaliskan/s3-manager/releases/download/v0.0.7/s3-manager_0.0.7_darwin_x86_64.tar.gz"
    sha256 "d3ba934f5c4394c25132bc1f7c72b338fe94adabe754e0ae6034ccd70ed0ffbb"

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
      url "https://github.com/bilalcaliskan/s3-manager/releases/download/v0.0.7/s3-manager_0.0.7_linux_x86_64.tar.gz"
      sha256 "91239993d3e71489c3c72ca3d7e4317cda188748b4473dd04818b41a362ff4eb"

      def install
        bin.install "s3-manager"
      end
    end
  end
end

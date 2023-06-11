# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class S3Manager < Formula
  desc "s3-manager does something"
  homepage "https://github.com/bilalcaliskan/s3-manager"
  version "0.0.12"
  license "apache-2.0"

  on_macos do
    url "https://github.com/bilalcaliskan/s3-manager/releases/download/v0.0.12/s3-manager_0.0.12_darwin_x86_64.tar.gz"
    sha256 "79127b099babeec49dd4e8353ebb5537f2dc06deb6742cd37385da786768be5b"

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
      url "https://github.com/bilalcaliskan/s3-manager/releases/download/v0.0.12/s3-manager_0.0.12_linux_x86_64.tar.gz"
      sha256 "a794f0dfe0d00b80f3758934f5acf44a36c7e7be55aca73930db581e66091402"

      def install
        bin.install "s3-manager"
      end
    end
  end
end

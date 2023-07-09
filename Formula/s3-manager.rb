# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class S3Manager < Formula
  desc "s3-manager is a tool written with Golang that helps you take the various discovery/management related actions on your target AWS S3 bucket."
  homepage "https://github.com/bilalcaliskan/s3-manager"
  version "1.0.16"
  license "apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bilalcaliskan/s3-manager/releases/download/v1.0.16/s3-manager_1.0.16_darwin_arm64.tar.gz"
      sha256 "077c473d4551e68de9729ab31a0a013f3cfb4c490bf80f536e9ad00d7ca90caf"

      def install
        bin.install "s3-manager"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bilalcaliskan/s3-manager/releases/download/v1.0.16/s3-manager_1.0.16_darwin_amd64.tar.gz"
      sha256 "9095d29f458cd398def0edc07911e57ecf33e5bb39d8ec05695e952e61f01b0a"

      def install
        bin.install "s3-manager"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bilalcaliskan/s3-manager/releases/download/v1.0.16/s3-manager_1.0.16_linux_amd64.tar.gz"
      sha256 "71c60d20ef3d450909f4b1ac037c2e673ba189891c86ac10697ca4182915ae24"

      def install
        bin.install "s3-manager"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bilalcaliskan/s3-manager/releases/download/v1.0.16/s3-manager_1.0.16_linux_arm64.tar.gz"
      sha256 "1fa50868c175c4b479b366a10f14d85ef64b7ffdb1e06b6d21ff7e913acc0a26"

      def install
        bin.install "s3-manager"
      end
    end
  end
end

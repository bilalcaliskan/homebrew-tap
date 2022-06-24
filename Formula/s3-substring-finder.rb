# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class S3SubstringFinder < Formula
  desc "s3-substring-finder accesses to S3 buckets and finds txt files which contains specific substring"
  homepage "https://github.com/bilalcaliskan/s3-substring-finder"
  version "0.0.21"
  license "apache-2.0"

  on_macos do
    url "https://github.com/bilalcaliskan/s3-substring-finder/releases/download/v0.0.21/s3-substring-finder_0.0.21_darwin_x86_64.tar.gz"
    sha256 "b46dd918edf1ff6b2cc40c84677d8b5719d4f12208e364c9012fee2a6ae1188f"

    def install
      bin.install "s3-substring-finder"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the S3SubstringFinder
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bilalcaliskan/s3-substring-finder/releases/download/v0.0.21/s3-substring-finder_0.0.21_linux_x86_64.tar.gz"
      sha256 "3437f638c684569b67ff0c19e76d4edddad11bd4f13a92e1bb033b002f3a4086"

      def install
        bin.install "s3-substring-finder"
      end
    end
  end
end

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class S3SubstringFinder < Formula
  desc "s3-substring-finder accesses to S3 buckets and finds txt files which contains specific substring"
  homepage "https://github.com/bilalcaliskan/s3-substring-finder"
  version "1.1.15"
  license "apache-2.0"

  on_macos do
    url "https://github.com/bilalcaliskan/s3-substring-finder/releases/download/v1.1.15/s3-substring-finder_1.1.15_darwin_x86_64.tar.gz"
    sha256 "3c1022fe668ace03608cb502c408944148044a8841e905290e136f8b324afe54"

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
      url "https://github.com/bilalcaliskan/s3-substring-finder/releases/download/v1.1.15/s3-substring-finder_1.1.15_linux_x86_64.tar.gz"
      sha256 "43246919963cfd45aaa387bb52105028a3bb7ff2d83cfc3ecea302e76e44007e"

      def install
        bin.install "s3-substring-finder"
      end
    end
  end
end

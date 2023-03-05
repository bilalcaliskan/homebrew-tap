# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class S3SubstringFinder < Formula
  desc "s3-substring-finder accesses to S3 buckets and finds txt files which contains specific substring"
  homepage "https://github.com/bilalcaliskan/s3-substring-finder"
  version "1.1.20"
  license "apache-2.0"

  on_macos do
    url "https://github.com/bilalcaliskan/s3-substring-finder/releases/download/v1.1.20/s3-substring-finder_1.1.20_darwin_x86_64.tar.gz"
    sha256 "3c5d8e93cc87e7ba9659f92e57711086154487c68181e549171c7a5f395da5f4"

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
      url "https://github.com/bilalcaliskan/s3-substring-finder/releases/download/v1.1.20/s3-substring-finder_1.1.20_linux_x86_64.tar.gz"
      sha256 "dfae3a41dee59babc29a9c01a13c4e4e33ab88d368fc18e6e0ca9215699ca570"

      def install
        bin.install "s3-substring-finder"
      end
    end
  end
end

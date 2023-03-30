# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class S3SubstringFinder < Formula
  desc "s3-substring-finder accesses to S3 buckets and finds txt files which contains specific substring"
  homepage "https://github.com/bilalcaliskan/s3-substring-finder"
  version "2.1.4"
  license "apache-2.0"

  on_macos do
    url "https://github.com/bilalcaliskan/s3-substring-finder/releases/download/v2.1.4/s3-substring-finder_2.1.4_darwin_x86_64.tar.gz"
    sha256 "42492c18be3d7ed81f55a2d968ef68c988999fc33ffc0b3aba0952504ece7571"

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
      url "https://github.com/bilalcaliskan/s3-substring-finder/releases/download/v2.1.4/s3-substring-finder_2.1.4_linux_x86_64.tar.gz"
      sha256 "87216c6c1fc531ea800cacfce45a94901240441278c711f026a4dd666d81dfb4"

      def install
        bin.install "s3-substring-finder"
      end
    end
  end
end

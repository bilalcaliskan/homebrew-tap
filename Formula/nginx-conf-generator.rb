# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class NginxConfGenerator < Formula
  desc "nginx-conf-generator gets the port of NodePort type services from a cluster and manages Nginx configuration"
  homepage "https://github.com/bilalcaliskan/nginx-conf-generator"
  version "5.0.1"
  license "apache-2.0"

  on_macos do
    url "https://github.com/bilalcaliskan/nginx-conf-generator/releases/download/v5.0.1/nginx-conf-generator_5.0.1_darwin_x86_64.tar.gz"
    sha256 "59ece7edc58d5a44c9d264711590a71c6e4a232876c6eea05eb59df659c37cdd"

    def install
      bin.install "nginx-conf-generator"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the NginxConfGenerator
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bilalcaliskan/nginx-conf-generator/releases/download/v5.0.1/nginx-conf-generator_5.0.1_linux_x86_64.tar.gz"
      sha256 "924143fe539476b01a48efa72a770458835a467889f2da0b0b0eb718e968e38c"

      def install
        bin.install "nginx-conf-generator"
      end
    end
  end
end
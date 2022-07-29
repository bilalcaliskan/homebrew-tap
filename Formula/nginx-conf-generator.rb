# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class NginxConfGenerator < Formula
  desc "nginx-conf-generator gets the port of NodePort type services from a cluster and manages Nginx configuration"
  homepage "https://github.com/bilalcaliskan/nginx-conf-generator"
  version "5.0.9"
  license "apache-2.0"

  on_macos do
    url "https://github.com/bilalcaliskan/nginx-conf-generator/releases/download/v5.0.9/nginx-conf-generator_5.0.9_darwin_x86_64.tar.gz"
    sha256 "cc3be2e8f2ca7abc56f0924a6f93e5c427c159fb47aff5ddbd881b5b6bf2fa3d"

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
      url "https://github.com/bilalcaliskan/nginx-conf-generator/releases/download/v5.0.9/nginx-conf-generator_5.0.9_linux_x86_64.tar.gz"
      sha256 "b11c6d0191a7981f9223375b56edc32918170a9e9595ded81a7290f8336d3bee"

      def install
        bin.install "nginx-conf-generator"
      end
    end
  end
end

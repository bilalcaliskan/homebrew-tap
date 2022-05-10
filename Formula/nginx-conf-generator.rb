# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class NginxConfGenerator < Formula
  desc "nginx-conf-generator gets the port of NodePort type services from a cluster and manages Nginx configuration"
  homepage "https://github.com/bilalcaliskan/nginx-conf-generator"
  version "5.0.2"
  license "apache-2.0"

  on_macos do
    url "https://github.com/bilalcaliskan/nginx-conf-generator/releases/download/v5.0.2/nginx-conf-generator_5.0.2_darwin_x86_64.tar.gz"
    sha256 "f0262d73d01cb6e8b32f32e9f8c0b413e84dd613c72b35bf29f96db219a29447"

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
      url "https://github.com/bilalcaliskan/nginx-conf-generator/releases/download/v5.0.2/nginx-conf-generator_5.0.2_linux_x86_64.tar.gz"
      sha256 "8d38699f5b0314f5192e7ad4a67c76a23abf40a14b17ebcbd77e6bc52ae72206"

      def install
        bin.install "nginx-conf-generator"
      end
    end
  end
end

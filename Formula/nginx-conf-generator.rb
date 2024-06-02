# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class NginxConfGenerator < Formula
  desc "nginx-conf-generator gets the port of NodePort type services from a cluster and manages Nginx configuration"
  homepage "https://github.com/bilalcaliskan/nginx-conf-generator"
  version "6.0.26"
  license "apache-2.0"

  on_macos do
    url "https://github.com/bilalcaliskan/nginx-conf-generator/releases/download/v6.0.26/nginx-conf-generator_6.0.26_darwin_amd64.tar.gz"
    sha256 "bbe4cf3f9b91dfa4d339511d57e7a4aeebc3e8a35d8b7631f500bd1ab6fb3991"

    def install
      bin.install "nginx-conf-generator"
    end

    on_arm do
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
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/bilalcaliskan/nginx-conf-generator/releases/download/v6.0.26/nginx-conf-generator_6.0.26_linux_amd64.tar.gz"
        sha256 "b3408aad939a780ee00edf1f068a30b52e94009eaff66dab8189fb1a480a3616"

        def install
          bin.install "nginx-conf-generator"
        end
      end
    end
  end
end

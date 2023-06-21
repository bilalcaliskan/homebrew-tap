# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KubePodTerminator < Formula
  desc "kube-pod-terminator discovers pods which are at 'Evicted' or 'Terminating' state and clears them from Kubernetes cluster"
  homepage "https://github.com/bilalcaliskan/kube-pod-terminator"
  version "2.1.3"
  license "apache-2.0"

  on_macos do
    url "https://github.com/bilalcaliskan/kube-pod-terminator/releases/download/v2.1.3/kube-pod-terminator_2.1.3_darwin_x86_64.tar.gz"
    sha256 "f6aa01158a16d6c3b72f5c48af922c5a7e41723bffcc22b59fcb3095a733f320"

    def install
      bin.install "kube-pod-terminator"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the KubePodTerminator
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bilalcaliskan/kube-pod-terminator/releases/download/v2.1.3/kube-pod-terminator_2.1.3_linux_x86_64.tar.gz"
      sha256 "24b36f9db5e06b716580d27fb471728b3140e8db5438a19d00bfaeba02016598"

      def install
        bin.install "kube-pod-terminator"
      end
    end
  end
end

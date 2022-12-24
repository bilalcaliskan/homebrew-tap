# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KubePodTerminator < Formula
  desc "kube-pod-terminator discovers pods which are at 'Evicted' or 'Terminating' state and clears them from Kubernetes cluster"
  homepage "https://github.com/bilalcaliskan/kube-pod-terminator"
  version "1.1.10"
  license "apache-2.0"

  on_macos do
    url "https://github.com/bilalcaliskan/kube-pod-terminator/releases/download/v1.1.10/kube-pod-terminator_1.1.10_darwin_x86_64.tar.gz"
    sha256 "00899c92a5b774f67a2b2a8f87001a230b727a29a7df6f5571e898b2f1c32dca"

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
      url "https://github.com/bilalcaliskan/kube-pod-terminator/releases/download/v1.1.10/kube-pod-terminator_1.1.10_linux_x86_64.tar.gz"
      sha256 "471dd2abb079df74c2a0a5703650a86ef9a32267c1ac2cb5b1ac05b7b28f7efc"

      def install
        bin.install "kube-pod-terminator"
      end
    end
  end
end

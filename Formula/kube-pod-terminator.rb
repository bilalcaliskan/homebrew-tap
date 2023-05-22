# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KubePodTerminator < Formula
  desc "kube-pod-terminator discovers pods which are at 'Evicted' or 'Terminating' state and clears them from Kubernetes cluster"
  homepage "https://github.com/bilalcaliskan/kube-pod-terminator"
  version "2.1.1"
  license "apache-2.0"

  on_macos do
    url "https://github.com/bilalcaliskan/kube-pod-terminator/releases/download/v2.1.1/kube-pod-terminator_2.1.1_darwin_x86_64.tar.gz"
    sha256 "3a3ffcec3473be359c319669e3f7bee8fa06fcf932c6107b44b290b5d417e35f"

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
      url "https://github.com/bilalcaliskan/kube-pod-terminator/releases/download/v2.1.1/kube-pod-terminator_2.1.1_linux_x86_64.tar.gz"
      sha256 "ba415a150af23177f798718df8134298c7665003e615d291fc10b38ec35ae15c"

      def install
        bin.install "kube-pod-terminator"
      end
    end
  end
end

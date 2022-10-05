# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KubePodTerminator < Formula
  desc "kube-pod-terminator discovers pods which are at 'Evicted' or 'Terminating' state and clears them from Kubernetes cluster"
  homepage "https://github.com/bilalcaliskan/kube-pod-terminator"
  version "1.1.0"
  license "apache-2.0"

  on_macos do
    url "https://github.com/bilalcaliskan/kube-pod-terminator/releases/download/v1.1.0/kube-pod-terminator_1.1.0_darwin_x86_64.tar.gz"
    sha256 "b4cf64b0cda33dddd3adc982afe6692dde26893fee56f9f9bca25f4293bbdd6d"

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
      url "https://github.com/bilalcaliskan/kube-pod-terminator/releases/download/v1.1.0/kube-pod-terminator_1.1.0_linux_x86_64.tar.gz"
      sha256 "4ce8bedcce4d673d3cc9def9abe59e958162fc5825e01c56de5c93324af21e7a"

      def install
        bin.install "kube-pod-terminator"
      end
    end
  end
end

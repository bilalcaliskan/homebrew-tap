# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KubePodTerminator < Formula
  desc "kube-pod-terminator discovers pods which are at 'Evicted' or 'Terminating' state and clears them from Kubernetes cluster"
  homepage "https://github.com/bilalcaliskan/kube-pod-terminator"
  version "0.1.39"
  license "apache-2.0"

  on_macos do
    url "https://github.com/bilalcaliskan/kube-pod-terminator/releases/download/v0.1.39/kube-pod-terminator_0.1.39_darwin_x86_64.tar.gz"
    sha256 "59eb8e0ed662e3da5dead87a47354b27001cf77aa64e432bfd837d39e9f5c017"

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
      url "https://github.com/bilalcaliskan/kube-pod-terminator/releases/download/v0.1.39/kube-pod-terminator_0.1.39_linux_x86_64.tar.gz"
      sha256 "904cd35cdc1cee3bddf16303a5c0cdcf2d91a04eae6fcef1305c6fc72619eb03"

      def install
        bin.install "kube-pod-terminator"
      end
    end
  end
end

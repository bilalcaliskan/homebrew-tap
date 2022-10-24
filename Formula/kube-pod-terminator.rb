# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KubePodTerminator < Formula
  desc "kube-pod-terminator discovers pods which are at 'Evicted' or 'Terminating' state and clears them from Kubernetes cluster"
  homepage "https://github.com/bilalcaliskan/kube-pod-terminator"
  version "1.1.3"
  license "apache-2.0"

  on_macos do
    url "https://github.com/bilalcaliskan/kube-pod-terminator/releases/download/v1.1.3/kube-pod-terminator_1.1.3_darwin_x86_64.tar.gz"
    sha256 "30ca622e25e66faa17015caca44ec2498d38814d1163d52563b727800ccacd00"

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
      url "https://github.com/bilalcaliskan/kube-pod-terminator/releases/download/v1.1.3/kube-pod-terminator_1.1.3_linux_x86_64.tar.gz"
      sha256 "edfa38d81d6c12416de288cdd1a05ca54795b99ec0890751049b9bd87e21589b"

      def install
        bin.install "kube-pod-terminator"
      end
    end
  end
end

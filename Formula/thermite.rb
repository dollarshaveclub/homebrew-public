# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Thermite < Formula
  desc "Removes old Amazon Elastic Container Registry images that are not deployed in a Kubernetes cluster"
  homepage "https://github.com/dollarshaveclub/thermite"
  version "0.0.32"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dollarshaveclub/thermite/releases/download/v0.0.32/thermite_0.0.32_darwin_arm64.tar.gz"
      sha256 "3c3e10467ea5fbfdc697705ad83d9f2dcaf9b4861edde70349a18b67c085c766"

      def install
        bin.install "thermite"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/dollarshaveclub/thermite/releases/download/v0.0.32/thermite_0.0.32_darwin_amd64.tar.gz"
      sha256 "3be95c08881a3e8df1d4355619d2582f371145d2f01d6a16b9b3938256118245"

      def install
        bin.install "thermite"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dollarshaveclub/thermite/releases/download/v0.0.32/thermite_0.0.32_linux_arm64.tar.gz"
      sha256 "f8f635b2a41fd24cf63f5444855eae86c78cf8cf3d766f9b44ec4c7e15f0b478"

      def install
        bin.install "thermite"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/dollarshaveclub/thermite/releases/download/v0.0.32/thermite_0.0.32_linux_amd64.tar.gz"
      sha256 "d27dde31db20d62165b719ac2d4579d1536e7974802e4054aea06132aedb1229"

      def install
        bin.install "thermite"
      end
    end
  end
end

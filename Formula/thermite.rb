# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Thermite < Formula
  desc "Removes old Amazon Elastic Container Registry images that are not deployed in a Kubernetes cluster"
  homepage "https://github.com/dollarshaveclub/thermite"
  version "0.0.20"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dollarshaveclub/thermite/releases/download/v0.0.20/thermite_0.0.20_darwin_amd64.tar.gz"
      sha256 "b7c54a58292f628109b937677affbdfc9530d7fcdb4857976ee72ebb67c47397"
    end
    if Hardware::CPU.arm?
      url "https://github.com/dollarshaveclub/thermite/releases/download/v0.0.20/thermite_0.0.20_darwin_arm64.tar.gz"
      sha256 "e46f3c6a515c068f1f7211aa59936623b82de8d940cf623efc477e16ed1fc9d6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dollarshaveclub/thermite/releases/download/v0.0.20/thermite_0.0.20_linux_amd64.tar.gz"
      sha256 "af8536700a8a096a9c72a0da3aa2b56de6bdb839a647975638053e2a04ac4db8"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dollarshaveclub/thermite/releases/download/v0.0.20/thermite_0.0.20_linux_arm64.tar.gz"
      sha256 "77960e706c17ff672df4be6efe1694fa824d1d293f191b9808d4a3620fca8217"
    end
  end

  def install
    bin.install "thermite"
  end
end

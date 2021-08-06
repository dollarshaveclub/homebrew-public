# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Thermite < Formula
  desc "Removes old Amazon Elastic Container Registry images that are not deployed in a Kubernetes cluster"
  homepage "https://github.com/dollarshaveclub/thermite"
  version "0.0.23"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dollarshaveclub/thermite/releases/download/v0.0.23/thermite_0.0.23_darwin_amd64.tar.gz"
      sha256 "d8d443a2cf5c2cc721749dd7cbe66226f11f751fd9eb73ba2e10c25583e94ffa"
    end
    if Hardware::CPU.arm?
      url "https://github.com/dollarshaveclub/thermite/releases/download/v0.0.23/thermite_0.0.23_darwin_arm64.tar.gz"
      sha256 "204b8715a337063b9a54a7dd8c86da26eba74a2ba78e808b5e70bb99404dfbee"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dollarshaveclub/thermite/releases/download/v0.0.23/thermite_0.0.23_linux_amd64.tar.gz"
      sha256 "59a4cd4bc8810b8d72985b68c1bfdfcc56689b09258187dfaa54ac59aae60dc7"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dollarshaveclub/thermite/releases/download/v0.0.23/thermite_0.0.23_linux_arm64.tar.gz"
      sha256 "8d0ac1edfd2c139c4a195cdfeef9617a8c629bba5475875ebd156bceaf5c70b8"
    end
  end

  def install
    bin.install "thermite"
  end
end

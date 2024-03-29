# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Acyl < Formula
  desc "Testing Environments On Demand"
  homepage "https://github.com/dollarshaveclub/acyl"
  url "https://github.com/dollarshaveclub/acyl/archive/refs/tags/v0.9.1.tar.gz"
  version "0.9.1"

  on_macos do
    url "https://github.com/dollarshaveclub/acyl/releases/download/v0.9.1/acyl_0.9.1_MacOS_x86_64.tar.gz"
    sha256 "eb99844b5b0984cffe4d5c1bc11884816c925cc888ac24a1112414224e532549"

    def install
      bin.install "acyl"
      pkgshare.mkpath
      pkgshare.install "data/words.json.gz"
      (pkgshare/"ui").mkpath
      (pkgshare/"ui/views").mkpath
      (pkgshare/"ui/views").install Dir["ui/views/*"]
      (pkgshare/"ui/assets").mkpath
      (pkgshare/"ui/assets").install Dir["ui/assets/*"]
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dollarshaveclub/acyl/releases/download/v0.9.1/acyl_0.9.1_Linux_x86_64.tar.gz"
      sha256 "cae43304c83bb9fc441b70dc53b0180832a5d95aedcdf20873c81aafc93c5fb3"

      def install
        bin.install "acyl"
        pkgshare.mkpath
        pkgshare.install "data/words.json.gz"
        (pkgshare/"ui").mkpath
        (pkgshare/"ui/views").mkpath
        (pkgshare/"ui/views").install Dir["ui/views/*"]
        (pkgshare/"ui/assets").mkpath
        (pkgshare/"ui/assets").install Dir["ui/assets/*"]
      end
    end
  end
end

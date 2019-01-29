require_relative "../custom_download_strategy.rb"
class Acyl < Formula
  desc "Testing Environments On Demand"
  homepage ""
  url "https://github.com/dollarshaveclub/acyl/releases/download/v0.6.0-rc1/acyl_0.6.0-rc1_MacOS_x86_64.tar.gz", :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
  version "0.6.0-rc1"
  sha256 "4e01b4965190894e6502d299af9afd967dd59b73c7c922df2c75f85bd8f6e207"

  def install
    bin.install "acyl"
  end
end

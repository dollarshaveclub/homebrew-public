require_relative "../custom_download_strategy.rb"
class Acyl < Formula
  desc "Testing Environments On Demand"
  homepage ""
  url "https://github.com/dollarshaveclub/acyl/releases/download/v0.5.0/acyl_0.5.0_MacOS_x86_64.tar.gz", :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
  version "0.5.0"
  sha256 "bf819bf8b8b6e17dd298ab76848958fc22cb55d44abdfcfb4d6e7e926c97888b"

  def install
    bin.install "acyl"
  end
end

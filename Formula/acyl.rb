require_relative "../custom_download_strategy.rb"
class Acyl < Formula
  desc "Testing Environments On Demand"
  homepage ""
  url "https://github.com/dollarshaveclub/acyl/releases/download/v0.6.0/acyl_0.6.0_MacOS_x86_64.tar.gz", :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
  version "0.6.0"
  sha256 "5eed6f7db3bb31dd060ae0239d3fe05243afca226c43ef40901ccedf6f1c83b3"

  def install
    bin.install "acyl"
  end
end

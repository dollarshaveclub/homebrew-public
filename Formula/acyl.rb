require_relative "../custom_download_strategy.rb"
class Acyl < Formula
  desc "Testing Environments On Demand"
  homepage ""
  url "https://github.com/dollarshaveclub/acyl/releases/download/v0.6.1/acyl_0.6.1_MacOS_x86_64.tar.gz", :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
  version "0.6.1"
  sha256 "9de247db38cd90baec8275be315041d84c9f6708b58a79498ddaccb3066e03c8"

  def install
    bin.install "acyl"
    pkgshare.mkpath
    pkgshare.install "data/words.json.gz"
  end
end

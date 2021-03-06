# This file was generated by GoReleaser. DO NOT EDIT.
class Acyl < Formula
  desc "Testing Environments On Demand"
  homepage ""
  version "0.8.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/dollarshaveclub/acyl/releases/download/v0.8.0/acyl_0.8.0_MacOS_x86_64.tar.gz"
    sha256 "2eecc150150d9ef60c1e5b3bee334300716369b6b76a923f82aa70fb596a2325"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dollarshaveclub/acyl/releases/download/v0.8.0/acyl_0.8.0_Linux_x86_64.tar.gz"
    sha256 "d70f97e6992764d52742d3f7fc44f36ba408e92b199a3dfc0b6d1534f84a918a"
  end

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

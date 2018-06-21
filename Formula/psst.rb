# GENERATED FROM TEMPLATE. DO NOT EDIT!
class  psst < Formula
  desc "psst"
  homepage "https://github.com/dollarshaveclub/psst"
  url "git@github.com:dollarshaveclub/psst.git",
      :using => :git,
      :tag => "v0.5.1",
      :revision => "9f380f9f56041192e99b23b9df5e46faf39cb795"
  revision 1
  head "git@github.com:dollarshaveclub/psst.git", :using => :git
  depends_on "go" => :build


  bottle do
    root_url "https://github.com/dollarshaveclub/psst/releases/download/v0.5.1/"
    rebuild 1
    sha256 "15a90c3ceaeb1288fbc74b1932b40706944d532e912610b63154e2c4cb62cf2a" => :el_capitan
    sha256 "15a90c3ceaeb1288fbc74b1932b40706944d532e912610b63154e2c4cb62cf2a" => :high_sierra
    sha256 "15a90c3ceaeb1288fbc74b1932b40706944d532e912610b63154e2c4cb62cf2a" => :sierra
  end
  

  def install

    ENV["GOPATH"] = buildpath
    psstpath = buildpath/"src/github.com/dollarshaveclub/psst"
    psstpath.install buildpath.children

    cd psstpath do
      system "make"
      bin.install "bin/psst"
      prefix.install_metafiles
    end
  end

  test do
    system "#{bin}/psst"
    assert true
  end
end

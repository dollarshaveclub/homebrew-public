# GENERATED FROM TEMPLATE. DO NOT EDIT!
class  Minibox < Formula
  desc "Minibox CLI"
  homepage "https://github.com/dollarshaveclub/minibox"
  url "git@github.com:dollarshaveclub/minibox.git",
      :using => :git,
      :tag => "v0.5.0",
      :revision => "b945965ba3d1aac4b7af43977cee8ed4293c94ac"
  revision 1
  head "git@github.com:dollarshaveclub/minibox.git", :using => :git
  depends_on "go" => :build
  depends_on "kubectl"

  
  bottle do
    root_url "https://github.com/dollarshaveclub/minibox/releases/download/v0.5.0/"
    rebuild 1
    sha256 "33da934f4ed6dc00403b22f19835520bd187797f051775e61d6b0fe32aefccaf" => :el_capitan
    sha256 "33da934f4ed6dc00403b22f19835520bd187797f051775e61d6b0fe32aefccaf" => :high_sierra
    sha256 "33da934f4ed6dc00403b22f19835520bd187797f051775e61d6b0fe32aefccaf" => :sierra
  end
  

  def install

    ENV["GOPATH"] = buildpath
    miniboxpath = buildpath/"src/github.com/dollarshaveclub/minibox"
    miniboxpath.install buildpath.children

    cd miniboxpath do
      system "make"
      bin.install "bin/minibox"
      prefix.install_metafiles
    end
  end

  test do
    system "#{bin}/minibox"
    assert true
  end
end

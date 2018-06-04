# GENERATED FROM TEMPLATE. DO NOT EDIT!
class  Minibox < Formula
  desc "Minibox CLI"
  homepage "https://github.com/dollarshaveclub/minibox"
  url "git@github.com:dollarshaveclub/minibox.git",
      :using => :git,
      :tag => "v0.5.0",
      :revision => "9c0a82c7cef2f368e17056e79592f9732278df28"
  revision 1
  head "git@github.com:dollarshaveclub/minibox.git", :using => :git
  depends_on "go" => :build
  depends_on "kubectl"

  
  bottle do
    root_url "https://github.com/dollarshaveclub/minibox/releases/download/v0.5.0/"
    rebuild 1
    sha256 "9a8f61096ad56a4f4cdccea30b2affa2b73e1a953098f8e0f72fcd064953e461" => :el_capitan
    sha256 "9a8f61096ad56a4f4cdccea30b2affa2b73e1a953098f8e0f72fcd064953e461" => :high_sierra
    sha256 "9a8f61096ad56a4f4cdccea30b2affa2b73e1a953098f8e0f72fcd064953e461" => :sierra
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

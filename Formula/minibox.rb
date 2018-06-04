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
    sha256 "806d7f5b66e97fb2bc628e1f3f6ebe61194cd221ee074bc6d735509ace00254a" => :el_capitan
    sha256 "806d7f5b66e97fb2bc628e1f3f6ebe61194cd221ee074bc6d735509ace00254a" => :high_sierra
    sha256 "806d7f5b66e97fb2bc628e1f3f6ebe61194cd221ee074bc6d735509ace00254a" => :sierra
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

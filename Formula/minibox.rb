# GENERATED FROM TEMPLATE. DO NOT EDIT!
class  Minibox < Formula
  desc "Minibox CLI"
  homepage "https://github.com/dollarshaveclub/minibox"
  url "git@github.com:dollarshaveclub/minibox.git",
      :using => :git,
      :tag => "v0.4.0",
      :revision => "dd33454ceced44d9310e279f16683c3f6f269b10"
  revision 1
  head "git@github.com:dollarshaveclub/minibox.git", :using => :git
  depends_on "go" => :build
  depends_on "kubectl"

  
  bottle do
    root_url "https://github.com/dollarshaveclub/minibox/releases/download/v0.4.0/"
    rebuild 1
    sha256 "eae5d3e960c20b6f5bd589b2050871273013693ecddf6905a8a48ec342720740" => :el_capitan
    sha256 "eae5d3e960c20b6f5bd589b2050871273013693ecddf6905a8a48ec342720740" => :high_sierra
    sha256 "eae5d3e960c20b6f5bd589b2050871273013693ecddf6905a8a48ec342720740" => :sierra
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

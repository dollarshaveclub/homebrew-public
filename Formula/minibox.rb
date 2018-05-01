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
    sha256 "d86f91981e28768b1f0293ac7d6aedbab71202d174b136028c6975cacacd0247" => :el_capitan
    sha256 "d86f91981e28768b1f0293ac7d6aedbab71202d174b136028c6975cacacd0247" => :high_sierra
    sha256 "d86f91981e28768b1f0293ac7d6aedbab71202d174b136028c6975cacacd0247" => :sierra
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

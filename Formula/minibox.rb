# GENERATED FROM TEMPLATE. DO NOT EDIT!
class  Minibox < Formula
  desc "Minibox CLI"
  homepage "https://github.com/dollarshaveclub/minibox"
  url "git@github.com:dollarshaveclub/minibox.git",
      :using => :git,
      :tag => "v0.5.0",
      :revision => "0e65e24ebdb6294617073b54aec7e7846c7face4"
  revision 1
  head "git@github.com:dollarshaveclub/minibox.git", :using => :git
  depends_on "go" => :build
  depends_on "kubectl"

  
  bottle do
    root_url "https://github.com/dollarshaveclub/minibox/releases/download/v0.5.0/"
    rebuild 1
    sha256 "681e7375936e94021e9fc277c814f82bef2ecc26c38ed2f7b8b587cf8d6ca6c6" => :el_capitan
    sha256 "681e7375936e94021e9fc277c814f82bef2ecc26c38ed2f7b8b587cf8d6ca6c6" => :high_sierra
    sha256 "681e7375936e94021e9fc277c814f82bef2ecc26c38ed2f7b8b587cf8d6ca6c6" => :sierra
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

# GENERATED FROM TEMPLATE. DO NOT EDIT!
class  Psst < Formula
  desc "psst"
  homepage "https://github.com/dollarshaveclub/psst"
  url "git@github.com:dollarshaveclub/psst.git",
      :using => :git,
      :tag => "v0.1.1",
      :revision => "2f72a2eb1761648a7ceb3fdd2a5b5834b3e4afb2"
  revision 1
  head "git@github.com:dollarshaveclub/psst.git", :using => :git
  depends_on "go" => :build

  
  bottle do
    root_url "https://github.com/dollarshaveclub/psst/releases/download/v0.1.1"
    rebuild 1
    sha256 "af85427510aa8e06741a69922bfd00a2776da4dcc3e7fa33977f05d36111cbca" => :el_capitan
    sha256 "af85427510aa8e06741a69922bfd00a2776da4dcc3e7fa33977f05d36111cbca" => :high_sierra
    sha256 "af85427510aa8e06741a69922bfd00a2776da4dcc3e7fa33977f05d36111cbca" => :sierra
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

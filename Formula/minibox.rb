class  Minibox < Formula
  desc "Minibox CLI"
  homepage "https://github.com/dollarshaveclub/minibox"
  url "git@github.com:dollarshaveclub/minibox.git",
      :using => :git,
      :tag => "0.3.5-TESTING",
      :revision => "c9e06ecebd2127ebdd1b63234b9df4569bfda2ca"
  revision 1
  head "git@github.com:dollarshaveclub/minibox.git", :using => :git
  depends_on "go" => :build
  depends_on "kubectl"

  
  bottle do
    root_url "https://github.com/dollarshaveclub/minibox/releases/download/0.3.5-TESTING/"
    rebuild 1
    sha256 "0723630a76ac7755c6ffea160521f7764bafc8fb1e11b69b2055d6387e47e683" => :el_capitan
    sha256 "0723630a76ac7755c6ffea160521f7764bafc8fb1e11b69b2055d6387e47e683" => :high_sierra
    sha256 "0723630a76ac7755c6ffea160521f7764bafc8fb1e11b69b2055d6387e47e683" => :sierra

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

# GENERATED FROM TEMPLATE. DO NOT EDIT!
class  Minibox < Formula
  desc "Minibox CLI"
  homepage "https://github.com/dollarshaveclub/minibox"
  url "git@github.com:dollarshaveclub/minibox.git",
      :using => :git,
      :tag => "v0.5.0",
      :revision => "d9c54c07c0a6adc5ef91dac06f1946319314fb37"
  revision 1
  head "git@github.com:dollarshaveclub/minibox.git", :using => :git
  depends_on "go" => :build
  depends_on "kubectl"

  
  bottle do
    root_url "https://github.com/dollarshaveclub/minibox/releases/download/v0.5.0/"
    rebuild 1
    sha256 "74a8c21418a33395112b7e34c6435da166cbaabe2a5fbaf90336376e45d3894e" => :el_capitan
    sha256 "74a8c21418a33395112b7e34c6435da166cbaabe2a5fbaf90336376e45d3894e" => :high_sierra
    sha256 "74a8c21418a33395112b7e34c6435da166cbaabe2a5fbaf90336376e45d3894e" => :sierra
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

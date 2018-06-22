# GENERATED FROM TEMPLATE. DO NOT EDIT!
class  Psst < Formula
  desc "psst"
  homepage "https://github.com/dollarshaveclub/psst"
  url "git@github.com:dollarshaveclub/psst.git",
      :using => :git,
      :tag => "v0.1.1",
      :revision => "6c06bb46ff2d3a514f2da2b54b44abec516ecfb1"
  
  head "git@github.com:dollarshaveclub/psst.git", :using => :git

  bottle do
    root_url "https://github.com/dollarshaveclub/psst/releases/download/v0.1.1"
    rebuild 1
    sha256 "5fe947e86ec9a861a570b3945e77a2f667aa74e347f83e84099c9f788f27d192" => :el_capitan
    sha256 "5fe947e86ec9a861a570b3945e77a2f667aa74e347f83e84099c9f788f27d192" => :high_sierra
    sha256 "5fe947e86ec9a861a570b3945e77a2f667aa74e347f83e84099c9f788f27d192" => :sierra
  end

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    psstpath = buildpath/"src/github.com/dollarshaveclub/psst"
    psstpath.install buildpath.children

    cd psstpath do
      system "make", "build-dsc"
      bin.install "bin/dsc/darwin/psst"
      prefix.install_metafiles
    end
  end

  test do
    system "#{bin}/psst"
    assert true
  end
end

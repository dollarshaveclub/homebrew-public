# GENERATED FROM TEMPLATE. DO NOT EDIT!
class  psst < Formula
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
    sha256 "66370095d67d3b986253798075ee9360fa8eaedc3dba03832628f9f84aac9a3f" => :el_capitan
    sha256 "66370095d67d3b986253798075ee9360fa8eaedc3dba03832628f9f84aac9a3f" => :high_sierra
    sha256 "66370095d67d3b986253798075ee9360fa8eaedc3dba03832628f9f84aac9a3f" => :sierra
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

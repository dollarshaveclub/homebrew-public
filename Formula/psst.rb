# GENERATED FROM TEMPLATE. DO NOT EDIT!
class  Psst < Formula
  desc "psst"
  homepage "https://github.com/dollarshaveclub/psst"
  url "git@github.com:dollarshaveclub/psst.git",
      :using => :git,
      :tag => "v0.1.0",
      :revision => "de0ad6ef5e14e560f6db7af4ffc1703472d15627"
  revision 1
  head "git@github.com:dollarshaveclub/psst.git", :using => :git
  depends_on "go" => :build

  
  bottle do
    root_url "https://github.com/dollarshaveclub/psst/releases/download/v0.1.0/"
    rebuild 1
    sha256 "96185d36b0e67a06add8c4ed520b4967c628090e431bd72c750fcbc7a5ab9d0c" => :el_capitan
    sha256 "96185d36b0e67a06add8c4ed520b4967c628090e431bd72c750fcbc7a5ab9d0c" => :high_sierra
    sha256 "96185d36b0e67a06add8c4ed520b4967c628090e431bd72c750fcbc7a5ab9d0c" => :sierra
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

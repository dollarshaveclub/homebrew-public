# GENERATED FROM TEMPLATE. DO NOT EDIT!
class  Psst < Formula
  desc "psst"
  homepage "https://github.com/dollarshaveclub/psst"
  url "git@github.com:dollarshaveclub/psst.git",
      :using => :git,
      :tag => "v0.1.2",
      :revision => "42f3239f4577792d7753b8cf1bb0573999311a2e"
  
  head "git@github.com:dollarshaveclub/psst.git", :using => :git

  bottle do
    root_url "https://github.com/dollarshaveclub/psst/releases/download/v0.1.2"
    rebuild 1
    sha256 "a6b83ddf772c1aad17ffbd7d407b5a1d7d43c2e4d1bae18bc97b6037577e6446" => :el_capitan
    sha256 "a6b83ddf772c1aad17ffbd7d407b5a1d7d43c2e4d1bae18bc97b6037577e6446" => :high_sierra
    sha256 "a6b83ddf772c1aad17ffbd7d407b5a1d7d43c2e4d1bae18bc97b6037577e6446" => :sierra
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

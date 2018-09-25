# GENERATED FROM TEMPLATE. DO NOT EDIT!
class  Psst < Formula
  desc "psst"
  homepage "https://github.com/dollarshaveclub/psst"
  url "git@github.com:dollarshaveclub/psst.git",
      :using => :git,
      :tag => "v0.2.0",
      :revision => "67eca859aae1074f8e141e377a7132d6b5e4e2fa"
  
  head "git@github.com:dollarshaveclub/psst.git", :using => :git

  bottle do
    root_url "https://github.com/dollarshaveclub/psst/releases/download/v0.2.0"
    rebuild 1
    sha256 "265cc4a30469b5172adb38313da289783595084db60110495aac1e3e2bde19a9" => :el_capitan
    sha256 "265cc4a30469b5172adb38313da289783595084db60110495aac1e3e2bde19a9" => :high_sierra
    sha256 "265cc4a30469b5172adb38313da289783595084db60110495aac1e3e2bde19a9" => :sierra
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

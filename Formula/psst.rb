# GENERATED FROM TEMPLATE. DO NOT EDIT!
class  Psst < Formula
  desc "Secrets distribution"
  homepage "https://github.com/dollarshaveclub/psst"
  url "git@github.com:dollarshaveclub/psst.git",
      using:    :git,
      tag:      "v0.2.0",
      revision: "67eca859aae1074f8e141e377a7132d6b5e4e2fa"

  head "git@github.com:dollarshaveclub/psst.git", using: :git

  bottle do
    root_url "https://github.com/dollarshaveclub/psst/releases/download/v0.2.0"
    rebuild 1
    sha256 el_capitan:  "9ee65127bc27c596929474e1be95d4ec821e4771049d2aec74a1dcc7027942a5"
    sha256 high_sierra: "9ee65127bc27c596929474e1be95d4ec821e4771049d2aec74a1dcc7027942a5"
    sha256 sierra:      "9ee65127bc27c596929474e1be95d4ec821e4771049d2aec74a1dcc7027942a5"
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

class  Psst < Formula
  desc "Secrets distribution"
  homepage "https://github.com/dollarshaveclub/psst"
  url "git@github.com:dollarshaveclub/psst.git",
      using:    :git,
      tag:      "v0.2.2",
      revision: "0bfcc4c9866252574fcbfff6c8e349aef3cb43f5"

  head "git@github.com:dollarshaveclub/psst.git", using: :git

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

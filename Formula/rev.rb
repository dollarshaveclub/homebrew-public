# GENERATED FROM TEMPLATE. DO NOT EDIT!
class Rev < Formula
  desc "Revision CLI"
  homepage "https://github.com/dollarshaveclub/revision-service/"
  url "git@github.com:dollarshaveclub/revision-service.git",

  bottle do
    root_url "https://github.com/dollarshaveclub/revision-service/cli"
    rebuild 1
    sha256 "15a90c3ceaeb1288fbc74b1932b40706944d532e912610b63154e2c4cb62cf2a" => :el_capitan
    sha256 "15a90c3ceaeb1288fbc74b1932b40706944d532e912610b63154e2c4cb62cf2a" => :high_sierra
    sha256 "15a90c3ceaeb1288fbc74b1932b40706944d532e912610b63154e2c4cb62cf2a" => :sierra
  end


  def install

    ENV["GOPATH"] = buildpath
    revpath = buildpath/"src/github.com/dollarshaveclub/revision-service/cli"
    revpath.install buildpath.children

    cd revpath do
      system "make"
      bin.install "local/bin/rev"
      prefix.install_metafiles
    end
  end

  test do
    system "#{bin}/rev"
    assert true
  end
end
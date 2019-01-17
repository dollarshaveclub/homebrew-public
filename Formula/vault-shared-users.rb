# GENERATED FROM TEMPLATE. DO NOT EDIT!
class vault-shared-users < Formula
desc "psst"
homepage "https://github.com/dollarshaveclub/vault-shared-users"
url "git@github.com:dollarshaveclub/vault-shared-users.git",
	:using => :git,
	:tag => "0.0.1",
	:revision => "2467cc0bf829ebfaad57a18a9b3c0f9d35fb7ab1"

head "git@github.com:dollarshaveclub/vault-shared-users.git", :using => :git

bottle do
  root_url "https://github.com/dollarshaveclub/vault-shared-users/releases/download/0.0.1"
  rebuild 1
  sha256 "dda49476385372dcd753dec041788b4fff486788b04ed9df044652cef8ea5944" => :el_capitan
  sha256 "dda49476385372dcd753dec041788b4fff486788b04ed9df044652cef8ea5944" => :high_sierra
  sha256 "dda49476385372dcd753dec041788b4fff486788b04ed9df044652cef8ea5944" => :sierra
end

depends_on "go" => :build

def install
  ENV["GOPATH"] = buildpath
  path = buildpath/"src/github.com/dollarshaveclub/vault-shared-users"
  path.install buildpath.children

  cd path do
	go build
	bin.install "bin/dsc/darwin/vault-shared-users"
	prefix.install_metafiles
  end
end

test do
  system "#{bin}/vault-shared-users"
  assert true
end
end

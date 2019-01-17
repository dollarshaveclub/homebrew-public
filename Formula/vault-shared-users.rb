require_relative "custom_download_strategy"
class VaultSharedUsers < Formula
  desc "Easily share users with 2FA access through Hashicorp Vault"
  homepage ""
  url "https://github.com/dollarshaveclub/vault-shared-users/releases/download/v0.0.1/vault-shared-users_0.0.1_Darwin_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  version "0.0.1"
  sha256 "3772ae819cc6be9c1121453c896fd669954acd08d9c2be06539864d50850def4"

  def install
    bin.install "vault-shared-users"
  end
end

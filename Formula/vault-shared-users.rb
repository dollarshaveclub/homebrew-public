class VaultSharedUsers < Formula
  desc "Easily share users with 2FA access through Hashicorp Vault"
  homepage ""
  url "https://github.com/dollarshaveclub/vault-shared-users/releases/download/v0.0.1/vault-shared-users_0.0.1_Darwin_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  version "0.0.1"
  sha256 "90242e7d8d36e450a48da72190b295d0191a3188994b39c635a76c3d59e85cea"

  def install
    bin.install "vault-shared-users"
  end
end

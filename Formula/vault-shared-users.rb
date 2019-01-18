relative_require "custom_download_strategy"

class VaultSharedUsers < Formula
  desc "Easily share users with 2FA access through Hashicorp Vault"
  homepage ""
  url "https://github.com/dollarshaveclub/vault-shared-users/releases/download/v0.0.1/vault-shared-users_0.0.1_Darwin_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  version "0.0.1"
  sha256 "e47b285a42ef2e15eaf6a93bc88e7d46c2cea9be1b99c47401b86b28fa995e5a"

  def install
    bin.install "vault-shared-users"
  end
end

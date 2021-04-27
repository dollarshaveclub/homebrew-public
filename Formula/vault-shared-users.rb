require_relative "../custom_download_strategy"
class VaultSharedUsers < Formula
  desc "Easily share users with 2FA access through Hashicorp Vault"
  homepage ""
  url "https://github.com/dollarshaveclub/vault-shared-users/releases/download/v0.0.1/vault-shared-users_0.0.1_Darwin_x86_64.tar.gz", using: CustomGitHubPrivateRepositoryReleaseDownloadStrategy
  version "0.0.1"
  sha256 "c19ccd90a300fd178835b2b6df7ad07ead2ca099457e121904f05173d4e2d55c"

  def install
    bin.install "vault-shared-users"
  end
end

class Groo < Formula
  desc "CLI tool for managing and running dev servers in monorepos"
  homepage "https://github.com/groo-dev/cli"
  version "0.0.41"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.41/groo_darwin_arm64.tar.gz"
      sha256 "adec6fead4c3e7cdb5ed16071d42aaa3253fb6914cfacdf362e050c3015820f0"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.41/groo_darwin_amd64.tar.gz"
      sha256 "b35d18f2a15aa6615c2b653c9b2e79ad3d1707b0d923d9fed52b62cd4ea3a351"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.41/groo_linux_arm64.tar.gz"
      sha256 "2f10314b8498f8e1e95f73b672fbfa1770def741eecdaa3e66f0823a1985b186"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.41/groo_linux_amd64.tar.gz"
      sha256 "848d075f7f4380a44cdb6fded4267f6615e5426ff22d7fc31f1184f577de1eee"
    end
  end

  def install
    bin.install "groo"
  end

  test do
    system "#{bin}/groo", "--version"
  end
end

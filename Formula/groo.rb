class Groo < Formula
  desc "CLI tool for managing and running dev servers in monorepos"
  homepage "https://github.com/groo-dev/cli"
  version "0.0.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.9/groo_darwin_arm64.tar.gz"
      sha256 "e34fc230905109ee982068d1fef6e48bfea069348d12e9a91e871782f3d4dbb9"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.9/groo_darwin_amd64.tar.gz"
      sha256 "fb929c370ef5d20a9be5330d256ccad747f3cec8d69f2e83bbaeb7fe8bee752c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.9/groo_linux_arm64.tar.gz"
      sha256 "ced6110fadb0a949eb74680963d2eabdb3ade87620b97e233ab8796e468245a0"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.9/groo_linux_amd64.tar.gz"
      sha256 "f5d58b9564c36047b1886413c716932ac549cca0a0d3012e18e2104bb27a4206"
    end
  end

  def install
    bin.install "groo"
  end

  test do
    system "#{bin}/groo", "--version"
  end
end

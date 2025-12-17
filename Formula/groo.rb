class Groo < Formula
  desc "CLI tool for managing and running dev servers in monorepos"
  homepage "https://github.com/groo-dev/cli"
  version "0.0.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.7/groo_darwin_arm64.tar.gz"
      sha256 "105350856da43da217b7e6b4627b8304acf4448b1ad945e2ab151fbb902ea29f"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.7/groo_darwin_amd64.tar.gz"
      sha256 "2779a4628825bb204f7189a53928f2f8e24fbe4b4d2b1c5f18b2626fae412553"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.7/groo_linux_arm64.tar.gz"
      sha256 "0bc639bf3360d342a1885e92793f77127aebf71f21d83d0a8e23d840e86bfcf7"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.7/groo_linux_amd64.tar.gz"
      sha256 "f0f5b3b46646779b730ce12cb3a1b53c26b163f910d136319125bd0781192da8"
    end
  end

  def install
    bin.install "groo"
  end

  test do
    system "#{bin}/groo", "--version"
  end
end

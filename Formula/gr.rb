class Gr < Formula
  desc "CLI tool for managing and running dev servers in monorepos"
  homepage "https://github.com/groo-dev/cli"
  version "0.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/v0.0.3/gr_darwin_arm64.tar.gz"
      sha256 "efad9f9bfbf0d112c5564eed3901dce2b6c42789669ebac19bef6c81fd214709"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/v0.0.3/gr_darwin_amd64.tar.gz"
      sha256 "8ad3e6f564e0708e2f6b5774b84a3e8587313947a528c5347e0a3a8edeb219f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/v0.0.3/gr_linux_arm64.tar.gz"
      sha256 "7d9f62d72e69d61d4f2c9a00d7b0e80f5f3585284cc2067cc30b5afa2b343d33"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/v0.0.3/gr_linux_amd64.tar.gz"
      sha256 "b07d62cb067c1502f6dc33a55ae0a7ddc54f95f8ea1cf2af974589ed54d9febe"
    end
  end

  def install
    bin.install "gr"
  end

  test do
    system "#{bin}/gr", "--version"
  end
end

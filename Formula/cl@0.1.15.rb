class Cl < Formula
  desc "Switch between multiple Cloudflare/Wrangler accounts"
  homepage "https://github.com/groo-dev/cl-wrangler"
  version "0.1.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cl-wrangler/releases/download/v0.1.15/cl_darwin_arm64.tar.gz"
      sha256 "5557c372060bff4163b6acfb05ace5262052eaa0a2162870dd8f430ed9cb6f71"
    end
    on_intel do
      url "https://github.com/groo-dev/cl-wrangler/releases/download/v0.1.15/cl_darwin_amd64.tar.gz"
      sha256 "b468cfe88d00d7a14be4e1ab8e9b0cf1c2ba4bceae451297a2f8378a522f774f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cl-wrangler/releases/download/v0.1.15/cl_linux_arm64.tar.gz"
      sha256 "d31f73ea37333ccd38d51407c7177a282da548af4cd836b19acf595492467ed2"
    end
    on_intel do
      url "https://github.com/groo-dev/cl-wrangler/releases/download/v0.1.15/cl_linux_amd64.tar.gz"
      sha256 "b410bd57ca244f497ddc0446674d1d77ff99cbd3a64fbfd4454a91f249e9a5be"
    end
  end

  def install
    bin.install "cl"
  end

  test do
    system "#{bin}/cl", "version"
  end
end

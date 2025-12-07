class Cl < Formula
  desc "Switch between multiple Cloudflare/Wrangler accounts"
  homepage "https://github.com/groo-dev/cl-wrangler"
  version "0.1.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cl-wrangler/releases/download/cli-v0.1.10/cl_darwin_arm64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
    on_intel do
      url "https://github.com/groo-dev/cl-wrangler/releases/download/cli-v0.1.10/cl_darwin_amd64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cl-wrangler/releases/download/cli-v0.1.10/cl_linux_arm64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
    on_intel do
      url "https://github.com/groo-dev/cl-wrangler/releases/download/cli-v0.1.10/cl_linux_amd64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  def install
    bin.install "cl"
  end

  test do
    system "#{bin}/cl", "version"
  end
end

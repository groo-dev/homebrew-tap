class Cl < Formula
  desc "Switch between multiple Cloudflare/Wrangler accounts"
  homepage "https://github.com/groo-dev/cl-wrangler"
  version "0.1.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cl-wrangler/releases/download/v0.1.14/cl_darwin_arm64.tar.gz"
      sha256 "821ab2f9e1e50a3b838523ba7bd3e123394b17dbadcef9da90143ceb8aad84e2"
    end
    on_intel do
      url "https://github.com/groo-dev/cl-wrangler/releases/download/v0.1.14/cl_darwin_amd64.tar.gz"
      sha256 "56aaa0e84919df33f2393044df23b11922f04559688ec3f012c3be76d89080e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cl-wrangler/releases/download/v0.1.14/cl_linux_arm64.tar.gz"
      sha256 "bfe6b563e3c3f02823642acb18afad59c456f97d16cd68e10829e7e6f2d28039"
    end
    on_intel do
      url "https://github.com/groo-dev/cl-wrangler/releases/download/v0.1.14/cl_linux_amd64.tar.gz"
      sha256 "54003a7f69d3c398dd4b449ac758fc97b1f5495b13caa46833c43a8115e9dfd7"
    end
  end

  def install
    bin.install "cl"
  end

  test do
    system "#{bin}/cl", "version"
  end
end

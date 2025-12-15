class Cl < Formula
  desc "Switch between multiple Cloudflare/Wrangler accounts"
  homepage "https://github.com/groo-dev/cl-wrangler"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cl-wrangler/releases/download/v0.2.1/cl_darwin_arm64.tar.gz"
      sha256 "47c6e7194b21bc3f7c1341d01e1f752d5bdc825d757f4e23fe5744f7b061405d"
    end
    on_intel do
      url "https://github.com/groo-dev/cl-wrangler/releases/download/v0.2.1/cl_darwin_amd64.tar.gz"
      sha256 "8d4702087c6b4edb4b93a0a2e7cedaa2b4e1ed827cb5912d1d4e306bf2531445"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cl-wrangler/releases/download/v0.2.1/cl_linux_arm64.tar.gz"
      sha256 "292dafb048c4b01a40ddf1ff83fbccbbca0d3477b6e4cd221183e55a73081a0c"
    end
    on_intel do
      url "https://github.com/groo-dev/cl-wrangler/releases/download/v0.2.1/cl_linux_amd64.tar.gz"
      sha256 "a052a6f655422104e27b84e120e175364be932841c4e60d80ee83a53616ddc49"
    end
  end

  def install
    bin.install "cl"
  end

  test do
    system "#{bin}/cl", "version"
  end
end

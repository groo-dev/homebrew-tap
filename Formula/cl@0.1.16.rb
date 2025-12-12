class Cl < Formula
  desc "Switch between multiple Cloudflare/Wrangler accounts"
  homepage "https://github.com/groo-dev/cl-wrangler"
  version "0.1.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cl-wrangler/releases/download/v0.1.16/cl_darwin_arm64.tar.gz"
      sha256 "556688bb5af37d0fc53deaf764b35b436cd586d9419b1dc05d502ae81c489ec3"
    end
    on_intel do
      url "https://github.com/groo-dev/cl-wrangler/releases/download/v0.1.16/cl_darwin_amd64.tar.gz"
      sha256 "d976a2ec9f73a15849d43b157dd8e0c72bcccdefb033422f11a692a7dffc95d4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cl-wrangler/releases/download/v0.1.16/cl_linux_arm64.tar.gz"
      sha256 "d7005ab80427cade5dca11cacb6f4ec646b298af9c86c98df5f54e9f4f35ac97"
    end
    on_intel do
      url "https://github.com/groo-dev/cl-wrangler/releases/download/v0.1.16/cl_linux_amd64.tar.gz"
      sha256 "51363fc19e5c83a2d4175a75c78f648c0ae21bfa67ab3b9e21d215384d72b60c"
    end
  end

  def install
    bin.install "cl"
  end

  test do
    system "#{bin}/cl", "version"
  end
end

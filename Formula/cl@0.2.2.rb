class Cl < Formula
  desc "Switch between multiple Cloudflare/Wrangler accounts"
  homepage "https://github.com/groo-dev/cl-wrangler"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cl-wrangler/releases/download/v0.2.2/cl_darwin_arm64.tar.gz"
      sha256 "6b09db1740e1acc604e8ab680bfe11a428438217c23d95fad663b69c4c7f1cd6"
    end
    on_intel do
      url "https://github.com/groo-dev/cl-wrangler/releases/download/v0.2.2/cl_darwin_amd64.tar.gz"
      sha256 "da6649b14b434f0a02c0a5d850dc156331f70c8c6c14103219fb1efc341420c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cl-wrangler/releases/download/v0.2.2/cl_linux_arm64.tar.gz"
      sha256 "f10798124b86f1679a31b2ef8cb1045c7316f7e60f7375b159429c56b9f65750"
    end
    on_intel do
      url "https://github.com/groo-dev/cl-wrangler/releases/download/v0.2.2/cl_linux_amd64.tar.gz"
      sha256 "3f638b12d729a4950c2f79fe83574b932d6ba02623b01e57f9fe882402cddb1d"
    end
  end

  def install
    bin.install "cl"
  end

  test do
    system "#{bin}/cl", "version"
  end
end

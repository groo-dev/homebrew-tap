class Groo < Formula
  desc "CLI tool for managing and running dev servers in monorepos"
  homepage "https://github.com/groo-dev/cli"
  version "0.0.30"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.30/groo_darwin_arm64.tar.gz"
      sha256 "9a2bf22e781d79f55bb4337b3e7b226c3f15ac9794cbf77af72b510cda04e041"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.30/groo_darwin_amd64.tar.gz"
      sha256 "e576c5fe1cc6665bf68020d5122d060a6ac473307fa91fdea3612484f18ed467"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.30/groo_linux_arm64.tar.gz"
      sha256 "b7552d6d0b74efb6146beafa321f656afb10a93a4644820cd95dd005190f4027"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.30/groo_linux_amd64.tar.gz"
      sha256 "56f78260976ed9195dc996c681b64340d500125910a60732d52a6260d3175590"
    end
  end

  def install
    bin.install "groo"
  end

  test do
    system "#{bin}/groo", "--version"
  end
end

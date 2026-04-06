class Groo < Formula
  desc "CLI tool for managing and running dev servers in monorepos"
  homepage "https://github.com/groo-dev/cli"
  version "0.0.36"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.36/groo_darwin_arm64.tar.gz"
      sha256 "02644afec8282a5aecf7fee59511b7095f6adc3dd20eda87ceb30274b4b6c039"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.36/groo_darwin_amd64.tar.gz"
      sha256 "fdf3402b82e7ee696fdb10da7662c766794a727c86d5bd6c6b558867580d2803"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.36/groo_linux_arm64.tar.gz"
      sha256 "ffcdbc675de88c5d1796f4ca7b0fa6f666307c7f32b34e0f20cead6856c98561"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.36/groo_linux_amd64.tar.gz"
      sha256 "a890df74b456bf462e70529b61cfa37b07a99c93bb059864642f66a1d0cf4745"
    end
  end

  def install
    bin.install "groo"
  end

  test do
    system "#{bin}/groo", "--version"
  end
end

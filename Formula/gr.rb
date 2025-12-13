class Gr < Formula
  desc "CLI tool for managing and running dev servers in monorepos"
  homepage "https://github.com/groo-dev/cli"
  version "0.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/v0.0.4/gr_darwin_arm64.tar.gz"
      sha256 "bf2117dee8ec7322c6faefd13a222a12327ffb251c95764e9a13943e48cde7d9"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/v0.0.4/gr_darwin_amd64.tar.gz"
      sha256 "ca8d72a2a420fc83b8ed004ede2a7870d3fd1d6ff31929a431766fdbe2067c15"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/v0.0.4/gr_linux_arm64.tar.gz"
      sha256 "282015f25740ef1a49aef3e74d90433348c2b9b951cb0a1c02d6cd459de4d7fd"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/v0.0.4/gr_linux_amd64.tar.gz"
      sha256 "97918188b84ed5156e76157f07b886f0f935af43568b3feb082f60b2636dc96d"
    end
  end

  def install
    bin.install "gr"
  end

  test do
    system "#{bin}/gr", "--version"
  end
end

class Groo < Formula
  desc "CLI tool for managing and running dev servers in monorepos"
  homepage "https://github.com/groo-dev/cli"
  version "0.0.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.13/groo_darwin_arm64.tar.gz"
      sha256 "cdd3351db2cda431144cf3b869fd1bd17b1b0db0415090b1d322f4095088f3d7"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.13/groo_darwin_amd64.tar.gz"
      sha256 "8414977ec4838f2138d1ce9577bdf8d6fcad2bd72db16641af912afd0bd381ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.13/groo_linux_arm64.tar.gz"
      sha256 "a782ea7a2cae9758119fd1aebd0374302da90395c1c809a1cc39589e8792fd92"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.13/groo_linux_amd64.tar.gz"
      sha256 "4fdea794a57b4e143564f9b19a7eb405221bea2f32e4b728dba8ba57efc26785"
    end
  end

  def install
    bin.install "groo"
  end

  test do
    system "#{bin}/groo", "--version"
  end
end

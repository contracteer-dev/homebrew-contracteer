# Generated with JReleaser 1.23.0 at 2026-09-26T22:18:18.752148405Z

class Contracteer < Formula
  desc "The loyal guard of your API contracts."
  homepage "https://contracteer.dev"
  version "4.1.1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/contracteer-dev/contracteer/releases/download/4.1.1/contracteer-4.1.1-linux-aarch_64.zip"
    sha256 "98e19dfd9370aa69fc8c26a3ccaf7e1b4253dcfd2e05b7317d9a0277afe45a70"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/contracteer-dev/contracteer/releases/download/4.1.1/contracteer-4.1.1-linux-x86_64.zip"
    sha256 "e4509cca338b0537768f2353a4972056c3f4dcf6cdc7129ac13465e9f7e0e083"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/contracteer-dev/contracteer/releases/download/4.1.1/contracteer-4.1.1-osx-aarch_64.zip"
    sha256 "f0810c2b5f65b6c89651649006f25ac0918ac5a7f713e24fbe61bd6e31457529"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/contracteer-dev/contracteer/releases/download/4.1.1/contracteer-4.1.1-osx-x86_64.zip"
    sha256 "8d9c010f3b2d855fba0ef64ea81b98357f27c92092985c3906e078d22814475b"
  end

  livecheck do
    url "https://github.com/contracteer-dev/contracteer/releases/latest"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/contracteer" => "contracteer"
  end

  test do
    output = shell_output("#{bin}/contracteer --version")
    assert_match "4.1.1", output
  end
end

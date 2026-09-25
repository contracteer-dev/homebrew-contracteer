# Generated with JReleaser 1.23.0 at 2026-09-25T15:34:13.511818955Z

class Contracteer < Formula
  desc "The loyal guard of your API contracts."
  homepage "https://contracteer.dev"
  version "4.1.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/contracteer-dev/contracteer/releases/download/4.1.0/contracteer-4.1.0-linux-aarch_64.zip"
    sha256 "487dde00e90fdf59c1d83b3315b519a39c0676144c1861affe60b670901595d9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/contracteer-dev/contracteer/releases/download/4.1.0/contracteer-4.1.0-linux-x86_64.zip"
    sha256 "1ae2a3c489b9c8eb34fec3cf4c1b3da3b70c2d76910b04816dd72dd383d5dd84"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/contracteer-dev/contracteer/releases/download/4.1.0/contracteer-4.1.0-osx-aarch_64.zip"
    sha256 "ea724a166f9aadeda39cb57e183a22bb97272a389aa098edcfda81695c17f320"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/contracteer-dev/contracteer/releases/download/4.1.0/contracteer-4.1.0-osx-x86_64.zip"
    sha256 "354c9a3479de527ca94900c1547b9008bc2df2c5a21967ffd3c1f7c3d6dc45a6"
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
    assert_match "4.1.0", output
  end
end

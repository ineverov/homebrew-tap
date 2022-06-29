# Generated with JReleaser 1.0.0 at 2022-06-29T17:07:09.833075+02:00
class Conductor < Formula
  desc "Conductor CLI"
  homepage "https://conductor.mobile.dev"
  url "https://github.com/mobile-dev-inc/conductor/releases/download/0.0.1-setup-test/conductor-cli-0.0.1-setup-test.zip"
  version "0.0.1-setup-test"
  sha256 "a5a5083eb32dd1e86de02acaf2e2269f88ad034f8a42465251145dbdb85902b4"
  license "Apache-2.0"

  depends_on "openjdk@8"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/conductor" => "conductor"
  end

  test do
    output = shell_output("#{bin}/conductor --version")
    assert_match "0.0.1-setup-test", output
  end
end

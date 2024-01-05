class Iggy < Formula
  desc "Iggy is the persistent message streaming platform written in Rust, supporting QUIC, TCP and HTTP transport protocols, capable of processing millions of messages per second."
  homepage "https://iggy.rs/"
  url "https://github.com/iggy-rs/iggy/archive/refs/tags/server-0.1.7.tar.gz"
  sha256 "de6fac3830acb2a45eb04cd0cec0ccb2b34a27756b82ac73351d1c3d4f8f28c0"
  license "MIT"
  head "https://github.com/iggy-rs/iggy.git", branch: "master"

  depends_on "rust" => :build

  def install
    pkgetc.install "configs"

    system "cargo", "install", *std_cargo_args(path: "server")
    system "cargo", "install", *std_cargo_args(path: "cmd")
  end

  def caveats
    <<~EOS
      By default, iggy server configuration file is loaded from the current working directory.
      You can specify the path to your custom configuration file by setting IGGY_CONFIG_PATH
      environment variable, for example:

        export IGGY_CONFIG_PATH=configs/server.json

      Alternatively you may want to use the default server configuration like this:

        IGGY_CONFIG_PATH=#{pkgetc}/configs/server.json iggy-server
    EOS
  end

  test do
    assert_match "server #{version}", shell_output("#{bin}/iggy-server -V").strip
  end
end
class Something < Formula
  desc "To test homebrew"
  homepage "https://harikrishnanbalagopal.github.io/move2kube"
  url "https://github.com/HarikrishnanBalagopal/something/archive/v0.1.0.tar.gz"
  sha256 "01401d7f7dd38d85b6d29c9a4420cb4993deedb3b57ab1d51d32c78666fb2cc9"
  license "Apache-2.0"

  depends_on "go@1.15" => :build

  def install
    system "make", "build"
  end

  test do
    system "#{bin}/dist/something"
  end
end

class Something < Formula
  desc "To test homebrew"
  homepage "https://harikrishnanbalagopal.github.io/move2kube"
  url "https://github.com/HarikrishnanBalagopal/something/archive/v0.1.0.tar.gz"
  sha256 "01401d7f7dd38d85b6d29c9a4420cb4993deedb3b57ab1d51d32c78666fb2cc9"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/HarikrishnanBalagopal/homebrew-something/releases/download/something-0.1.0"
    cellar :any_skip_relocation
    sha256 "50c6e9a212f77583d271ea920d71e53c47fa1fafee906044e9f4f9d27576a087" => :catalina
    sha256 "efa255b273e89afe5fabb9298c1f5a702bd85402b6d31d322918f94143d297a9" => :x86_64_linux
  end

  depends_on "go@1.15" => :build

  def install
    system "make", "build"
    bin.install "./dist/something"
  end

  test do
    system "#{bin}/something"
  end
end

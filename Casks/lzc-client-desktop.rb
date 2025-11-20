cask "lzc-client-desktop" do
  version "1.6.0"

  on_intel do
    sha256 "9c177a8c2e082310c3d7d77f37833f63c708c9ff07450344ed3ccf7d85f26cfa"
    url "https://dl.lazycat.cloud/client/desktop/stable/lzc-client-desktop_v#{version}_x64.dmg"
  end

  on_arm do
    sha256 "97771919f7066f58d01e9dcb427e336b22e1763fb08ae5b458309b0d8a0ba227"
    url "https://dl.lazycat.cloud/client/desktop/stable/lzc-client-desktop_v#{version}_arm64.dmg"
  end

  name "LazyCat Client Desktop"
  desc "LazyCat desktop client application"
  homepage "https://lazycat.cloud/"

  app "LazyCat.app"

  zap trash: [
    "~/Library/Application Support/LazyCat",
    "~/Library/Preferences/com.lazycat.client.plist",
    "~/Library/Caches/com.lazycat.client",
    "~/Library/Logs/LazyCat",
  ]
end

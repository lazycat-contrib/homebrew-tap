cask "lzc-client-desktop" do
  version "1.6.4"

  on_intel do
    sha256 "3a874619459da92aafad196b1cd1da3876a8227b6237c7d45420402095fda943"
    url "https://dl.lazycat.cloud/client/desktop/stable/lzc-client-desktop_v#{version}_x64.dmg"
  end

  on_arm do
    sha256 "2fe68b5362743edcabc1f8025f6e06d880460fe7ab5fd6a48acb95abbb0fabde"
    url "https://dl.lazycat.cloud/client/desktop/stable/lzc-client-desktop_v#{version}_arm64.dmg"
  end

  name "LazyCat Client Desktop"
  desc "LazyCat desktop client application"
  homepage "https://lazycat.cloud/"

  app "懒猫微服.app"

  zap trash: [
    "~/Library/Application Support/LazyCat",
    "~/Library/Preferences/com.lazycat.client.plist",
    "~/Library/Caches/com.lazycat.client",
    "~/Library/Logs/LazyCat",
  ]
end

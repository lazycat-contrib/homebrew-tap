# LazyCat Client Desktop - Homebrew Cask

这是 LazyCat Desktop Client 的 Homebrew Cask 配置文件，支持 Intel (x64) 和 Apple Silicon (arm64) 两种架构。

## 特性

- 自动识别系统架构（Intel 或 Apple Silicon）
- 自动下载对应架构的安装包
- SHA256 校验和验证

## 安装方法

### 方式 1: 从本地安装（开发/测试）

```bash
# 在本目录下执行
brew install --cask ./Casks/lzc-client-desktop.rb
```

### 方式 2: 从 Tap 安装（推荐）

这个 Cask 将发布到 `lazycat-contrib/homebrew-tap` 仓库。用户可以通过以下方式安装：

```bash
# 添加 tap
brew tap lazycat-contrib/tap

# 安装应用
brew install --cask lzc-client-desktop
```

### 发布到 Tap 仓库

1. 将此仓库推送到 `https://github.com/lazycat-contrib/homebrew-tap`
2. Cask 文件已放置在标准的 `Casks/` 目录下
3. 用户即可通过上述命令安装

## 卸载

```bash
brew uninstall --cask lzc-client-desktop
```

## 更新版本

当发布新版本时，需要：

1. 更新 `version` 字段
2. 下载新版本的两个架构的 DMG 文件
3. 计算新的 SHA256 校验和：
   ```bash
   shasum -a 256 lzc-client-desktop_v<VERSION>_x64.dmg
   shasum -a 256 lzc-client-desktop_v<VERSION>_arm64.dmg
   ```
4. 更新 Cask 文件中对应的 `sha256` 值

## 文件说明

- `Casks/lzc-client-desktop.rb` - Homebrew Cask 配置文件
- `lzc-client-desktop_v1.6.0_x64.dmg` - Intel 架构的安装包（仅用于计算校验和，不提交到仓库）
- `lzc-client-desktop_v1.6.0_arm64.dmg` - Apple Silicon 架构的安装包（仅用于计算校验和，不提交到仓库）
- `.gitignore` - Git 忽略配置，排除 DMG 文件

## 版本信息

当前版本: v1.6.0

## Cask 结构说明

```ruby
on_intel do
  # Intel 架构的配置
  sha256 "..."  # x64 版本的校验和
  url "..."     # x64 版本的下载链接
end

on_arm do
  # Apple Silicon 架构的配置
  sha256 "..."  # arm64 版本的校验和
  url "..."     # arm64 版本的下载链接
end
```

Homebrew 会根据用户的系统架构自动选择对应的配置进行安装。

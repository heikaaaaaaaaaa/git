# 作品集网站上线完整手册 · Portfolio Deployment Guide

本文档带你从上到下走完整个流程，每一步都给出**要做什么**、**输入什么命令**、**点击哪里**、**预期看到什么**。
所有命令都在 **PowerShell** 中运行（Windows 自带）。

---

## 第 0 步：确认前置条件

需要 3 样东西，缺一不可：

1. 已安装 **Git**（本项目已初始化好，通常已具备）
2. 有 **GitHub 账号**（你已有：`heikaaaaaaaaaa`）
3. 能联网

检查 Git 是否可用——打开 PowerShell 输入：

```powershell
git --version
```

看到类似 `git version 2.55.0.windows.3` 就说明 OK。

---

## 第 1 步：进入作品集文件夹

在 PowerShell 里粘贴下面这行，回车：

```powershell
cd "C:\Users\CanYe\Documents\Codex\2026-08-28\irm-https-cdn-deepseek-com-api\outputs\portfolio-site"
```

输入后执行：

```powershell
dir
```

应看到这些文件：`index.html`、`README.md`、`DEPLOY.md`、`deploy.ps1`、`css/`、`js/`、`assets/`。

---

## 第 2 步：确认 git 状态

```powershell
git status
```

预期结果：`On branch main`，`nothing to commit, working tree clean`。

```powershell
git remote -v
```

预期结果：`origin  https://github.com/heikaaaaaaaaaa/git.git`（fetch 和 push 两条）。

> 如果 remote 不是这个地址，运行下面这行改成对的：
> `git remote set-url origin https://github.com/heikaaaaaaaaaa/git.git`

---

## 第 3 步：推送到 GitHub（二选一）

### 方式 A：一键脚本（推荐）

直接运行：

```powershell
.\deploy.ps1
```

脚本会自动：切到 `main` 分支 → 指向你的仓库 → 把作品集文件推上去 → 打印上线地址。

**首次运行会弹出 GitHub 登录窗口**，按提示授权即可（网页点一下，很快）。

### 方式 B：手动命令

```powershell
git push -u origin main
```

同样会触发登录授权。

### 推送成功的标志

看到类似：

```
Enumerating objects: ...
Writing objects: ...
To https://github.com/heikaaaaaaaaaa/git.git
 * [new branch]      main -> main
Branch 'main' set up to track remote branch 'main' from 'origin'.
```

如果没有报错，代码就上传成功了。

> 常见报错「failed to push some refs」：说明远程 main 和本地不一致。你仓库里目前只有一个占位 README，可放心用：
> `git push -u origin main --force`

---

## 第 4 步：在 GitHub 网页开启 Pages（关键）

1. 浏览器打开 `https://github.com/heikaaaaaaaaaa/git`
2. 点顶部的 **Settings**（齿轮图标）
3. 左侧菜单往下找到 **Pages**
4. 在 **Build and deployment** 区域：
   - **Source** 选 `Deploy from a branch`
   - **Branch** 选 `main`
   - **Folder** 选 `/(root)`
5. 点 **Save**

页面顶部会显示：

```
Your site is live at https://heikaaaaaaaaaa.github.io/git/
```

> 第一次保存后可能显示「Your site is ready to be published at …」，等 1-2 分钟刷新即可。

---

## 第 5 步：验证网站是否可访问

在浏览器打开：

```
https://heikaaaaaaaaaa.github.io/git/
```

> 如果刚保存，有时需要多等一两分钟才生效。看到你的作品集页面（深色、有 Hero 区和项目卡片）就成功了。

### 如果显示 404

- 确认第 4 步已选 `main` + `/(root)` 并保存
- 确认仓库是**公开**的：Settings → General → Danger Zone → Change visibility → 改为 Public

---

## 第 6 步：确认仓库是公开的（重要）

Pages 必须在**公开仓库**上才能用。检查方法：

仓库页 → **Settings** → 拉到最底部 **Danger Zone** → 看 **Change repository visibility** 是否显示 "This repository is currently public."。

如果显示 private，点 **Change visibility** → 选 **Make public** → 输入仓库名确认。

---

## 完成后：你的网址

```
https://heikaaaaaaaaaa.github.io/git/
```

把这个链接发给客户即可。海外访问稳定，国内也能打开（稍慢）。

---

## 以后想改内容怎么办

1. 用 VS Code / 记事本改 `index.html`（文字、项目、联系方式都在里面）
2. 回到这个文件夹，运行：

```powershell
git add .
git commit -m "update portfolio"
git push
```

3. 等 1-2 分钟，网站自动更新。

---

## 可选：绑定自己的域名

1. 在域名商处买一个域名（如 `example.com`）
2. GitHub 仓库页 → Settings → Pages → **Custom domain** 填你的域名 → Save
3. 到域名 DNS 网站，加一条记录：
   - 类型 `CNAME`
   - 主机记录 `www`（或 `@`，看你需要）
   - 值 `heikaaaaaaaaaa.github.io`
4. 等 DNS 生效（几分钟到几小时），网站即可通过你的域名访问。

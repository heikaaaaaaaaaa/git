# Portfolio · AI-Assisted Tech Specialist

A clean, bilingual, responsive single-page portfolio built with plain HTML/CSS/JS.

> 一个用纯 HTML/CSS/JS 写成的、中英双语的响应式单页作品集网站，可直接部署到 GitHub Pages。

## 内容 / Content

- Services: Python, Automation, Data, Web, Bug Fixing, Office & EN-CN Translation
- Projects: 5 real projects (traffic sign recognition, face recognition, cat breed CNN, pedestrian counting, retrieval chatbot)
- Bilingual hero, about, and contact sections

## 本地预览 / Preview locally

```bash
cd portfolio-site
python -m http.server 8000
# open http://localhost:8000
```

## 部署到 GitHub Pages / Deploy to GitHub Pages

用户名：`heikaaaaaaaaaa`。仓库名按你新建时取的为准，下面以 `portfolio` 为例（若你打算沿用 `git` 仓库，把两处 `portfolio` 改成 `git` 即可，注意该仓库需是公开仓库才能开 Pages）。

1. 在 GitHub 新建一个**公开**仓库，名字随意（如 `portfolio`）。
2. 把本目录内容推上去：

```bash
cd portfolio-site
git init
git add .
git commit -m "Portfolio website"
git branch -M main
git remote add origin https://github.com/heikaaaaaaaaaa/portfolio.git
git push -u origin main
```

> 如果仓库已存在且里面已有内容，可省略 `git init` 和 `git add ./git commit`，直接把本目录提交追加到该仓库。

3. 在 GitHub 仓库页打开 **Settings → Pages**。
4. Source 选 **Deploy from a branch**，Branch 选 **main**，目录选 **/(root)**，点 **Save**。
5. 等待 1-2 分钟，站点地址为（仓库名 `portfolio` 时）：

```
https://heikaaaaaaaaaa.github.io/portfolio/
```

若仓库名为 `git`，地址为 `https://heikaaaaaaaaaa.github.io/git/`。

> 海外访问稳定，国内也能打开（稍慢）。联系方式已填好：邮箱 `evan3023619119@gmail.com`，GitHub `github.com/heikaaaaaaaaaa`。

## 自定义域名（可选）/ Custom domain (optional)

如果绑定了自己的域名，在 Settings → Pages → Custom domain 里填域名，再到域名 DNS 服务商加一条 CNAME 指向 `heikaaaaaaaaaa.github.io`。

## 修改联系方式 / Update contact info

编辑 `index.html` 里的 `contact` 区块即可。

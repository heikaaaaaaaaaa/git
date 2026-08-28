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

1. 新建一个 GitHub 仓库（名字随意，如 `portfolio`）。
2. 把本目录内容推上去：

```bash
cd portfolio-site
git init
git add .
git commit -m "Portfolio website"
git branch -M main
git remote add origin https://github.com/<你的用户名>/portfolio.git
git push -u origin main
```

3. 在 GitHub 仓库页打开 **Settings → Pages**。
4. Source 选 **Deploy from a branch**，Branch 选 **main**，目录选 **/(root)**，点 **Save**。
5. 等待 1-2 分钟，站点地址为：

```
https://<你的用户名>.github.io/portfolio/
```

> 直接把上面 `<你的用户名>` 换掉即可上线。海外访问稳定，本机也请把 index.html 里的联系方式改成你的真实邮箱和 GitHub。

## 自定义域名（可选）/ Custom domain (optional)

如果绑定了自己的域名，在 Settings → Pages → Custom domain 里填域名，再到域名 DNS 服务商加一条 CNAME 指向 `<你的用户名>.github.io`。

## 修改联系方式 / Update contact info

编辑 `index.html` 里的 `contact` 区块，替换：

```html
<a class="btn btn-primary" href="mailto:your.email@example.com">📧 邮箱 Email</a>
<a class="btn btn-ghost" href="https://github.com/your-username" ...>🐙 GitHub</a>
```

改成真实邮箱和 GitHub 地址即可。

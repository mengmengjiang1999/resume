# 陈张萌 · 技术简历

中文单页简历，沿用原项目 `resume.cls` 的单栏布局与分节横线。

- 主文件：`resume.tex`
- 输出：`output/pdf/resume.pdf`
- 内容依据：用户提供的 `tech_resume_template.tex`，包含个人信息、教育背景及当前工作经历；不添加未经确认的业绩指标。

## 本地编译

安装包含 XeLaTeX 和 xeCJK 的 TeX 发行版后，在项目根目录运行：

```sh
make
```

也可以使用 Tectonic（首次运行需要联网下载 TeX 依赖）：

```sh
mkdir -p output/pdf
tectonic --outdir output/pdf resume.tex
```

中文字体优先使用 macOS 宋体与黑体，其他系统回退到 Fandol；西文字体使用项目内置字体。

修改后请检查 PDF 页数与视觉排版，保持 A4 一页。`make clean` 仅清理编译辅助文件，保留 PDF。生成的 PDF 默认由 `.gitignore` 排除。

## 模板来源

基于 [billryan/resume](https://github.com/billryan/resume)，沿用原项目 MIT 许可；字体遵循各自许可。

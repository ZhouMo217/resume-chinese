# resume-chinese
中文LaTeX简历模板

主要参考：

- [billryan/resume](https://github.com/billryan/resume)
- [WonderCV 学生求职模板](https://www.wondercv.com/zh-CN/resume_templates)
- [Htallone/myCV](https://github.com/Htallone/myCV)
- [hijiangtao/resume](https://github.com/hijiangtao/resume)

LaTex语法内容以及框架基本上参照[Htallone/myCV](https://github.com/Htallone/myCV), 宏主要参照[hijiangtao/resume](https://github.com/hijiangtao/resume), 集各家之所长后做了些小修改, 方便直接从overleaf编译. 

### 使用步骤

1. Download ZIP
2. Overleaf -> New Project -> Upload Project
3. Do your own editing
4. 选择complier为`XeLaTeX`

或者

0. 直接使用[Overleaf模板](https://www.overleaf.com/latex/templates/resume-chinese/vbrmnfrgbscv), 开始你的编辑


### 服务器上的编辑与预览

服务器需要有 `xelatex`、`latexmk`，以及模板用到的 `xeCJK`、`fontawesome` 等 TeX 宏包。

当前 `jx_dev_test` 已在 `/mnt/workspace/data/jiangxu/.vscode/settings.json` 配置了 LaTeX Workshop，可以继续使用现有的 `jiangxu` 工作区，无需切换目录。

1. 在现有工作区打开 `latex/resume-chinese/resume.tex`。如果希望单独打开简历项目，也可以打开 `resume.code-workspace`，或直接打开 `resume-chinese` 文件夹。
2. 打开 `resume.tex`，执行命令 **LaTeX Workshop: Build LaTeX project**。
3. 执行 **LaTeX Workshop: View LaTeX PDF file**，在编辑器内查看 PDF。
4. 修改 `body.tex` 中的正文并保存；插件检测到文件变化后，会使用 XeLaTeX 自动编译并刷新预览。

姓名和联系方式在 `resume.tex` 中。照片版请打开 `resume-photo.tex` 后再构建。
新生成的 PDF 位于 `build/resume.pdf` 或 `build/resume-photo.pdf`；项目根目录原有的 PDF 是模板示例。
`.gitignore` 已忽略 `build/` 中的编译产物。

也可以在项目目录使用终端编译，`.latexmkrc` 会选择 XeLaTeX 和 `build/` 输出目录：

```sh
latexmk resume.tex
latexmk resume-photo.tex
```

如果 AI 从共享挂载目录修改文件，而编辑器没有收到文件变化事件，可在服务器终端运行 `latexmk -pvc -view=none resume.tex`，让 latexmk 持续检查源码变化；按 `Ctrl+C` 停止。

###  宏(newcommand)

- `\name`: 姓名
- `\contactInfo`{邮箱}{手机号}{个人主页}`: 个人信息三元组
- `\basicContactInfo`{邮箱}{手机号}: 个人信息两元组, 没有个人主页的可以用这个
- `\logosection{fontawesome command}{小节}`: 用于分节, 如教育背景, 实习项目经历等
- `\dateRange{起始日期}{终止日期}`: 时间区间, 其中使用了特殊对齐策略, 便于在`终止日期`处填写**至今**
- `\datedline{内容}{日期}`: 第二项自动右对齐, 广泛使用于简历中, 嵌套`\dateRange`使用效果更佳
- `\biInfo{}{}`: 两元组信息填充, 以`\quad`分割
- `tripleInfo{}{}{}`: 三元组信息填充, 以`\quad`分割
- `\itemize`: 清单列表，简历中应用最广
- `\enumerate`: 枚举列表，数字标号


### 效果示例

**纯享版:**

![resume](https://zheyuye-image-1257819557.cos.ap-shanghai.myqcloud.com/img/resume.png)


**照片版:**

页眉个人照片+学校logo:

![head](https://zheyuye-image-1257819557.cos.ap-shanghai.myqcloud.com/img/image-20210408152658206.png)

页脚个人信息:

![footer](https://zheyuye-image-1257819557.cos.ap-shanghai.myqcloud.com/img/image-20210408152718217.png)

### 当前简历字体与版式

中文采用 Noto Sans CJK SC，常规与粗体字库已放入 Font/，英文与数字使用 Helvetica Neue。字体设置位于 setting.cls，正文为 10.5pt、行距 14.2pt；更换编译机器不需要另装这两份中文字库。Noto 字体许可见 Font/Noto-COPYRIGHT.txt。

教育背景沿用原版的两行学历与缩进双学位布局，日期右对齐，课程两行对齐。项目标题统一使用北大红，邮箱显示黑色并保留邮件链接。京东实习文字在 internship.tex，项目标题可直接修改。

### 当前内容与自然分页

- body.tex：教育背景与正文组织，保留已确认课程。
- internship.tex：京东实习公司栏；时间按本人提供的 2026.07–2026.11 填写。
- research.tex：实习期间的 PDRVLA 数据处理、ECoT 合成／消融和评测工作。
- intent-classification.tex：2026.10–2026.11 意图分类与 JEV 提示词自进化；未确认的实现细节标为草稿。
- ddvla-ppo.tex：在研离散扩散 PPO 项目，未提供的进度与结果留作待补充。
- tool-use.tex：保留原工具调用项目内容。

正文已取消手动分页和固定“实习经历（续）”横栏。页面会随内容增长自然变化；标题前自动预留空间，页脚自动覆盖所有页面，不固定为两页，也不会自动缩小字号。

报告依据和待确认事项见 CONTENT_NOTES.md。灰色“待补充／待确认”和明确的“草稿”段落用于后续编辑；确认后可替换为实际内容。

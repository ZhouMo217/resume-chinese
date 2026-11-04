## 北京大学校标与主题色

- 来源页面：https://vim.pku.edu.cn/xzzq/index.htm
- 官方组合包：https://vim.pku.edu.cn/docs/20240527144451726806.zip
- 使用规范：https://vim.pku.edu.cn/docs/20240527144814943256.pdf
- pku-horizontal-original.png：官方“标志与中英文校名组合规范_左右.png”原图。
- pku-horizontal.png：沿用原图比例与透明通道，红色部分统一到规范 A7 列出的 Web 色 #94070A，英文校名保留原色。

简历标题、分隔线、链接、横栏左侧竖线与页脚使用同一 PKURed 定义。
官方规范 A7 同时列出印刷值 C0 M100 Y100 K45、RGB 栏 R139 G0 B18 和 Web 栏 94070A；
当前屏幕预览采用 Web 栏的 #94070A，统一定义在 resume.tex。

## 京东集团

- 来源页面：https://about.jd.com/
- 官网页头样式：https://misc.360buyimg.com/jdf/1.0.0/unit/global-header/5.0.0/global-header.css
- 官方图片：https://misc.360buyimg.com/jdf/1.0.0/unit/global-header/5.0.0/i/jdlogo-201708-@2x.png
- jd-group-original.png：带 Joy 的京东集团官网原图。
- jd-group.png：保留标识颜色和比例，将与图像边界连通的纯白背景转为透明，贴合横栏底色。

横栏标注“京东集团 · 京东科技”，底色继续使用 #FFF1F0。
当前使用用户提供的 JDlogo.webp，经分色和 Potrace 轮廓描摹生成
jd-joy-vector.svg / jd-joy-vector.pdf。两份输出都是真实矢量路径，没有内嵌位图。
保留原图红底、Joy 和领结，渐变阴影以少量色阶近似，不等同于官方原始矢量文件。
JDlogo.webp 原文件保留，早期 jd-group 和 jd-tech 素材不再被简历引用。

横栏样式参考：
https://github.com/LiuMengxuan04/vibe-resume/tree/main/templates/internship-employment/dense-two-page

## 页脚

footer.tex 中的 githuburl 与 huggingfaceurl 用于设置个人主页链接。
两页底栏打印完整 HTTPS 地址，同时保留可点击链接。

Hugging Face 图标使用其官网素材，保留原始颜色与比例：
https://huggingface.co/front/assets/huggingface_logo-noborder.svg

huggingface.svg 为原始矢量文件，huggingface.pdf 为供 XeLaTeX 使用的矢量 PDF。

当前底栏使用 huggingface-white.svg / huggingface-white.pdf：由原始图标轮廓生成白色单色版本，面部与手部细节使用透明镂空。

横栏实际引用 jd-joy-rounded.pdf（对应 jd-joy-rounded.svg），在原矢量图上增加圆角裁切，显示高度 8.5mm；横栏左侧竖线与底色使用一致的圆角边界。

# Use XeLaTeX for the bundled Chinese and Latin fonts.
$pdf_mode = 5;
$out_dir = 'build';
$xelatex = 'xelatex -synctex=1 -interaction=nonstopmode -file-line-error -halt-on-error %O %S';
@default_files = ('resume.tex');

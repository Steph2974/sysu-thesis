#!/bin/bash

# 1. 先编译一次，生成交叉引用、目录等辅助文件
xelatex -interaction=nonstopmode main.tex
# 2. 调用 bibtex 处理参考文献
bibtex main
# 3. 再次编译，使文献等引用生效
xelatex -interaction=nonstopmode main.tex
xelatex -interaction=nonstopmode main.tex

# 或者直接使用 latexmk，自动完成上述步骤（推荐）
# latexmk -pdf -xelatex -bibtex -interaction=nonstopmode main.tex

# 可自动清理临时文件（可选）
# latexmk -c main.tex
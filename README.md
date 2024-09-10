# Website crated with **quarto**

## Config File

```{r}
file.edit("./_quarto.yml")
```

## Main webpage file 

```{r}
file.edit("./index.qmd")
```

## Update "Research" section:

1. update file with list of publications

```{r}
file.edit("/Users/luca/Documents/CV/list_of_publications.tex")
```

2. create `publications/index.qmd` using

```{r}
cwd = getwd()
# setwd("/Users/luca/Documents/www/content/publication/")
# convert .tex to .md 
system("pandoc -f latex -t markdown /Users/luca/Documents/CV/list_of_publications.tex -o publications/index.qmd")
# clean sections, bibitem, ...
# sed -i '' 's/{#.*//' $FILEOUT
# sed -i '' 's/:::.*//' $FILEOUT
# system("./publication.sh")
setwd(cwd)
```

## Update "WGMBC" webpage:

```{r}
path = "/Users/luca/GoogleDrive/WGMBC/WGMBC_webpage/wgmbc.Rproj"
system(paste("open", path))
```

## Render the website in the current directory

```{r}
quarto::quarto_render()
```

## View current website

```{r}
system("open docs/index.html")
```

## Update web site on server

Push to GitHub:

```{r}
system(paste0('git add --all && git commit -m "update"'))
system("git push origin main")
```

Open <https://luca-scr.github.io>


# References

- https://quarto.org/docs/websites/
- https://ucsb-meds.github.io/customizing-quarto-websites
- https://ucsb-meds.github.io/creating-quarto-websites/
- https://www.mm218.dev
  https://github.com/mikemahoney218/mm218.dev
-	https://www.andreashandel.com/posts/2022-10-01-hugo-to-quarto-migration/
- https://andreaczhang.github.io/blog/blog_20230103_blogdown2quarto/index.html
-	https://silviacanelon.com/blog/2023-09-29-hello-quarto/
-	https://ddimmery.com/posts/quarto-website/

- [iconify](https://github.com/mcanouil/quarto-iconify)
  https://icon-sets.iconify.design/
- [Fontawesome](https://fontawesome.com/search?o=r&m=free)
- [Academicons](https://jpswalsh.github.io/academicons/)

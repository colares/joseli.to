@echo off
@echo [= JOSELITO.SPACE DEPLOYER =]
@call hexo clean
@call hexo generate
@call git add .
@call git commit -am '%1'
@call xcopy "public" "gh-pages" /i/e/r/y
@cd gh-pages
@call git add .
@call git commit -am 'Update: %1 %date% %time%'
@call git push origin gh-pages
@cd ..
@echo DONE
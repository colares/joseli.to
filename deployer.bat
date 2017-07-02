@echo off
@echo [= JOSELITO.SPACE DEPLOYER =]
@call git add .
@call git commit -am "%~1"
@call git push origin master
@call hexo clean
@call hexo generate
@call xcopy "public" "gh-pages" /i/e/r/y
@cd gh-pages
@call git add .
@call git commit -am "Update: %~1 %date% %time%"
@call git push origin gh-pages
@cd ..
@echo DONE
@echo off
@color 1f
@echo [= JOSELITO.SPACE DEPLOYER 3000 =]
@call git add .
@call git commit -am "%~1"
@call git push origin master
@call hexo clean
@call hexo generate
@call xcopy "public" "gh-pages" /i/e/r/y
@cd gh-pages
@call git add .
@call git commit -am "Update: %~1 (%date% %time%)"
@call git push origin gh-pages
@cd ..
@COLOR
@echo [= DONE =]
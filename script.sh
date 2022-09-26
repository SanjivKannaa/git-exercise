#!/bin/bash


#1
git clone https://github.com/SanjivKannaa/git-exercise-working.git
cd git-exercise-working

#2
git checkout -b branch_1

#3
touch aboutme.txt
echo "hey i am sanjiv kannaa from CSE 2nd year" > aboutme.txt

#4
git add aboutme.txt
git commit -m "added aboutme.txt to branch_1"
git checkout main

#5
git merge branch_1
git checkout branch_1

#6
git checkout -b branch_2

#7
#using awk to replace the text in line 5 (nr => number of record)
#this process can also be done manually using any code editor
echo "line_1
line_2
line_3
line_4
xyz..
line_6
line_7
line_8
line_9
line_10
" > content.txt

#8
git add content.txt
git commit -m "updated line 5"
git checkout main
git merge branch_2

#9
git checkout branch_1
git reset --hard HEAD~1

#10
git checkout main
git checkout -b branch_3

#11
touch ign.txt
mkdir ignore/ #adding a / after the folder name adds it to .gitignore
touch ./ignore/temp1.txt
touch ./ignore/temp2.txt

#12
git add .
git commit -m "added .gitignore files and folders"

#13
git checkout -b branch_4

#14
touch f1.txt
touch f2.txt
echo "ʕ•́ᴥ•̀ʔ" > f1.txt
echo "( ͡❛ ͜ʖ ͡❛)" > f2.txt
git add .
git commit -m "addded f1 and f2"

#15
git checkout main
touch m1.txt
echo "😜" > m1.txt
git add m1.txt

#16
git checkout branch_4
git rebase main

#17
git checkout branch_3
git checkout -b temp_branch

#18
touch temp_file.txt
echo "bruhhhhh" > temp_file.txt
git stash
git checkout branch_3

#19

#20
git checkout temp_branch
git stash pop .
git add .
git commit -m "moved content from stash to work"


#pushing to github
git push --set-upstream origin branch_1
git push --set-upstream origin branch_2
git push --set-upstream origin branch_3
git push --set-upstream origin branch_4
git push --set-upstream origin temp_branch
git push
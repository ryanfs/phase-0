- How does tracking and adding changes make developers' lives easier?
  - You have a history of all the changes that were made which will all you to revert to a previous stable state if something goes wrong.
- What is a commit?
  - A commit is when you stage your code from your local machine and put it into your git repo.
- What are the best practices for commit messages?
  - They should be in the present tense and tell the action that will happen if someone runs the code that exists in your commit.
- What does the HEAD^ argument mean?
  - The HEAD argument shows the first 20 lines of a file in the terminal.
- What are the 3 stages of a git change and how do you move a file from one stage to the other?
  - Update the file locally
  - Add the file to be committed
  - Commit the file
- Write a handy cheatsheet of the commands you need to commit your changes?
  - Create and switch to new branch
git checkout -b new-branch
or
git branch other-branch
git checkout other-branch

Delete branch
git branch -d other-branch

git status
git add .
or
git add file.md
git commit -m “added new file"

Switch back to master
git checkout master
subl .
see that it’s the master branch

Switch back to your branch
git checkout my-branch
subl .

- What is a pull request and how do you create and merge one?
  - A pull request is a way for another person to merge your code into an existing project. You create one by making a request on GitHub and merge it by reviewing the code, making sure there are no conflicts, and adding it to the file.
- Why are pull requests preferred when working with teams?
  - Because it keeps all of the various branches in order and there are fewer conflicts.
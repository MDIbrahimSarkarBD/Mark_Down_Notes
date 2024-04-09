```cmd
git init
git add .
git commit -m "First Time add"

git checkout -b main
git push origin main

echo "# ibrahim733" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/MDIbrahimSarkarBD/Mark_Down_Notes.git
git push -u origin main

gh auth login
gh repo create <11>
gh repo create <repository-name> --private --description "My new repository"

git remote add origin https://github.com/MDIbrahimSarkarBD/Mark_Down_Notes.git

```

যদি আপনি নতুন রিপোজিটোরি তৈরি না করেন এবং লোকাল রিপোজিটোরিতে কোনো পরিবর্তন করেন নি, আপনার নতুন ব্রাঞ্চ তৈরি করে পুশ করার চেষ্টা করুন:

cssCopy code

`git checkout -b main git push origin main`




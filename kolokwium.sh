mkdir "$1"
cd "$1"
git init
git remote add origin git@github.com:s28039/testyssh.git 
cp ../kolokwium_config.sh .
cp ../kolokwium.sh .
echo "Numer indeksu: s28039" > ReadMe.MD
git add .
git commit -m "First commit"
git branch Test
touch Add.txt Skip.txt
head -n 10 kolokwium.sh > Add.txt
tail -n 10 kolokwium > Skip.txt
echo "Skip.txt" > .gitignore
git add .
git commit -m "Test commit"
git push origin Test
git checkout main
git push origin main
git checkout Test
git reset --soft HEAD~2
git commit -m "Clean up"
git push origin Test --force


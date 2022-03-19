name="$(basename $PWD)"

python3 -m venv .venv

mkdir scripts
mkdir bin
mkdir .pyinit
echo "# $name" >> README.md

git init

cp ~/.pyinit/templates/default/__main__.py ./scripts
	cp ~/.pyinit/templates/default/build.sh ./.pyinit
	cp ~/.pyinit/templates/default/run.sh ./.pyinit

git add --all
git commit -m "Initial commit"

name="$(basename $PWD)"

python3 -m venv .venv

mkdir scripts
mkdir bin
mkdir .pyinit

echo "# $name" >> README.md
echo "" >> README.md
echo "## Links" >> README.md
echo "" >> README.md
echo "-[LICENSE](LICENSE)" >> README.md


cp ~/.pyinit/templates/LICENSE .
cp ~/.pyinit/templates/checkin.sh ./.pyinit
cp ~/.pyinit/templates/checkout.sh ./.pyinit
cp ~/.pyinit/templates/install.sh ./.pyinit
cp ~/.pyinit/templates/.gitignore .

if [ $1 =~ "gui" ]; then
	cp ~/.pyinit/templates/gui/__main__.py ./scripts
	cp ~/.pyinit/templates/gui/build.sh ./.pyinit
	cp ~/.pyinit/templates/gui/run.sh ./.pyinit
	echo "" > requirements.txt

elif [ $1 =~ "console" ]; then
	cp ~/.pyinit/templates/console/__main__.py ./scripts
	cp ~/.pyinit/templates/console/console.py ./scripts

        cp ~/.pyinit/templates/console/build.sh ./.pyinit
        cp ~/.pyinit/templates/console/run.sh ./.pyinit

	echo "rich" > requirements.txt

else
	cp ~/.pyinit/templates/default/__main__.py ./scripts
	cp ~/.pyinit/templates/default/build.sh ./.pyinit
	cp ~/.pyinit/templates/default/run.sh ./.pyinit

	echo "" > requirements.txt

fi

source .venv/bin/activate
python3 -m pip install -r requirements.txt
checkout

git init
git add --all
git commit -m "Initial commit"
git branch -M main

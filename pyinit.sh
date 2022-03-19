name="$(basename $PWD)"

python3 -m venv .venv

mkdir scripts
mkdir bin
mkdir .pyinit
echo "# $name" >> README.md
cp ~/.pyinit/templates/LICENSE .
cp ~/.pyinit/templates/checkin.sh ./.pyinit
cp ~/.pyinit/templates/checkout.sh ./.pyinit
cp ~/.pyinit/templates/install.sh ./.pyinit

git init

if [ $1 = "gui" ]; then
	cp ~/.pyinit/templates/gui/__main__.py ./scripts
	cp ~/.pyinit/templates/gui/build.sh ./.pyinit
	cp ~/.pyinit/templates/gui/run.sh ./.pyinit

elif [ $1 = "console" ]; then
	cp ~/.pyinit/templates/console/__main__.py ./scripts
	cp ~/.pyinit/templates/console/console.py ./scripts

        cp ~/.pyinit/templates/console/build.sh ./.pyinit
        cp ~/.pyinit/templates/console/run.sh ./.pyinit

else
	cp ~/.pyinit/templates/default/__main__.py ./scripts
	cp ~/.pyinit/templates/default/build.sh ./.pyinit
	cp ~/.pyinit/templates/default/run.sh ./.pyinit

fi

git add --all
git commit -m "Initial commit"

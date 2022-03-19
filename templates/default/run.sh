echo "Running $(cd $(dirname $(dirname "${BASH_SOURCE[0]}")) && pwd)/scripts/__main__.py"
echo "<----------RUN---------->"
echo ""

time="$(date +%s)"

python3 "$(cd $(dirname $(dirname "${BASH_SOURCE[0]}")) && pwd)/scripts/__main__.py"

time="$(($(date +%s)-time))"

echo ""
echo "<----------RUN---------->"
echo "Done in $time seconds"
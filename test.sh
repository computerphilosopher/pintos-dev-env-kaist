scriptPath=$(readlink -f "$0")
dir=$(dirname "$scriptPath")

if [ "$1" = "--gdb" ]; then
  test_name=$2
  $dir/pintos.sh run utils '-v --gdb -- run '$test_name''
else
  test_name=$1
  $dir/pintos.sh run utils '-v -- run '$test_name''
fi

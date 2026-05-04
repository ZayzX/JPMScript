cd "$(dirname "$0")"

if ! command -v java &> /dev/null
then
    echo "Java is not installed or not added to PATH."
    exit 1
fi

java -jar "wrapper/JPMUpdater.jar" "$@"
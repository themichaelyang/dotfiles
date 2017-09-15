BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PARENTDIR="$(dirname ${BASEDIR})"

sudo apt-get install trash-cli
sudo apt-get install curl

source "${PARENTDIR}/link.sh"
source "${PARENTDIR}/vim/install.sh"
source "${PARENTDIR}/vim/update.sh"


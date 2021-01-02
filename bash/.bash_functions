function timer {
	countdown $(echo "$@"|bc);beep;stopwatch
}

function randline {
	sed -n `echo "$RANDOM" % $(wc -l < $1) + 1 | bc`p $1
}

function flashcard {
	while [ true ]; do
		randline $1 | tr -d '\n'; read
	done
}

function npm-exec {
	PATH="$(npm bin):$PATH"
	$@
}

function gp {
	echo https://gpt.azrcrv.co.uk/$1
}

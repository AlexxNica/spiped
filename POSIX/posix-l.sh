# Should be sourced by `. posix-l.sh` from within a Makefile.
for LIB in rt xnet; do
	if ${CC} -o /dev/null -l${LIB} posix-l.c 2>/dev/null; then
		echo -l${LIB};
	else
		echo "WARNING: POSIX violation: make's CC doesn't understand -l${LIB}" >/dev/stderr
	fi
done

# keep our files modular and specific
# load them in as a standalone, and their platform specific counterparts too
for ref in ".development" ".bash_aliases" ".bash_colors" ".bash_prompt" ".bash_exports"; do

	# do the file itself
	if [ -e $HOME/$ref ] || [ -h $HOME/$ref ]; then
		source $HOME/$ref
	fi

	# do anything platform specific related
	for pf in "linux" "mac"; do

		if [ -e $HOME/"$ref_$pf" ] || [ -h $HOME/"$ref_$pf" ]; then
			source $HOME/"$ref_$pf"
		fi

	done

done

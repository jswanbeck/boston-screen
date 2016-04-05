DIR="$(pwd)" ;
for repo in $(cat repolist.txt) ;
	do cd $DIR/repos/$repo && git pull ;
done ;

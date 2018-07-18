[ -d ../data/ ] || mkdir ../data/

synapse cat --version ${1} syn13363290 | tail -n +2 | while IFS=, read -r id version; do
  synapse get --downloadLocation ../data/ -v $version $id ;
done

[ -d ../data/team_images/ ] || mkdir ../data/team_images/
synapse get -r --downloadLocation ../data/team_images/ syn12861877

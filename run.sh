file_name=$1
limit=$2
segment=$3
urls=(
    "https://www.glassdoor.com/Reviews/Oracle-Reviews-E1737_P363.htm"
)

companies=(
    "Oracle"
)
for ((i = 0; i < ${#urls[@]}; ++i));
do
    python3 $file_name --headless --url "'${urls[$i]}?sort.sortType=RD&sort.ascending=false'" --limit $limit -s $segment -f ${companies[$i]}_review.csv &
done
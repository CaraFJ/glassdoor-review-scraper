file_name=$1
limit=$2
segment=$3
urls=(
    "https://www.glassdoor.com/Reviews/Amazon-Reviews-E6036.htm"
    "https://www.glassdoor.com/Reviews/Microsoft-Reviews-E1651.htm"
    "https://www.glassdoor.com/Reviews/Accenture-Reviews-E4138.htm"
    "https://www.glassdoor.com/Reviews/Oracle-Reviews-E1737.htm"
    "https://www.glassdoor.com/Reviews/IBM-Reviews-E354.htm"
)

companies=(
    "Amazon" "Microsoft" "Accenture" "Oracle" "IBM"
)
for ((i = 0; i < ${#urls[@]}; ++i));
do
    python3 $file_name --headless --url "'${urls[$i]}?sort.sortType=RD&sort.ascending=false'" --limit $limit -s $segment -f ${companies[$i]}_review.csv &
done
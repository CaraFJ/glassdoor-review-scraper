file_name=$1
limit=$2
segment=$3
urls=(
    #"https://www.glassdoor.com/Reviews/Amazon-Reviews-E6036_P2392.htm" #done 31173 / 33247-need deduplicate
    #"https://www.glassdoor.com/Reviews/Microsoft-Reviews-E1651_P666.htm" #19913 #7493 16.5.23
    #"https://www.glassdoor.com/Reviews/Accenture-Reviews-E4138_P385.htm" # done
    #"https://www.glassdoor.com/Reviews/Oracle-Reviews-E1737_P287.htm" #22622 - 3634
    "https://www.glassdoor.com/Reviews/IBM-Reviews-E354_P1613.htm" # ? 16132 17.4.10
)

companies=(
    #"Amazon" "Microsoft" "Accenture" "Oracle" 
    "IBM"  
)
for ((i = 0; i < ${#urls[@]}; ++i));
do
    python3 $file_name --headless --url "'${urls[$i]}?sort.sortType=RD&sort.ascending=false'" --limit $limit -s $segment -f ${companies[$i]}_review2.csv &
done
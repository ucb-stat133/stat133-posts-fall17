
#files=$(ls -1 htmls)
#files=$(ls -1 aux | sed -e 's/\.html$//')

num=110
files=$(ls -1 htmls/lab${num} | sed -e 's/\.html$//')
number=$(ls htmls/lab${num} | wc -l)

echo "there are ${number} html files"

for file in $files
do
	echo "converting ${file}.html to ${file}.pdf"
	wkhtmltopdf --dpi 1000 htmls/lab${num}/${file}.html pdfs/lab${num}/${file}.pdf
done


num=111
files=$(ls -1 htmls/lab${num} | sed -e 's/\.html$//')
number=$(ls htmls/lab${num} | wc -l)

echo "there are ${number} html files"

for file in $files
do
	echo "converting ${file}.html to ${file}.pdf"
	wkhtmltopdf --dpi 1000 htmls/lab${num}/${file}.html pdfs/lab102/${file}.pdf
done





files=$(ls -1 aux | sed -e 's/\.html$//')
num=$(ls htmls | wc -l)

echo "there are ${num} html files"

for file in $files
do
	echo "converting ${file}.html to ${file}.pdf"
	wkhtmltopdf --dpi 1000 htmls/lab102/${file}.html pdfs/lab102/${file}.pdf
done
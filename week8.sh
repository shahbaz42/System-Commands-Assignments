Write a Bash script to reconstruct the Shopping Bill dataset from the OCR data files and store it in a separate file for each card. The reconstructed dataset should contain one file for each card with the name shopping_bill_<card_number>.txt,  "<card_number>" is a number of the card e.g. '1', '4', '12', '24' etc.

The generated files should contain the data in the format given below.
SHOPNAME:CUSTOMER_NAME:CARD_NO
Item:Category:Qty:Price:Cost
Carrots:Vegetable/Food:1.5:50:75
....
....

Where information like shopname, category, item. cost etc. can be fetched from their respective 'ocr_.txt' files. Or you can find all the information in a single file named 'ocr_full.txt'
An example output for the output file shopping_bill_1.txt is given below.
SV Stores:Srivatsan:1
Item:Category:Qty:Price:Cost
Carrots:Vegetables/Food:1.5:50:75
Soap:Toiletries:4:32:128
Tomatoes:Vegetables/Food:2:40:80
Bananas:Vegetables/Food:8:8:64
Socks:Footwear/Apparel:3:56:168
Curd:Dairy/Food:0.5:32:16
Milk:Dairy/Food:1.5:24:36


You can download all the data files from here and work locally to build a solution.
The description of the contents in the data files is given in the table below,

Filename	Information stored
ocr_categories.txt	category values of each card
ocr_head.txt	store name, customer name and card no of each card
ocr_names.txt	customer name of each card
ocr_cost.txt	cost column of each card
ocr_item_record.txt	items purchased with price, quantity and cost
ocr_seqno.txt	card number of each card
ocr_full.txt	full information of each card
ocr_items.txt	items column of each card
ocr_shopname.txt	shop name of each card

All the above files are located in the current working directory.

Note:
Your script may not require all the above mentioned files, hence device a strategy accordingly to reconstruct all the files.
The data('ocr_' files) was created from the images(available in the data) using some optical character reader utility, and hence these files may contain some incorrectly read data,  e.g some character/digits/words may be misread as some other character or words. So your script may need to do some data correction as well. To check these you can use the corrected and generated output files that are uploaded here(generated files). You can download these and match with your generated files on your local machine.
Try to make use of grep/sed/awk inside your Bash scripts wherever required.

Test Case Description:
The data set is same for all the public and private test cases. Although your solution will generate multiple files but only one file is checked in each test case(This is done to enable partial marking if only few files are generated correctly). The name of this file is given in the second line of the input. First line of input is for evaluation purposes. Rest all the lines in each input are same and used to construct the data set.
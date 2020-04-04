# google_covid19_mobility_reports_scraper

Scrapes the data from ALL the PDF files from Google's Mobility Report: https://www.google.com/covid19/mobility/

Tries to make the data machine readable.

More to come.

Many thanks to this fabulous bash crawler for fetching the PDFs: https://github.com/patrikpolyak/google_covid19_community_mobility_reports_data/blob/master/fetch_pdfs.sh


## just give me the data


Two formats, will be expanded with multiple dates:

CSV: https://raw.githubusercontent.com/philshem/scrape_covid19_mobility_reports/master/data/mobility_reports.csv

JSON: https://raw.githubusercontent.com/philshem/scrape_covid19_mobility_reports/master/data/mobility_reports.json



## convert all PDFs to TXT

    cd pdf
    for file in *.pdf; do pdftotext -layout "$file" "$file.txt"; done

Make sure to use the `-layout option`. More details here: https://www.xpdfreader.com/pdftotext-man.html

OSX

    brew install poppler

Ubuntu/Debian

    sudo apt-get install libpoppler-cpp-dev


Conda/Windows


    conda install -c conda-forge poppler 

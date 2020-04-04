# google_covid19_mobility_reports_scraper

Scrapes the data from ALL the PDF files from Google's Mobility Report: https://www.google.com/covid19/mobility/

Tries to make the data machine readable.

More to come.

Use this fabulous bash crawler for fetching the pdfs: https://github.com/patrikpolyak/google_covid19_community_mobility_reports_data/blob/master/fetch_pdfs.sh


# convert pdf to text

    cd pdf
    for file in *.pdf; do pdftotext -layout "$file" "$file.txt"; done

Make sure to use the `-layout option`. More details here: https://www.xpdfreader.com/pdftotext-man.html

OSX

    brew install poppler

Ubuntu/Debian

    sudo apt-get install libpoppler-cpp-dev




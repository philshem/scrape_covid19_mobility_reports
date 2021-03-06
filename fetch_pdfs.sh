#!/bin/bash

# adapted from https://github.com/patrikpolyak/google_covid19_community_mobility_reports_data/blob/master/fetch_pdfs.sh

pdf_dir="pdf"
site_data=$(curl -s 'https://www.google.com/covid19/mobility/')
[ ! -d "$pdf_dir" ] && mkdir -p "$pdf_dir"
cd "$pdf_dir"
(grep 'https://www.gstatic.com/covid19/mobility/' | perl -nle'print $& while m{".*"}g' | xargs -n1 wget -nv) <<< "$site_data"

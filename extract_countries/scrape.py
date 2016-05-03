# -*- coding: UTF-8 -*-
"""
This script was written to create `list_of_county_names.txt`.
Which builds all the select options for `country of origin` so I don't have to type them.
"""
import requests

from xml.etree import ElementTree


def main():
    url = "http://api.geonames.org/countryInfo?username=demo"
    response = requests.get(url, stream=True)
    data = response.text.split("<country>")
    l = list()
    for line in data:
        try:
            l.append(line.split("<countryName>")[1].split("</countryName>")[0])
        except IndexError: 
            pass
    with open("list_of_county_names.txt", "w") as f:
        for country_name in l:
            f.write("<option value='"+ country_name.encode('utf-8') +"'>" + country_name.encode('utf-8') + "</option>\n")
        f.close()
        
if __name__ == "__main__":
    main()
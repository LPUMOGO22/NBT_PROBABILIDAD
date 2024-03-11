#!/bin/bash

links=(
  https://www.setlist.fm/setlist/nothing-but-thieves/2024/la-riviera-madrid-spain-53ad6f85.html
  https://www.setlist.fm/setlist/nothing-but-thieves/2024/razzmatazz-barcelona-spain-2bad00aa.html
  https://www.setlist.fm/setlist/nothing-but-thieves/2024/fabrique-milan-italy-23ad0833.html
  https://www.setlist.fm/setlist/nothing-but-thieves/2024/fabrique-milan-italy-3bad083c.html
  https://www.setlist.fm/setlist/nothing-but-thieves/2024/ziggo-dome-amsterdam-netherlands-7bad3a5c.html
  https://www.setlist.fm/setlist/nothing-but-thieves/2024/ziggo-dome-amsterdam-netherlands-7badca64.html
  https://www.setlist.fm/setlist/nothing-but-thieves/2024/palladium-cologne-germany-13adcd41.html
  https://www.setlist.fm/setlist/nothing-but-thieves/2024/schlachthof-wiesbaden-germany-63adda43.html
  https://www.setlist.fm/setlist/nothing-but-thieves/2024/the-hall-dubendorf-switzerland-13ade5ad.html
  https://www.setlist.fm/setlist/nothing-but-thieves/2024/zenith-munich-germany-1badf188.html
  https://www.setlist.fm/setlist/nothing-but-thieves/2024/forum-karlin-prague-czechia-3ad91cf.html
  https://www.setlist.fm/setlist/nothing-but-thieves/2024/columbiahalle-berlin-germany-5bad9fdc.html
  https://www.setlist.fm/setlist/nothing-but-thieves/2024/red-stage-barba-negra-csepel-budapest-hungary-badb976.html
  https://www.setlist.fm/setlist/nothing-but-thieves/2024/planettt-bank-austria-halle-gasometer-vienna-austria-33ac44c1.html
  https://www.setlist.fm/setlist/nothing-but-thieves/2024/haus-auensee-leipzig-germany-7bac528c.html
  https://www.setlist.fm/setlist/nothing-but-thieves/2024/alsterdorfer-sporthalle-hamburg-germany-4bac4f36.html
  https://www.setlist.fm/setlist/nothing-but-thieves/2024/vega-copenhagen-denmark-43ac7f4f.html
  https://www.setlist.fm/setlist/nothing-but-thieves/2024/arenanfryshuset-stockholm-sweden-1bac05ac.html
  https://www.setlist.fm/setlist/nothing-but-thieves/2024/lotto-arena-merksem-belgium-5bac171c.html
  https://www.setlist.fm/setlist/nothing-but-thieves/2024/lolympia-bruno-coquatrix-paris-france-13ac1d71.html
  https://www.setlist.fm/setlist/nothing-but-thieves/2024/o2-forum-kentish-town-london-england-3ac2dab.html
  https://www.setlist.fm/setlist/nothing-but-thieves/2023/legends-adventure-park-pretoria-south-africa-7bae06a0.html
  https://www.setlist.fm/setlist/nothing-but-thieves/2023/yes24-live-hall-seoul-south-korea-13ae9179.html
  https://www.setlist.fm/setlist/nothing-but-thieves/2023/yes24-live-hall-seoul-south-korea-4baea756.html
  https://www.setlist.fm/setlist/nothing-but-thieves/2023/queen-sirikit-national-convention-center-bangkok-thailand-23aeb447.html
  https://www.setlist.fm/setlist/nothing-but-thieves/2023/3olympia-theatre-dublin-ireland-43a16b63.html
  https://www.setlist.fm/setlist/nothing-but-thieves/2023/3olympia-theatre-dublin-ireland-5ba10b5c.html
  https://www.setlist.fm/setlist/nothing-but-thieves/2023/the-telegraph-building-belfast-northern-ireland-3ba12410.html
  https://www.setlist.fm/setlist/nothing-but-thieves/2023/o2-apollo-manchester-manchester-england-5ba13340.html
  https://www.setlist.fm/setlist/nothing-but-thieves/2023/bournemouth-international-centre-bournemouth-england-4ba13f02.html
  https://www.setlist.fm/setlist/nothing-but-thieves/2023/amberexpo-gdask-poland-6ba1e21a.html
  https://www.setlist.fm/setlist/nothing-but-thieves/2023/ovo-arena-wembley-london-england-1ba1edc4.html
  https://www.setlist.fm/setlist/nothing-but-thieves/2023/ovo-arena-wembley-london-england-73a1fe09.html
  https://www.setlist.fm/setlist/nothing-but-thieves/2023/resorts-world-arena-birmingham-england-6ba18a92.html
  https://www.setlist.fm/setlist/nothing-but-thieves/2023/swansea-arena-swansea-wales-5ba19fa4.html
  https://www.setlist.fm/setlist/nothing-but-thieves/2023/o2-apollo-manchester-manchester-england-53a1b385.html
  https://www.setlist.fm/setlist/nothing-but-thieves/2023/o2-apollo-manchester-manchester-england-ba1bd6a.html
  https://www.setlist.fm/setlist/nothing-but-thieves/2023/o2-academy-glasgow-glasgow-scotland-53a06bb9.html
  https://www.setlist.fm/setlist/nothing-but-thieves/2023/o2-academy-glasgow-glasgow-scotland-6ba072be.html
  https://www.setlist.fm/setlist/nothing-but-thieves/2023/marquee-theatre-tempe-az-1ba37dd0.html
)

counter=1

for link in "${links[@]}"; do
    filename=$(printf "%02d.html" "$counter")
    wget -O "$filename" "$link"
    ((counter++))
done

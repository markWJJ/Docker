docker stop investment_today_intent
docker run -d --rm --name investment_today_intent \
 -e LANG=C.UTF-8 \
 -p 8083:8083 \
 -v $(pwd)/Intent_Dtection:/Intent_Dtection \
 -v $(pwd)/log:/var/log/stdout \
 investment_today_intent:001

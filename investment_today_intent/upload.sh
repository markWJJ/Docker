curl -sSL http://54.223.108.99:8811/api/get_token|sh
docker tag investment_today_intent:$1 899150993273.dkr.ecr.cn-north-1.amazonaws.com.cn/cloud:investment-today-intent-$1
docker push 899150993273.dkr.ecr.cn-north-1.amazonaws.com.cn/cloud:investment-today-intent-$1

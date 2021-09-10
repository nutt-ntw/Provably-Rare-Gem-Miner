FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

ENV WALLET_ADDRESS 0xf341965b08Da2E10717Ef5B3E3E4BA8F669dfc0f
ENV INFLURA_API_KEY ''
ENV TARGET_GEM 3
ENV NOTIFY_AUTH_TOKEN ''

COPY . .

CMD [ "python", "./auto_mine_fantom_shitty_fix_will_delete_this_later.py" ]

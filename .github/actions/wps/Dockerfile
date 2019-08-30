FROM python:3.7-alpine

RUN apk add --no-cache bash
RUN pip install wemake-python-styleguide
RUN python --version ; pip --version ; echo "flake8 $(flake8 --version)"

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

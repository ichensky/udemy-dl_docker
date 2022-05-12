from debian

workdir /project

run apt update
run apt install -y python3 python3-pip git ffmpeg

run git clone https://github.com/r0oth3x49/udemy-dl

workdir /project/udemy-dl

run pip install -r requirements.txt

copy cookies.txt .

entrypoint ["python3", "udemy-dl.py", "--cookies", "cookies.txt", "--output", "/project/result"]

cmd ["https://example.com"]

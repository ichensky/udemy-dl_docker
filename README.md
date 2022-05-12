Docker container which allows to uses tool [udemy-dl](https://github.com/r0oth3x49/udemy-dl)
to download corses from [udemy.com](https://udemy.com)

### How to build

1. Update `cookies.txt` file with appropriate `access_token` (get from the browser cookies).

2. Build docker image with script `./build.sh`
   ```sh
   docker build --rm -t ichensky/udemy-dl .
   ```

3. Run docker container with providing url to the course with script `./run.sh` 
    ```sh
    docker run -v $(pwd)/udemy-dl_result:/project/result ichensky/udemy-dl https://companyname.udemy.com/course/cool-couse
    ```
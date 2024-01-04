# Download resouces
```sh
bash download.sh
```

# Build Docker Image
```sh
docker build -f Dockerfile.autoflip -t autoflip .
```

# Run Docker Image
```sh
docker run --rm -v /home/teamrakket/Videos/autoflip:/mnt/autoflip autoflip --input_side_packets=input_video_path=/mnt/autoflip/test1.mp4,output_video_path=/mnt/autoflip/test1_new.mp4,aspect_ratio=4:3
```

#!/bin/bash
# Util script for downloading resources in models folder

files=(
        "README.md"
        "hair_segmentation.tflite"
        "knift_float.tflite"
        "knift_float_1k.tflite"
        "knift_float_400.tflite"
        "knift_index.pb"
        "knift_labelmap.txt"
        "object_detection_saved_model/README.md"
        "object_detection_saved_model/model.ckpt.data-00000-of-00001"
        "object_detection_saved_model/model.ckpt.index"
        "object_detection_saved_model/model.ckpt.meta"
        "object_detection_saved_model/pipeline.config"
        "object_detection_saved_model/saved_model.pb"
        "ssdlite_object_detection.tflite"
        "ssdlite_object_detection_labelmap.txt"
    )

for f in "${files[@]}"
do
    curl -X GET \
      -o "mediapipe/models/$f" \
      "https://storage.googleapis.com/mediapipe-assets/$f"
done

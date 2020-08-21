python3 export_tflite_ssd_graph.py --pipeline_config_path=pipeline.config --trained_checkpoint_prefix=model.ckpt  --output_directory=tflite --add_postprocessing_op=true



  tflite_convert \
  --graph_def_file=tflite/tflite_graph.pb \ 
  --output_file=tflite/detect.tflite \ 
  --output_format=TFLITE \
  --input_shapes=1,300,300,3 \
  --input_arrays=normalized_input_image_tensor \
  --output_arrays='TFLite_Detection_PostProcess','TFLite_Detection_PostProcess:1','TFLite_Detection_PostProcess:2','TFLite_Detection_PostProcess:3'  \
  --inference_type=QUANTIZED_UINT8 \
  --mean_values=128 \
  --std_dev_values=127 \
  --change_concat_input_ranges=false \
  --allow_custom_ops
PRHW_DIR="${HOME}/PRHW_im2txt/data/prhw/tokenized"
MODEL_DIR="${HOME}/PRHW_im2txt/model/tokenized_baseline"
CUDA_VISIBLE_DEVICES="1" python ~/PRHW_im2txt/train.py \
  --input_file_pattern="${PRHW_DIR}/train-?????-of-00008" \
  --train_dir="${MODEL_DIR}/train" \
  --number_of_steps=500000


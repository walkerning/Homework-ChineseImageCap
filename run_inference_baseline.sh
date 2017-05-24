CHECKPOINT_PATH="${HOME}/PRHW_im2txt/model/baseline/train"

# Vocabulary file generated by the preprocessing script.
VOCAB_FILE="${HOME}/PRHW_im2txt/data/prhw/word_counts.txt"

# JPEG image file to caption.
PRHW_DIR="${HOME}/PRHW_im2txt/data/prhw"
MODEL_DIR="${HOME}/PRHW_im2txt/model/baseline"

# Ignore GPU devices (only necessary if your GPU is currently memory
# constrained, for example, by running the training script).
export CUDA_VISIBLE_DEVICES=""

# Run inference to generate captions.
python ~/PRHW_im2txt/run_inference.py \
  --checkpoint_path=${CHECKPOINT_PATH} \
  --vocab_file=${VOCAB_FILE} \
  --input_files="${PRHW_DIR}/rawdata/image_vgg19_fc2_feature_677004464.h5" \
  --output_file="${MODEL_DIR}/output.txt"

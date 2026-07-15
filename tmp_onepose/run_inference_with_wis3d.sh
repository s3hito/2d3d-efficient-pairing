# Set your environment variables first (if not already set)
PROJECT_DIR="/home/hiro/OnePose"

export PYTHONPATH=$PYTHONPATH:$PROJECT_DIR/DeepLM/build
export TORCH_USE_RTLD_GLOBAL=YES
set -e
# Run the inference on the demo coffee jar data
python inference.py \
    +experiment="test_demo" \
    input.data_dirs="/home/hiro/OnePose/data/demo/test_coffee test_coffee-annotate" \
    input.sfm_model_dirs="/home/hiro/OnePose/data/demo/test_coffee/sfm_model" \
    +object_detect_mode="GT_box" \
    save_wis3d=True
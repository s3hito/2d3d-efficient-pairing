OBJ_NAME="test_coffee"
PROJECT_DIR="/home/hiro/OnePose"
export QT_QPA_PLATFORM=offscreen
export PYTHONPATH=$PYTHONPATH:$(pwd)/DeepLM/build
export TORCH_USE_RTLD_GLOBAL=YES
WITH_TRACKING=False
while [[ "$#" -gt 0 ]]; do
    case $1 in
        -u|--WITH_TRACKING) WITH_TRACKING=True ;;
    esac
    shift
done

python $PROJECT_DIR/inference_demo.py \
    +experiment="test_demo" \
    input.data_dirs="$PROJECT_DIR/data/demo/$OBJ_NAME $OBJ_NAME-test" \
    input.sfm_model_dirs="$PROJECT_DIR/data/demo/$OBJ_NAME/sfm_model" \
    use_tracking=True
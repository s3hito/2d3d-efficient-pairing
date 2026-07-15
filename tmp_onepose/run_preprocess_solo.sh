# Run only the preprocessing step
OBJ_NAME="test_coffee"
PROJECT_DIR="/home/hiro/OnePose"
echo "Current work dir: $PROJECT_DIR"
echo "Obj name: $OBJ_NAME"

echo '-------------------'
echo 'Parse scanned data:'
echo '-------------------'
# Parse scanned annotated & test sequence:
python $PROJECT_DIR/parse_scanned_data.py \
    --scanned_object_path \
    "$PROJECT_DIR/data/demo/$OBJ_NAME"

echo '--------------------------------------------------------------'
echo 'Run SfM to reconstruct object point cloud for pose estimation:'
echo '--------------------------------------------------------------'
# Run SfM to reconstruct object sparse point cloud from $OBJ_NAME-annotate sequence:

python run.py +preprocess="sfm_spp_spg_demo" \
  dataset.data_dir="$PROJECT_DIR/data/demo/$OBJ_NAME $OBJ_NAME-annotate" \
  dataset.outputs_dir="$PROJECT_DIR/data/demo/$OBJ_NAME/sfm_model"


OBJ_NAME="test_coffee"
PROJECT_DIR="/home/hiro/OnePose"
export PYTHONPATH=$PYTHONPATH:$PROJECT_DIR/DeepLM/build
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
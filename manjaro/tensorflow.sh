conda install -c conda-forge cudatoolkit=11.2 cudnn=8.1.0
echo "alias python='export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CONDA_PREFIX/lib/ && python'" >> ~/.zshrc
source ~/.zshrc
python -m pip install tensorflow tensorflow-gpu numpy pillow

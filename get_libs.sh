# Download some common libraries and set them up
BIN_DIR=$HOME/bin
TPM_DIR=$HOME/tpm_setup

if [ ! -d "$BIN_DIR" ]; then
  mkdir $BIN_DIR
fi

if [ ! -d "$TPM_DIR" ]; then
  mkdir $TPM_DIR
fi


mkdir $TPM_DIR


# jq
wget -P $TPM_DIR/ http://stedolan.github.io/jq/download/linux64/jq
mv $TPM_DIR/jq $BIN_DIR
chmod +x $BIN_DIR/jq





# Clean up
rm $TPM_DIR -r

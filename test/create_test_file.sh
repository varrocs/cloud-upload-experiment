SIZE_MB=100
TESTFILE=testdata.bin

dd if=/dev/urandom of=$TESTFILE bs=1MB count=$SIZE_MB


URL=http://localhost:3000/upload
TESTFILE=testdata.bin

curl -F "data=@$TESTFILE"  $URL

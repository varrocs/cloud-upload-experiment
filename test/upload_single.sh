
#URL=http://localhost:3000/upload
URL=http://35.234.92.37:3000/upload

TESTFILE=testdata.bin

curl -F "data=@$TESTFILE"  $URL

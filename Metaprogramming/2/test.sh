i=1
while [ $i -le 10 ]; do
  echo $i
  i=$(( $i + 1 ))
done

for (( i=1; i<=10; i=i+ 1)); do
  echo $i
done

greeting() {
  echo "Hello World!"
}
greeting

cats () {
  echo "Meow"
  return 43
}
cats
echo $?

full_name () {
  echo "$1 $2"
}
name=$(full_name bob lob)
echo "Myname is $name"

alpha=(a b c d e f)
for i in ${alpha[@]}; do
  echo $i
done | sort

wu_tang=(rag gza method)
echo ${wu_tang[@]}
unset wu_tang
echo ${wu_tang[@]}

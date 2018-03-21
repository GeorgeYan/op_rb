function fa(n) {
  if(n==0){
    return 0
  }else{
    return n + fa(n-1)
  }
}
console.log(fa(10))

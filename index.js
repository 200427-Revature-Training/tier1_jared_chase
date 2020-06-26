
dataType = (a) => {
    return typeof a;
}

//UPDATED PART B
product = (...args) => {
    let result = 1;
    let i;
    for(i = 0; i<args.length; i++) {
        result*=args[i];
    }
    console.log('result: ' + result);
    return result;
}
product(1,2,3,4);

sumArray = (a) => {
    let sum = 0;
    let i;
    for(i=0; i<a.length; i++){
        sum+=a[i];
    }
    return sum;
}

const e = Math.pow(2,3);
console.log(e);

exponent = (n) => {
    const sN = n.toString();
    //console.log('this is my log ' + typeof sN);
    const nArr = sN.split("");
    let length = nArr.length;
    let numArr = nArr.map(i => parseInt(i));
    let i;
    let sum = 0;
    for(i = 0; i<numArr.length; i++) {
        sum+=Math.pow(numArr[i], length);
    }
    console.log(sum);
    return sum==n;
}

console.log(exponent(100));

/*
let a = '12345';
let b = a.split("");
console.log(b);
let c = b.map(i => parseInt(i));
console.log(c);
*/
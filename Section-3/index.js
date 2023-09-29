let user_input = prompt('Please enter a number.');

function prime(input){
    let arr = [];
    for (let i = 2; i <= input ; i++){
        let isprime = true;
        for(j = 2; j< i ; j++){
            if(i%j == 0){
            isprime = false;
            }
        }
    }
    if (isprime){
        arr.push(i);
    }
}

console.log(prime(user_input));
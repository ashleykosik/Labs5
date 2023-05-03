function popGrowth(a, b, c, d) {
    b = b * .01
    //console.log(b)
    let years = 0;
    let pop = 0;
    while(pop < d) {
        pop = a + a * b + c
        years += 1
        a = pop
    }
    return years
   
}

console.log(popGrowth(1500, 5, 100, 5000))
console.log(popGrowth(1500000, 2.5, 10000, 2000000))
var wishlist = [
    {name: "Mini Puzzle", size: "small", clatters: "yes", weight: "light"},
    {name: "Toy Car", size: "medium", clatters: "a bit", weight: "medium"},
    {name: "Card Game", size: "small", clatters: "no", weight: "light"}
];

var presents = [
    {size: "medium", clatters: "a bit", weight: "medium"},
    {size: "small", clatters: "yes", weight: "light"}
];

function guessGifts (wishlist, presents) {
    let result = []
presents.map(present => {
    wishlist.map(item => {
        wishlist.size === presents.size &&
        wishlist.clatters === presents.clatters &&
        wishlist.weight === presents.weight ? result.push(item) : null
    })
    return result
})
    // for(let i = 0; i < presents.length; i++) {
    //     for (let j = 0; i < wishlist.length; i++) {
    //         if (wishlist.size === presents.size) {
    //             console.log(wishlist[j].name)
    //         } else if (wishlist[j].clatters === presents[i].clatters) {
    //             console.log(wishlist[j].name)
    //         } else if (wishlist[j].weight === presents[i].weight) {
    //             console.log(wishlist[j].name)
    //         } else {
    //             console.log('no matching presents')
    //         }
    //     }
    // }
}

const guessGifts2 = (wishlist, presents) => {
    const giftGuess = []
    presents.forEach((element, indx) => {
        if(element.size, element.clatters, element.weight == wishlist[indx].size, wishlist[indx].clatters, wishlist[indx].weight){
            giftGuess.unshift(wishlist[indx].name)
        }
    });
    console.log(giftGuess)
}





guessGifts(wishlist, presents)
function buy(name) {
    let cart = document.querySelector('#cart tbody');
    // appends a row to the tbody element
    let newItem = cart.insertRow();
    let itemName = newItem.insertCell(0);
    itemName.innerHTML = name;
    //# = id
    let elementId = '#' + name.replace(' ', '');
    //#' ', '' 'td .quantity
    let itemQuantity = newItem.insertCell(1);
    itemQuantity.innerHTML = document.querySelector(elementId + ' td .quantity').value;

    // store the value to totalprice and value takes what is stored in ".expression", which I picked.
    let qPrice = document.querySelector(elementId + ' td .quantity').value;

    //resets the input value so the quantity of the original order doesn't "stick"
    document.querySelector(elementId + ' td .quantity').value = '';

    let itemPrice = newItem.insertCell(2);
    itemPrice.innerHTML = "$" + document.querySelector(elementId + ' .price').innerHTML;
    //innerHTML takes what is stored in '.expression'
    let pPrice = document.querySelector(elementId + ' .price').innerHTML;
    
    let tPrice = qPrice * pPrice;
    let totalPrice = newItem.insertCell(3);// create a new cell
    totalPrice.innerHTML  = "$"+tPrice;

    const exist = localStorage.getItem('tpr');// output 0, so 0 equal false. and 1 = true 

    if(exist){
        let preTotalPrice = localStorage.getItem("tpr");
        let newTotalPrice = parseInt(preTotalPrice) + tPrice;
        localStorage.setItem("tpr", newTotalPrice);
    }else{
        localStorage.setItem("tpr", tPrice);
    }

    document.getElementById('totalPrice').innerHTML ="Total Price: $" + parseInt(localStorage.getItem("tpr")); // parseint is convert string to integer
   
}
function checkout()
{
    document.querySelectorAll('#cart tbody tr').forEach(row => row.remove());
    alert("Thank you. Your Total price is $" + parseInt(localStorage.getItem("tpr")));
    document.getElementById('totalPrice').innerHTML = "";
    localStorage.clear();
}


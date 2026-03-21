var num1 = document.getElementById("txt-num1");
var num2 = document.getElementById("txt-num2");

function nok(){

var result = parseFloat(num1.value) + parseFloat(num2.value);
document.getElementById("txt-result").value = result;
}
function ok(){
   
   var result = parseFloat(num1.value) - parseFloat(num2.value);
   document.getElementById("txt-result").value = result;
   }
   function no(){
   
   var result = parseFloat(num1.value) * parseFloat(num2.value);
   document.getElementById("txt-result").value = result;
   }
   function yes(){
   
   var result = parseFloat(num1.value) / parseFloat(num2.value);
   document.getElementById("txt-result").value = result;
   }
   function Hi(){
      alert
   }
   let x = 10;
let y = 3;

console.log(x + y);  // 13 (Addition)
console.log(x - y);  // 7 (Subtraction)
console.log(x * y);  // 30 (Multiplication)
console.log(x / y);  // 3.33 (Division)
console.log(x % y);  // 1 (Modulus: 10 divided by 3 leaves a remainder of 1)

let z = 5;
z++;  // Increment, now z is 6
z--;  // Decrement, now z is back to 5



const products = [
  {
    name: "iPhone 15",
    brand: "Apple",
    desc: "A powerful and sleek iOS device. ",
    img: "iphone 15.jpg"
  },
  {
    name: "Galaxy S24",
    brand: "Samsung",
    desc: "High-end Android with powerful features.",
    img: "24ultra.jpg"
  },
  {
    name: "Pixel 8",
    brand: "Google",
    desc: "Clean Android experience with AI features.",
    img: "pixel8.jpg"
  },
  {
    name: "OnePlus 12",
    brand: "OnePlus",
    desc: "Fast performance with OxygenOS.",
    img: "oneplus.jpg"
  },
  {
    name: "Xiaomi 14",
    brand: "Xiaomi",
    desc: "Affordable with premium features.",
    img: "Xaimi.jpg"
  },
  {
    name: "Motorola Edge 40",
    brand: "Motorola",
    desc: "Solid mid-range performance.",
    img: "ort dg name.jpg"
  },
  {
    name: "Sony Xperia 1 V",
    brand: "Sony",
    desc: "Great for multimedia and photography.",
    img: "sony.jpg"
  },
  {
    name: "ASUS ROG Phone 7",
    brand: "ASUS",
    desc: "Gaming-focused Android beast.",
    img: "asus.jpg"
  }
];

// Render product cards
const container = document.getElementById("product-container");

products.forEach((phone) => {
  const card = document.createElement("div");
  card.className = "product-card";
  card.innerHTML = `
    <img src="${phone.img}" alt="${phone.name}">
    <h3>${phone.name}</h3>
    <p>${phone.brand}</p>
  `;
  card.onclick = () => showDetails(phone.name, phone.brand, phone.desc);
  container.appendChild(card);
});

function showDetails(name, brand, desc) {
  document.getElementById("phone-name").textContent = name;
  document.getElementById("phone-brand").textContent = brand;
  document.getElementById("phone-desc").textContent = desc;
  document.getElementById("details").classList.remove("hidden");
}

function hideDetails() {
  document.getElementById("details").classList.add("hidden");
}
  



const headers = document.querySelectorAll('h1');
console.log("begin")
// Add a click event listener to each <h1> element
headers.forEach(header => {
  header.addEventListener('click', () => {
    console.log("clicked ...")
    // Toggle the class on the clicked <h1>
    header.classList.toggle('clicked-class');
  });
});
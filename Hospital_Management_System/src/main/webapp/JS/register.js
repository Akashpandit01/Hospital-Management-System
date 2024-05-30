
    // Shift cursor by 20px to the right on input focus
    document.querySelectorAll('.input-group input').forEach(input => {
      input.addEventListener('focus', () => {
        input.style.paddingLeft = '35px'; // Adjust this value as needed
      });
  
      input.addEventListener('blur', () => {
        input.style.paddingLeft = ''; // Reset padding when not focused
      });
    });
 
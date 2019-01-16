const input = document.getElementById('user_photo')

if(input) {
  const icon = document.querySelector('.user-avatar')
  icon.addEventListener('click', function(event) {
    input.click();
  })
};

const input = document.getElementById('user_photo')

if(input) {
  const fileCount = document.getElementById('file-count')
  const icon = document.querySelector('.user-avatar')
  icon.addEventListener('click', function(event) {
    input.click();
  })
  input.addEventListener('change', function(event){
    fileCount.innerText = input.files.length;
  })
};

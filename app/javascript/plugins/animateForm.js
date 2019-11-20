

const animateForm = () => {

  const usernameInput = document.getElementById('user_email')
  const userpasswordInput = document.getElementById('user_password')
  const wrapUsername = document.getElementById('wrap_username');
  const wrapPassword = document.getElementById('wrap_password');

  usernameInput.addEventListener('focus', () => {
    wrapUsername.classList.add('white-border');
  })

  usernameInput.addEventListener('blur', () => {
    wrapUsername.classList.remove('white-border');
  })


  userpasswordInput.addEventListener('focus', () => {
    wrapPassword.classList.add('white-border');

  })

  userpasswordInput.addEventListener('blur', () => {
    wrapPassword.classList.remove('white-border');
  })
}

export {animateForm}

let passElement = document.getElementById("password");
let confirmPassElement = document.getElementById("cpassword");
let passErrorMessageElement = document.getElementById("pass-error-message");
let confirmPasswordErrorElement = document.getElementById(
  "cpass-error-message"
);

let errors = [];

passElement.onkeyup = function () {
  pass = passElement.value;
  confirmPass = confirmPassElement.value;

  if (
    pass == confirmPass &&
    new RegExp(/^(?=.*\d)(?=.*[!@#$%^&*])(?=.*[a-z])(?=.*[A-Z]).{8,}$/).test(
      pass
    )
  ) {
    passElement.classList.remove("error-element");
    confirmPassElement.classList.remove("error-element");
    passErrorMessageElement.innerText = "";
    passErrorMessageElement.classList.remove("error-message");
  } else if (
    pass != confirmPass ||
    !new RegExp(/^(?=.*\d)(?=.*[!@#$%^&*])(?=.*[a-z])(?=.*[A-Z]).{8,}$/).test(
      pass
    )
  ) {
    passElement.classList.add("error-element");
    confirmPassElement.classList.add("error-element");
    passErrorMessageElement.innerHTML =
      "<p>Password must have:</p> <p> Min 8 characters </p> <p>contain at least a symbol</p> <p> at least one numeric digit</p>" +
      "<p>one uppercase and one lowercase letter</p>";
    passErrorMessageElement.classList.add("error-message");
  }
};

confirmPassElement.onkeyup = function () {
  pass = passElement.value;
  confirmPass = confirmPassElement.value;
  console.log(pass, confirmPass);
  console.log(pass == confirmPass);
  console.log(
    new RegExp(/^(?=.*\d)(?=.*[!@#$%^&*])(?=.*[a-z])(?=.*[A-Z]).{8,}$/).test(
      confirmPass
    )
  );
  console.log(
    pass == confirmPass &&
      new RegExp(/^(?=.*\d)(?=.*[!@#$%^&*])(?=.*[a-z])(?=.*[A-Z]).{8,}$/).test(
        confirmPass
      )
  );
  if (
    pass == confirmPass &&
    new RegExp(/^(?=.*\d)(?=.*[!@#$%^&*])(?=.*[a-z])(?=.*[A-Z]).{8,}$/).test(
      confirmPass
    )
  ) {
    confirmPassElement.classList.remove("error-element");
    passElement.classList.remove("error-element");
    passErrorMessageElement.innerText = "";
    passErrorMessageElement.classList.remove("error-message");
  } else if (
    pass != confirmPass ||
    !new RegExp(/^(?=.*\d)(?=.*[!@#$%^&*])(?=.*[a-z])(?=.*[A-Z]).{8,}$/).test(
      confirmPass
    )
  ) {
    confirmPassElement.classList.add("error-element");
    passElement.classList.add("error-element");
    passErrorMessageElement.innerHTML =
      "<p>Password must have:</p> <p> Min 8 characters </p> <p>contain at least a symbol</p> <p> at least one numeric digit</p>" +
      "<p>one uppercase and one lowercase letter</p>";

    passErrorMessageElement.classList.add("error-message");
  }
};

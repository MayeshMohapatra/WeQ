(function () {
  var firebaseConfig = {
    apiKey: "AIzaSyCpLB6s72WjmaVFuA5BIXMbC6HEv3FoH6E",
    authDomain: "weq-project.firebaseapp.com",
    databaseURL: "https://weq-project.firebaseio.com",
    projectId: "weq-project",
    storageBucket: "weq-project.appspot.com",
    messagingSenderId: "796083354043",
    appId: "1:796083354043:web:fbc05ab5570519b3ebac9e",
  };
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);
  const txtemail = document.getElementById("Email");
  const txtpassword = document.getElementById("Password");
  const btlogin = document.getElementById("Signin");
  const btnSignUp = document.getElementById("Signup");
  console.log(txtemail.nodeValue);

  btlogin.addEventListener("click", (e) => {
    const email = txtemail.nodeValue;
    const pass = txtpassword.nodeValue;
    const promise = firebase.auth().signInWithEmailAndPassword(email, pass);
    promise.catch((e) => console.log(e.message));
  });

  btnSignUp.addEventListener("click", (e) => {
    const email = txtemail.nodeValue;
    const pass = txtpassword.nodeValue;
    const p = firebase.auth().createUserWithEmailAndPassword(email, pass);
    p.catch((e) => console.log(e.message));
  });

  firebase.auth().onAuthStateChanged((firebaseUser) => {
    if (firebaseUser) {
      console.log(firebaseUser);
    } else {
      console.log("not signed in");
    }
  });
})();

contract C {

  function() internal storedFn;

  bool flag;

  constructor() {
    if (!flag) {
      flag = true;
      function() internal invalid;
      storedFn = invalid;
      invalid();
    }
  }
  function f() public pure {}
}
contract Test {
  function f() public {
    new C();
  }
}
// ----
// f() -> FAILURE

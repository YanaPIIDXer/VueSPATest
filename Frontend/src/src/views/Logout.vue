<template>
  <div class="logout">
    <h1>ログアウトしました</h1>
  </div>
</template>

<script>
const axios = require("axios").create();
export default {
  name: "Login",
  data() {
    return {
      name: "",
      password: "",
    };
  },
  created: function () {
    axios.post("http://localhost:3000/user/logout");
  },
};
</script>

<style scoped>
.logout {
  text-align: center;
}
</style>

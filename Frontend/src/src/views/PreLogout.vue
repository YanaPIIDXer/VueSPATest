<template>
  <div class="logout">
    <h1>ログアウト中...</h1>
  </div>
</template>

<script>
const axios = require("axios").create();
export default {
  name: "PreLogOut",
  mounted: function () {
    axios.post("http://localhost:3000/user/logout").then(function () {
      window.location = "/logout";
    });
  },
};
</script>

<style scoped>
.logout {
  text-align: center;
}
</style>

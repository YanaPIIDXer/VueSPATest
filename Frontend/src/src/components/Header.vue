<template>
  <div class="bar">
    <div v-if="isLogin">
      <div>ログアウト</div>
    </div>
    <div v-else>
      <div><router-link to="/register">新規登録</router-link></div>
      <div><router-link to="/login">ログイン</router-link></div>
    </div>
  </div>
</template>

<script>
const axios = require("axios").create();
export default {
  name: "Header",
  data: function () {
    return {
      isLogin: this.check_login(),
    };
  },
  methods: {
    check_login: function () {
      var result = false;
      axios.get("http://localhost:3000/user/check").then(function (response) {
        result = response.data.is_login;
      });
      return result;
    },
  },
};
</script>

<style scoped>
.bar {
  text-align: right;
}
</style>

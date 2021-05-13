<template>
  <div class="bar">
    <div v-if="is_login">
      <div><router-link to="/prelogout">ログアウト</router-link>></div>
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
      is_login: false,
    };
  },
  mounted: function () {
    this.check_login();
  },
  methods: {
    check_login: function () {
      axios
        .get("http://localhost:3000/user/check", { withCredentials: true })
        .then(this.onResponse);
    },
    onResponse: function (response) {
      this.is_login = response.data.is_login;
    },
  },
};
</script>

<style scoped>
.bar {
  text-align: right;
}
</style>

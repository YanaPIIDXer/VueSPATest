<template>
  <div class="login_form">
    <h1>ログイン</h1>
    <form @submit.prevent="onSubmit">
      ユーザ名：<input type="text" id="name" v-model="name" /><br />
      パスワード：<input
        type="password"
        id="password"
        v-model="password"
      /><br />
      <input type="submit" value="ログイン" />
    </form>
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
  methods: {
    onSubmit: function () {
      axios
        .post("http://localhost:3000/user/login", {
          name: this.name,
          password: this.password,
        })
        .then(this.onResponse)
        .catch(function () {
          alert("ログインに失敗しました。");
        });
    },
    onResponse: function (response) {
      if (!response.data.result) {
        alert("ログインに失敗しました。");
        return;
      }
      window.location = "/";
    },
  },
};
</script>

<style scoped>
.login_form {
  text-align: center;
}
</style>

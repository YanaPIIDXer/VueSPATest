<template>
  <div class="register_form">
    <h1>新規登録</h1>
    <form @submit.prevent="onSubmit">
      ユーザ名：<input type="text" id="name" v-model="name" /><br />
      パスワード：<input
        type="password"
        id="password"
        v-model="password"
      /><br />
      <input type="submit" value="登録" />
    </form>
  </div>
</template>

<script>
const axios = require("axios").create();
export default {
  name: "Register",
  data() {
    return {
      name: "",
      password: "",
    };
  },
  methods: {
    onSubmit: function () {
      axios
        .post("http://localhost:3000/user/register", {
          name: this.name,
          password: this.password,
        })
        .then(function (response) {
          if (!response.data.result) {
            alert("登録に失敗しました。");
            return;
          }
          alert("登録しました。");
        });
    },
  },
};
</script>

<style scoped>
.register_form {
  text-align: center;
}
</style>

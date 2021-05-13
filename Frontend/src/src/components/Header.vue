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
export default {
  name: "Header",
  data: function () {
    return {
      isLogin: false,
    };
  },
};
</script>

<style scoped>
.bar {
  text-align: right;
}
</style>

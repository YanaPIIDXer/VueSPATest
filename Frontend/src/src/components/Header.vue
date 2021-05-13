<template>
  <div class="bar">
    <div v-if="isLogin">
      <div>ログアウト</div>
    </div>
    <div v-else>
      <router-link to="/register">新規登録</router-link>
      <div>ログイン</div>
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

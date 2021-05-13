<template>
  <div class="home">Message:{{ message }}</div>
</template>

<script>
const axios = require("axios").create();
export default {
  name: "Home",
  data() {
    return {
      message: "",
    };
  },
  mounted() {
    this.getHello();
  },
  methods: {
    getHello: function () {
      axios
        .get("http://localhost:3000/")
        .then(this.onResponse)
        .catch(this.onError);
    },
    onResponse: function (response) {
      this.message = response.data.message;
    },
    onError: function (error) {
      this.message = error;
    },
  },
};
</script>

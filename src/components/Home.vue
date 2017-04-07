<template>
  <div class="root">
    <div class="header">
      <img src="../assets/logo.png">
      <h1>{{ msg }}</h1>
    </div>
    <code-editor />
  </div>
</template>

<script>
  import CodeEditor from './CodeEditor';

  export default {
    name: 'home',
    data() {
      return {
        msg: 'Play with JSON!'
      };
    },
    components: {
      CodeEditor
    }
  };

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
  .header {
    text-align: center;
    margin-top: 60px;
  }

  h1,
  h2 {
    font-weight: normal;
  }

  a {
    color: #42b983;
  }

</style>

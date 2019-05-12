<template>
  <main role="main" class="flex-shrink-0">
      <div class="container">
          <p class="lead">Człownkowie</p>
          <MembersList></MembersList>
      </div>
  </main>
</template>

<script>
    import MembersList from "../components/lists/MembersList"
    export default {
        components: {MembersList}
    }
</script>


<style scoped>
main > .container {
  padding: 60px 15px 0;
}
</style>

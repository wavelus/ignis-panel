<template>
  <main role="main" class="flex-shrink-0">

      <div class="container">
          <FirefighterForm class="float-right" buttonLabel="Dodaj członka"></FirefighterForm>
          <p class="lead">Człownkowie</p>
          <MembersList></MembersList>
      </div>
  </main>
</template>

<script>
    import MembersList from "../components/lists/MembersList"
    import FirefighterForm from "../components/forms/FirefighterForm"
    export default {
        components: {MembersList, FirefighterForm}
    }
</script>


<style scoped>
main > .container {
  padding: 60px 15px 0;
}
</style>

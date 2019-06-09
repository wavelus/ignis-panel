<template>
  <div id="app" class="d-flex h-100 flex-column">
    <NavBar></NavBar>
    <router-view/>
    <Footer></Footer>
  </div>
</template>

<script>
import Footer from "@/components/shared/Footer.vue";
import NavBar from "@/components/shared/NavBar.vue";

export default {
  name: "App",
  components: {
    Footer,
    NavBar
  }
};
</script>

<template>
    <div id="app">
        <Header></Header>
        <Navigation></Navigation>
        <Main></Main>
        <Footer></Footer>
    </div>
</template>

<script>
import Footer from "./components/shared/Footer.vue";
import Header from "./components/shared/Header.vue";
import Main from "./components/pages/Main.vue";
import Navigation from "./components/shared/Navigation.vue";

export default {
    name: "app",
    components: {
        Header,
        Footer,
        Main,
        Navigation
    }
};
</script>

<style></style>

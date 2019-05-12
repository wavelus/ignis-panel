<template>
    <div id="app" class="d-flex h-100 flex-column">
        <Header></Header>
        <NavBar></NavBar>
        <router-view/>
        <Footer></Footer>
    </div>
</template>

<script>
import Header from '@/components/shared/Header.vue'
import Footer from '@/components/shared/Footer.vue'
import NavBar from '@/components/shared/NavBar.vue'

export default {
    name: 'App',
    components: {
        Header,
        Footer,
        NavBar
    }
}
</script>

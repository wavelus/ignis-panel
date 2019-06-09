<template>
    <b-navbar toggleable="lg" type="dark" variant="dark">
        <b-navbar-brand to="/" class="navbar-brand"><strong>ignis</strong></b-navbar-brand>

        <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>

        <b-collapse id="nav-collapse" is-nav>
            <b-navbar-nav>
                <b-nav-item to="/">Strona główna</b-nav-item>
                <b-nav-item to="/members">Członkowie</b-nav-item>
                <!-- <b-nav-item to="/equipment">Sprzęt</b-nav-item> -->
                <b-nav-item to="/about">O nas</b-nav-item>
            </b-navbar-nav>

            <b-navbar-nav class="ml-auto">
                <b-nav-item-dropdown right v-if="logged">
                    <template slot="button-content"><em>{{ username }}</em></template>
                    <b-dropdown-item to="/profile">Profil</b-dropdown-item>
                    <b-dropdown-item to="/logout" @click="login">Wyloguj</b-dropdown-item>
                </b-nav-item-dropdown>
                <b-nav-item to="/login" v-else>Zaloguj</b-nav-item>
            </b-navbar-nav>
        </b-collapse>
    </b-navbar>
</template>

<script>
import { mapState } from 'vuex';
export default {
    computed: {
        username() {
            return 'usernam2e';
        },
        ...mapState([
            'logged'
        ])
    },
    methods: {
        login() {
            this.$store.commit('increment');
        }
    }
}
</script>

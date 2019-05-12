<template>
    <nav class="navbar navbar-expand-md navbar-dark bg-dark">
        <button
            class="navbar-toggler"
            type="button"
            data-toggle="collapse"
            data-target="#collapsibleNavbar"
        >
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <router-link to="/" class="navbar-brand"><strong>ignis</strong></router-link>
            <ul class="navbar-nav">
                <li class="nav-item">
                    <router-link to="/" class="nav-link">Strona główna</router-link>
                </li>
                <li class="nav-item">
                    <router-link to="/members" class="nav-link">Członkowie</router-link>
                </li>
                <li class="nav-item">
                    <router-link to="/about" class="nav-link">O nas</router-link>
                </li>
            </ul>
        </div>
    </nav>
</template>

<script>
export default {
    name: 'NavBar'
}
</script>

<style>

</style>

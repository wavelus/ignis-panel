<template>
    <b-navbar toggleable="lg" type="dark" variant="dark">
        <b-navbar-brand to="/" class="navbar-brand"><strong>ignis</strong></b-navbar-brand>

        <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>

        <b-collapse id="nav-collapse" is-nav>
            <b-navbar-nav>
                <b-nav-item to="/">Strona główna</b-nav-item>
                <b-nav-item to="/members">Członkowie</b-nav-item>
                <b-nav-item to="/about">O nas</b-nav-item>
            </b-navbar-nav>

            <!-- Right aligned nav items -->
            <b-navbar-nav class="ml-auto">
                <b-nav-item-dropdown right>
                    <template slot="button-content"><em>Nazwa użytkownika</em></template>
                    <b-dropdown-item to="/profile">Profil</b-dropdown-item>
                    <b-dropdown-item to="/logout">Wyloguj</b-dropdown-item>
                </b-nav-item-dropdown>
            </b-navbar-nav>
        </b-collapse>
    </b-navbar>
</template>

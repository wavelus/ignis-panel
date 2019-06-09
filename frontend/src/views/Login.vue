<template>
  <main role="main" class="flex-shrink-0">
    <div class="container">
      <p class="lead">Logowanie</p>
      <hr>
      <b-container>
        <b-row class="justify-content-md-center">
          <b-form @submit="login">
            <b-form-group label="Login" label-for="login">
              <b-form-input
                id="login"
                v-model="form.login"
                type="text"
                required
                placeholder="Wpisz swój login"
              ></b-form-input>
            </b-form-group>
            <b-form-group label="Hasło" label-for="password">
              <b-form-input
                id="password"
                v-model="form.password"
                type="password"
                required
                placeholder="Wpisz swoje hasło"
              ></b-form-input>
            </b-form-group>
            <b-button type="submit" variant="primary">Zaloguj</b-button>
          </b-form>
        </b-row>
        <p v-if="error" style="color: red">Wystąpił błąd. Sprawdź swój login lub hasło.</p>
      </b-container>
    </div>
  </main>
</template>

<script>
export default {
  data() {
    return {
      form: {
        login: "",
        password: ""
      },
      error: false
    };
  },
  methods: {
    login(evt) {
      evt.preventDefault();
      localStorage.setItem("credentials", JSON.stringify(this.form));
      this.error = false;
      let email = this.email;
      let password = this.password;
      this.$store
        .dispatch("login", { email, password })
        .then(() => this.$router.push("/profile"))
        .catch(() => (this.error = true));
    }
  }
};
</script>


<style scoped>
main > .container {
  padding: 60px 15px 0;
}
</style>


<template>
  <!-- <ValidationObserver ref="form" v-slot="{ handleSubmit }"> -->
  <form class="mt-4" novalidate @submit.prevent="onSubmit">
    <!-- <ValidationProvider vid="email" name="E-mail" rules="required|email"> -->
    <div class="form-group">
      <label for="emailInput" class="mb-2">Email address</label>
      <input class="form-control mb-0" type="email" id="emailInput" aria-describedby="emailHelp" v-model="user.email" placeholder="Enter email" required />
      <div class="invalid-feedback">
        <!-- <span>{{ errors[0] }}</span> -->
      </div>
    </div>
    <!-- </ValidationProvider> -->
    <!-- <ValidationProvider vid="password" name="Password" rules="required"> -->
    <div class="form-group">
      <label for="passwordInput" class="mb-2">Password</label>
      <router-link to="/auth/password-reset1" class="float-end"> Forgot password? </router-link>
      <input type="password" id="passwordInput" class="form-control mb-0" v-model="user.password" placeholder="Password" required />
      <div class="invalid-feedback">
        <!-- <span>{{ errors[0] }}</span> -->
      </div>
    </div>
    <!-- </ValidationProvider> -->
    <div class="d-inline-block w-100">
      <div class="custom-control custom-checkbox d-inline-block mt-2 pt-1">
        <input type="checkbox" class="custom-control-input" :id="formType" />
        <label class="custom-control-label" :for="formType">Remember Me</label>
      </div>
      <a href="#" type="submit" class="btn btn-primary float-end mt-2">Sign in</a>
    </div>
    <div class="sign-info">
      <span class="dark-color d-inline-block line-height-2">
        Don't have an account?
        <router-link to="/dark/auth/sign-up1" class="iq-waves-effect pr-4" v-if="$route.meta.dark"> Sign up </router-link>
        <router-link to="/auth/sign-up1" class="iq-waves-effect pr-4" v-else> Sign up </router-link>
      </span>
      <social-login-form></social-login-form>
    </div>
  </form>
  <!-- </ValidationObserver> -->
</template>

<script>
import SocialLoginForm from './SocialLoginForm'
// import { mapGetters } from "vuex";
import { mapState } from 'pinia'
import { useStore } from '../../../../store/pinia'
export default {
  name: 'SignIn1Form',
  components: { SocialLoginForm },
  props: ['formType', 'email', 'password'],
  data: () => ({
    user: {
      email: '',
      password: ''
    }
  }),
  mounted() {
    this.user.email = this.$props.email
    this.user.password = this.$props.password
  },
  computed: {
    ...mapState(useStore, {
      stateUsers: 'usersState'
    })
  },
  methods: {
    onSubmit() {
      this.login()
    },
    login() {
      this.$router.push({ name: 'dashboard.home-1' })
    }
  }
}
</script>

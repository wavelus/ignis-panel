<template>
    <div>
        <b-button v-b-modal="this.form.id">{{buttonLabel}}</b-button>

        <b-modal
            :id="this.form.id"
            ref="modal"
            title="Podaj dane strażaka"
            @show="readFirefighterData"
            @hidden="readFirefighterData"
            hide-footer
            >
            <b-form ref="form" @submit="onSubmit" @reset="onReset">

                <b-form-group id="input-group-surname" label="Nazwisko: " label-for="name_id">
                    <b-form-input
                            id="surname_id"
                            v-model="form.surname"
                            required
                            placeholder="Wpisz nazwisko"
                    ></b-form-input>
                </b-form-group>

                <b-form-group id="input-group-name" label="Imię: " label-for="name_id">
                    <b-form-input
                            id="name_id"
                            v-model="form.name"
                            required
                            placeholder="Wpisz imię"
                    ></b-form-input>
                </b-form-group>

                <b-form-group id="input-group-age" label="Wiek: " label-for="age_id">
                    <b-form-input
                            id="age_id"
                            v-model="form.age"
                            required
                            placeholder="Wpisz wiek"
                    ></b-form-input>
                </b-form-group>

                <b-button type="submit" variant="primary">{{ buttonLabel }}</b-button>
                <b-button type="reset" variant="danger">Resetuj</b-button>
            </b-form>


        </b-modal>

    </div>
</template>

<script>
    export default {
        props:{
            buttonLabel: {
                type: String,
                default: 'Dodaj'
            },
            firefighterData:{
                type: Object,
                default(){
                    return {
                        id: 'defaultId',
                        surname: '',
                        name: '',
                        age:''
                    }
                }

            }
        },
        data() {
            return {
                form: {
                    id: '',
                    surname: '',
                    name: '',
                    age: ''
                },
            }
        },
        created() {
            this.form.id = this.firefighterData.id;
            this.form.surname = this.firefighterData.surname;
            this.form.name = this.firefighterData.name;
            this.form.age = this.firefighterData.age;
        },
        methods: {
            onSubmit() {
            },
            onReset(evt) {
                evt.preventDefault()
                this.readFirefighterData()
            },
            readFirefighterData(){
                    this.form.name = this.firefighterData.name;
                    this.form.id = this.firefighterData.id;
                    this.form.surname = this.firefighterData.surname;
                    this.form.age = this.firefighterData.age;
            }
        }
    }
</script>

<style scoped>

</style>

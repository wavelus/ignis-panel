<template>

    <div>
        <b-list-group>
            <b-list-group-item v-for="firefighterData in firefighterDataVector" v-bind:key="firefighterData.id">
                <p class="h5">{{firefighterData.surname}} {{firefighterData.name}} </p>
                <p class="float-right"> Wiek: {{firefighterData.age}}</p>
                <FirefighterForm buttonLabel="Edytuj" :firefighterData="firefighterData"></FirefighterForm>
            </b-list-group-item>
        </b-list-group>
    </div>

</template>

<script>
    import ff from "../../assets/firefighters.json";
    import FirefighterForm from "../forms/FirefighterForm";
    export default {
        components: {FirefighterForm},
        computed: {
            firefighterDataVector() {
                return ff.map((item) => {
                    return {
                        id: String(item.id),
                        surname: item.surname,
                        name: item.name,
                        age: item.age
                    };
                })
            }
        }
    }
</script>

<style scoped>

</style>

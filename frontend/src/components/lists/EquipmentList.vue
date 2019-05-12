<template>
    <div>
        <b-list-group>
            <b-list-group-item v-for="item in equipmentVector" v-bind:key="item.id">
                <p class="h5">{{item.equipmentName}}</p> Data dodania: {{item.addDate}}
                <p class="float-right"> Stan: {{item.state}}</p>
<!--                <FirefighterForm buttonLabel="Edytuj" :firefighterData="firefighterData"></FirefighterForm>-->
            </b-list-group-item>
        </b-list-group>
    </div>
</template>

<script>
    import equipment from "../../assets/equipment"
    export default {
        name: "EquipmentList",
        computed: {
            equipmentVector(){
                return equipment.map((item)=>{
                    return {
                        id: String(item.id),
                        equipmentName: item.eqipmentName,
                        addDate: item.addDate,
                        state: item.state
                    }
                })

            }
        }
    }
</script>

<style scoped>

</style>

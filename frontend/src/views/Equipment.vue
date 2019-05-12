<template>
  <main role="main" class="flex-shrink-0">
      <div class="container">
          <p class="lead">Sprzęt</p>
          <EquipmentList></EquipmentList>
      </div>
  </main>
</template>

<style scoped>
main > .container {
  padding: 60px 15px 0;
}
</style>

<script>
    import EquipmentList from "../components/lists/EquipmentList";
    export default {
        components: {EquipmentList}
    }
</script>

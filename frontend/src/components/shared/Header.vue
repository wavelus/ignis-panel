<template>
  <div>
    <b-carousel
      id="carousel-1"
      v-model="slide"
      :interval="4000"
      indicators
      fade
      img-height="240"
      background="#ababab"
      style="text-shadow: 1px 1px 2px #333;"
    >
      <b-carousel-slide img-src="https://picsum.photos/1920/240/?image=1033&blur=2"></b-carousel-slide>

      <b-carousel-slide img-src="https://picsum.photos/1920/240/?image=100&blur=2"></b-carousel-slide>
    </b-carousel>
  </div>
</template>

<script>
export default {
  name: "Header",
  data() {
    return {
      slide: 0,
      sliding: true
    };
  }
};
</script>

<template>
  <div class="content-section">
    <div class="text-h3 q-pa-md text-bold">Gallery</div>

    <q-responsive :ratio="16 / 9" style="max-width: 100%">
      <q-carousel
        swipeable
        animated
        arrows
        autoplay
        class="q-mt-sm"
        v-model="slide"
        transition-prev="scale"
        transition-next="scale"
        infinite
        navigation
      >
        <q-carousel-slide
          :name="1"
          img-src="https://media.discordapp.net/attachments/781838623510888450/899923617758998538/Tue-19-Oct-2021-183456-AEDT.png"
        />
        <q-carousel-slide
          :name="2"
          img-src="https://cdn.quasar.dev/img/parallax1.jpg"
        />
        <q-carousel-slide
          :name="3"
          img-src="https://cdn.quasar.dev/img/parallax2.jpg"
        />
        <q-carousel-slide
          :name="4"
          img-src="https://cdn.quasar.dev/img/quasar.jpg"
        />
      </q-carousel>
    </q-responsive>
  </div>
</template>

<script>
import { ref } from "vue";

export default {
  setup() {
    return {
      slide: ref(1),
      fullscreen: ref(false),
    };
  },
};
</script>

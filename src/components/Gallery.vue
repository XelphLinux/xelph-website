<template>
  <div class="content-section">
    <div class="text-h3 q-pa-md text-bold text-center">Gallery</div>

    <q-responsive :ratio="16 / 9">
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
          img-src="https://cdn.discordapp.com/attachments/839798333623107594/900357546483806228/134214930-ba4b10f5-89e8-4e53-bf72-0f46363685a9.png"
        />
        <q-carousel-slide
          :name="2"
          img-src="https://media.discordapp.net/attachments/789373730777595904/900349697603026965/unknown.png"
        />

        <q-carousel-slide
          :name="3"
          img-src="https://cdn.discordapp.com/attachments/790205479732641802/899970983186808832/unknown.png"
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

<template>
  <q-page class="">
    <HeroSection />

    <AboutSection class="q-mt-xl" />

    <Gallery class="q-mt-xl" />
  </q-page>
</template>

<script>
import { defineComponent } from "vue";

import HeroSection from "src/components/HeroSection.vue";
import AboutSection from "src/components/AboutSection.vue";
import Gallery from "src/components/Gallery.vue";

export default defineComponent({
  name: "PageIndex",
  components: {
    HeroSection,
    AboutSection,
    Gallery,
  },
});
</script>

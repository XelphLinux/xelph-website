<template>
  <q-page class="">
    <HeroSection />

    <AboutSection />

    <div class="spacer rotate-180 layer"></div>

    <div class="spacer layer"></div>

    <Gallery />

    <Footer class="q-mt-sm" />
  </q-page>
</template>

<script>
import { defineComponent } from "vue";

import HeroSection from "src/components/HeroSection.vue";
import AboutSection from "src/components/AboutSection.vue";
import Gallery from "src/components/Gallery.vue";
import Footer from "src/components/Footer.vue";

export default defineComponent({
  name: "PageIndex",
  components: {
    HeroSection,
    AboutSection,
    Gallery,
    Footer,
  },
});
</script>

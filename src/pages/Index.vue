<template>
  <q-page class="">
    <HeroSection />

    <AboutSection />

    <div class="spacer rotate-180 layer"></div>

    <div class="spacer layer"></div>

    <Gallery />

    <div class="spacer layer"></div>

    <Download />

    <Footer />
  </q-page>
</template>

<script>
import { defineComponent } from "vue";

import HeroSection from "src/components/HeroSection.vue";
import AboutSection from "src/components/AboutSection.vue";
import Gallery from "src/components/Gallery.vue";
import Download from "src/components/Download.vue";
import Footer from "src/components/Footer.vue";

export default defineComponent({
  name: "PageIndex",
  components: {
    HeroSection,
    AboutSection,
    Gallery,
    Footer,
    Download,
  },
});
</script>

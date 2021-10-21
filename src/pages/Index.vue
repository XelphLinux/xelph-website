<template>
  <q-page class="">
    <HeroSection />

    <AboutSection id="about" />

    <div class="spacer rotate-180 layer"></div>

    <div class="spacer layer"></div>

    <Gallery id="gallery" />

    <div class="spacer layer"></div>

    <Download id="download" />

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

<template>
  <q-page class="">
    <HeroSection />
  </q-page>
</template>

<script>
import { defineComponent } from "vue";

import HeroSection from "src/components/HeroSection.vue";
export default defineComponent({
  name: "PageIndex",
  components: {
    HeroSection,
  },
});
</script>

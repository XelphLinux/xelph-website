<template>
  <div
    class="
      fullscreen
      bg-primary
      text-white text-center
      q-pa-md
      flex flex-center
    "
  >
    <div>
      <div class="text-h1">404</div>

      <div class="text-h2" style="opacity: 0.4">Seems like you got lost..</div>

      <q-btn
        class="q-mt-xl"
        color="accent"
        text-color="white"
        unelevated
        to="/"
        icon="home"
        label="Go Home"
        no-caps
      />
    </div>
  </div>
</template>

<script>
import { defineComponent } from "vue";

export default defineComponent({
  name: "Error404",
});
</script>

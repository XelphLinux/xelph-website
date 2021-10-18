<template>
  <router-view />
</template>
<script>
import { defineComponent } from "vue";
import { useQuasar } from "quasar";
export default defineComponent({
  name: "App",
  setup() {
    useQuasar().dark.set(true);
  },
});
</script>

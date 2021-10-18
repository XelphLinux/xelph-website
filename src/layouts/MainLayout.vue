<template>
  <q-layout view="lHh Lpr lFf">
    <q-header>
      <q-toolbar>
        <q-toolbar-title class="title-header">
          <strong>Xelph Linux</strong>
        </q-toolbar-title>
        <q-btn
          flat
          round
          dense
          :color="$q.dark.isActive ? 'light' : 'dark'"
          :icon="$q.dark.isActive ? 'light_mode' : 'dark_mode'"
          @click="$q.dark.toggle()"
        />
      </q-toolbar>
    </q-header>
    <q-page-container>
      <router-view />
    </q-page-container>
  </q-layout>
</template>

<script>
import { defineComponent } from "vue";

export default defineComponent({
  name: "MainLayout",
});
</script>

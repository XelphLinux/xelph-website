<template>
  <q-layout view="lHh Lpr lFf">
    <q-header>
      <q-toolbar>
        <q-toolbar-title>
          <strong><a class="title-header" href="#top">Xelph Linux</a></strong>
        </q-toolbar-title>

        <q-btn
          flat
          round
          dense
          :color="$q.dark.isActive ? 'light' : 'dark'"
          :icon="$q.dark.isActive ? 'light_mode' : 'dark_mode'"
          @click="$q.dark.toggle()"
        />
        <q-btn
          :color="$q.dark.isActive ? 'light' : 'dark'"
          flat
          @click="drawer = !drawer"
          round
          dense
          icon="menu"
        />
      </q-toolbar>
    </q-header>

    <q-drawer
      side="right"
      v-model="drawer"
      show-if-above
      :width="200"
      :breakpoint="800"
    >
      <q-scroll-area style="height: calc(100% - 150px)">
        <q-list padding>
          <a class="nav-item" href="#about">
            <q-item clickable v-ripple>
              <q-item-section avatar>
                <q-icon name="help" />
              </q-item-section>

              <q-item-section> About </q-item-section>
            </q-item>
          </a>

          <a class="nav-item" href="#gallery">
            <q-item clickable v-ripple>
              <q-item-section avatar>
                <q-icon name="collections" />
              </q-item-section>

              <q-item-section> Gallery </q-item-section>
            </q-item>
          </a>

          <a class="nav-item" href="#download">
            <q-item clickable v-ripple>
              <q-item-section avatar>
                <q-icon name="download" />
              </q-item-section>

              <q-item-section> Download </q-item-section>
            </q-item>
          </a>

          <q-separator spaced inset />

          <a class="nav-item" href="">
            <q-item clickable v-ripple>
              <q-item-section avatar>
                <q-icon name="book" />
              </q-item-section>

              <q-item-section> Wiki </q-item-section>
            </q-item>
          </a>
        </q-list>
      </q-scroll-area>
    </q-drawer>
    <q-page-container>
      <router-view />
    </q-page-container>
  </q-layout>
</template>

<script>
import { defineComponent } from "vue";

export default defineComponent({
  name: "MainLayout",
  data() {
    return {
      drawer: false,
    };
  },
});
</script>

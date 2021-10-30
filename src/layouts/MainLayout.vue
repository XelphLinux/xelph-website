<template>
  <q-layout view="hhh LpR lFf">
    <q-header>
      <q-toolbar>
        <q-toolbar-title>
          <strong
            ><strong class="title-header"
              >OS developed by
              <a target="_blank" href="https://github.com/shinyzenith/"
                >Aakash Sen Sharma</a
              ></strong
            ></strong
          >
          <strong
            ><strong class="title-header"
              > | Website developed by
              <a target="_blank" href="https://and249.netlify.app/"
                >Anindo Neel Dutta</a
              ></strong
            ></strong
          >
        </q-toolbar-title>
      </q-toolbar>
    </q-header>

    <q-page-container>
      <router-view />

      <!-- FAB nav -->
      <q-page-sticky position="bottom-right" :offset="fabPos">
        <q-fab
          icon="menu"
          direction="up"
          color="accent"
          :disable="draggingFab"
          v-touch-pan.prevent.mouse="moveFab"
        >
          <!-- Dark mode toggle -->
          <q-fab-action
            @click="$q.dark.toggle()"
            color="accent"
            :icon="$q.dark.isActive ? 'light_mode' : 'dark_mode'"
            :disable="draggingFab"
          />

          <!-- Download -->
          <q-fab-action
            @click="onClick"
            color="primary"
            icon="download"
            type="a"
            href="#download"
            :disable="draggingFab"
          />

          <!-- Gallery -->
          <q-fab-action
            @click="onClick"
            color="accent"
            icon="collections"
            type="a"
            href="#gallery"
            :disable="draggingFab"
          />
          <!-- Wiki -->
          <q-fab-action
            @click="onClick"
            color="primary"
            icon="help"
            type="a"
            href="#about"
            :disable="draggingFab"
          />
        </q-fab>
      </q-page-sticky>
    </q-page-container>
  </q-layout>
</template>

<script>
import { defineComponent, ref } from "vue";

export default defineComponent({
  name: "MainLayout",
  data() {
    return {
      drawer: false,
    };
  },

  setup() {
    const fabPos = ref([18, 18]);
    const draggingFab = ref(false);

    return {
      fabPos,
      draggingFab,

      onClick() {
        // console.log('Clicked on a fab action')
      },

      moveFab(ev) {
        draggingFab.value = ev.isFirst !== true && ev.isFinal !== true;

        fabPos.value = [
          fabPos.value[0] - ev.delta.x,
          fabPos.value[1] - ev.delta.y,
        ];
      },
    };
  },
});
</script>

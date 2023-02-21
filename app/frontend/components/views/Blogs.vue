<script setup lang="ts">
import { useFetch } from "../../composables/fetch";
const { data } = useFetch("http://localhost:3000/api/v1/blogs");
</script>

<template>
  <div>
    <h1 class="mb-4">Blogs</h1>
    <div class="grid grid-cols-1 gap-8 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4">
      <div class="card" v-for="{ title, id, preview_content, image_url } in data" :key="id">
        <div class="card-header">
          <img :src="image_url" :alt="title" />
        </div>
        <div class="card-content">
          <h4 class="card-title">{{ title }}</h4>
          <p>{{ preview_content }}</p>
          <a :href="`blog/${id}`" class="button button-primary is-small">Learn more...</a>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { useFetch } from "../../composables/fetch";
import { useGetAttribute } from "../../composables/getAttribute";

const { dynamicAttributes } = useGetAttribute("singlePost");
const postId = dynamicAttributes["data-post-id"];

const { data } = useFetch(`http://localhost:3000/api/v1/single-post/${postId}`);
</script>

<template>
  <div>
    <div>
      <img :src="data.image_url" :alt="data.title" />
    </div>
    <h1>{{ data.title }}</h1>
    <p>
      {{ data.content }}
    </p>
  </div>
</template>

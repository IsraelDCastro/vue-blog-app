import "./main.scss";

import { createApp } from "vue";
import Blogs from "../components/views/Blogs.vue";

const blogsElement = document.querySelector("#blogs");
if (blogsElement) {
  const blog = createApp(Blogs);
  blog.mount(blogsElement);
}

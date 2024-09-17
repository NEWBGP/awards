<script setup lang="ts"></script>

<template>
  <div class="bg-geral">
    <div class="header flex justify-content-center">
      <img src="/public/imgs/site/AtlasFT_blue.png" alt="" style="width: 25rem" class="">
    </div>
    <div class="menu flex justify-content-center align-items-center">
      <div class="mx-2 cursor-pointer transition-all">INÍCIO</div>
      <div class="mx-2 cursor-pointer transition-all">CATEGORIAS</div>
      <div class="mx-2 cursor-pointer transition-all">TOP</div>
    </div>
    <slot />
  </div>
</template>

<style scoped>
.bg-geral{
  background-image:url('/public/imgs/site/Sem-titulo.webp');
  background-repeat: no-repeat;
  background-position: center;
  background-size: cover;
  min-height: 100vh;
}
.menu{
  font-family: 'Roboto Slab';
  letter-spacing: 1px;
  color:#999;
  font-size: .85rem;
  background-image: linear-gradient(rgba(0, 0, 0, 0.8),rgba(0, 0, 0, 0.9),rgba(0, 0, 0, 0.9),rgba(0, 0, 0, 0.9), rgba(0, 0, 0, 0.8));
  min-height: 4rem;
}
.header{
  background-color: #262626;
  min-height: 10rem;
  background-image: linear-gradient(rgba(0, 0, 0, 0.1), rgba(0, 0, 0, 0.4)),url('/public/imgs/site/Atlas-v2-bg-opt.png');
  background-repeat: no-repeat;
  background-position: center;
  background-size: cover;
}
</style>

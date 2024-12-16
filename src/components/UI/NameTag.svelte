<script>
  export let text = "";
</script>

<div class="name-tag h-[24px] lg:h-[26px] relative p-[1px] rounded-full bg-[#3f3b44] overflow-hidden">
  <div class=" relative z-[2] flex items-center justify-center px-[9px] py-[3px] h-full rounded-full bg-[#3B333B]">
    <p class="text-[#8EC9ED] text-[12px] lg:text-[14px] font-Gilroy-Medium">{text}</p>
  </div>
</div>

<style>
  .name-tag::before {
    width: 100%;
    height: 50%;
    top: 50%;
    left: 50%;
    transform: 0;
    position: absolute;
    content: "";
    z-index: 1;
    border-radius: 0x;
    /* transition: 0.1s ease-in; */
    background-image: conic-gradient(#81b6d7 20deg, transparent 120deg);
    animation: rotate 4s infinite linear;
  }

  @keyframes rotate {
    0% {
      transform: translate(-50%, -50%) rotate(0deg);
    }
    100% {
      transform: translate(-50%, -50%) rotate(360deg);
    }
  }
</style>

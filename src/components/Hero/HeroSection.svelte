<script>
  import NameTag from "$components/UI/NameTag.svelte";

  export let activeSectionIndex;
</script>

<div class="flex flex-col items-center justify-center gap-[6px] w-full h-screen background">
  <div class="flex flex-col items-center gap-[12px] duration-500 {activeSectionIndex === 0 ? ' translate-y-0 opacity-100' : 'translate-y-[-100px] opacity-0'}">
    <NameTag text="No. 1 Gaming Platform in Mena Region." />
    <h1 class="header-text">Powering the future of web3</h1>
  </div>
  <div class="flex flex-col items-center gap-[14px] duration-500 {activeSectionIndex === 0 ? ' translate-y-0 opacity-100' : 'translate-y-[100px] opacity-0'}">
    <h1 class="header-text">gaming in Mena region.</h1>
    <div class="flex flex-col items-center gap-[36px] max-w-[283px] lg:max-w-[520px]">
      <p class="text-[#EDDFEBB2] textx-[14px] lg:text-[16px] text-center font-Gilroy-Medium">Bringing the next generation of gaming to the MENA region with Web3 technology, changing how games are played, owned, and enjoyed.</p>
      <button class="px-[20px] lg:px-[24px] py-[10px] lg:py-[12px] rounded-[8px] lg:rounded-[10px] bg-gradient">
        <p class="text-[#28130B] text-[16px] lg:text-[18px] font-Gilroy-Medium">Get Started Now</p>
      </button>
    </div>
  </div>
</div>

<style>
  .background {
    background-image: url("src/lib/assets/images/hero-bg.png");
    background-position: bottom;
    background-size: cover;
    background-repeat: no-repeat;
  }

  .header-text {
    font-family: "Anton", sans-serif;
    text-align: center;
    font-size: 62px;
    font-style: normal;
    font-weight: 400;
    line-height: 130%; /* 80.6px */
    background: linear-gradient(94deg, #eddfeb 0%, #eddfeb 16.5%, rgba(237, 223, 235, 0.5) 31.5%, #eddfeb 48%, #eddfeb 63%, rgba(237, 223, 235, 0.5) 74.5%, #eddfeb 87%, #eddfeb 100%);
    background-clip: text;
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
  }

  .bg-gradient {
    background: var(--Gradient, linear-gradient(95deg, #f71756 0%, #fdeb56 100%));
  }

  .bg-gradient:hover {
    background: linear-gradient(0deg, rgba(0, 0, 0, 0.3) 0%, rgba(0, 0, 0, 0.3) 100%), linear-gradient(95deg, #f71756 0%, #fdeb56 100%);
  }

  @media (max-width: 1024px) {
    .background {
      background-image: url("src/lib/assets/images/hero-bg-mobile.png");
    }

    .header-text {
      font-size: 32px;
    }
  }
</style>

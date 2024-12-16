<script>
  import NameTag from "$components/UI/NameTag.svelte";

  export let activeSectionIndex;
</script>

<div class="w-full h-screen overflow-y-auto overflow-x-hidden bg-[#100613]">
  <div class="w-full h-screen background flex items-center justify-center px-[16px]">
    <div class="flex flex-col lg:flex-row items-start lg:items-center gap-[72px] lg:justify-between w-full max-w-[1160px]">
      <div class="flex flex-col items-start gap-[16px] duration-1000 {activeSectionIndex === 1 ? ' translate-x-0 opacity-100' : 'translate-x-[-500px] opacity-0'}">
        <NameTag text="About Us" />
        <h1 class="header-text">Who We Are and What <br />We Stand For</h1>
      </div>
      <p class="text-[#EDDFEB99] text-[12px] lg:text-[16px] font-Gilroy-Medium max-w-[568px] duration-1000 {activeSectionIndex === 1 ? ' translate-x-0 opacity-100' : 'translate-x-[500px] opacity-0'}">We are a team of innovators dedicated to reshaping the gaming industry in the MENA region by leveraging the power of Web3 technology. Our vision is to create a gaming ecosystem where players are more than just participants—they are owners. In our games, digital assets like characters, items, and achievements are truly owned by the players, giving them the freedom to trade, sell, or use them across different platforms. We believe that Web3 technology offers a groundbreaking way to empower gamers, providing more control, freedom, and opportunities to benefit from the time and effort they invest in games. Through our commitment to building immersive, fun, and rewarding gaming experiences, we aim to create a vibrant community that thrives on innovation, ownership, and collaboration. Our mission is to redefine the future of gaming for players across the MENA region and beyond.</p>
    </div>
  </div>
  <div class="w-full h-[204.217px] lg:h-[55.3vh] end bg-[#100613] {activeSectionIndex === 1 ? 'scale-[1] duration-700' : 'scale-[3] duration-[1s]'}"></div>
</div>

<style>
  .background {
    background-image: url("src/lib/assets/images/about-bg.svg");
    background-position: top;
    background-size: cover;
    background-repeat: no-repeat;
  }

  .end {
    background-image: url("src/lib/assets/images/about-end.png");
    background-position: bottom;
    background-size: cover;
    background-repeat: no-repeat;
  }

  .header-text {
    font-family: "Anton", sans-serif;
    text-align: start;
    font-size: 40px;
    font-style: normal;
    font-weight: 400;
    line-height: 130%; /* 80.6px */
    background: linear-gradient(94deg, #eddfeb 0%, #eddfeb 16.5%, rgba(237, 223, 235, 0.5) 31.5%, #eddfeb 48%, #eddfeb 63%, rgba(237, 223, 235, 0.5) 74.5%, #eddfeb 87%, #eddfeb 100%);
    background-clip: text;
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
  }

  @media (max-width: 1024px) {
    .header-text {
      font-size: 32px;
    }
  }
</style>

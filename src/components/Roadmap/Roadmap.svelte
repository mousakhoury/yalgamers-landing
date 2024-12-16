<script>
  import NameTag from "$components/UI/NameTag.svelte";
  import RoadmapFiger from "$lib/assets/images/roadmap-figer.png";
  import { onMount } from "svelte";

  export let activeSectionIndex;

  let bgColors = ["#170E1A", "#1D1725", "#211325", "#251b1e"];
  let borderColors = ["#EDDFEB1A", "#8EC9ED4D", "#BC5AD74D", "#FDEB564D"];
  let titleBgs = ["#2C232F", "#23212F", "#311A37", "#322721"];
  let titleColors = ["#EDDFEB", "#8EC9ED", "#BC5AD7", "#FDEB56"];

  let steps = Array.from({ length: 4 }, (_, index) => ({
    id: index + 1,
    name: "Progress Name",
    date: "26 January, 2023.",
    bgColor: bgColors[index % bgColors.length],
    borderColor: borderColors[index % borderColors.length],
    titleBg: titleBgs[index % titleBgs.length],
    titleColor: titleColors[index % titleColors.length],
    text: "We are a team of innovators dedicated to reshaping the gaming industry in the MENA region by leveraging the power of Web3 technology. Our vision is to create a gaming ecosystem where players are more than just participants—they are owners. In our games, digital assets like character",
  }));

  let isMobile = false;

  const checkIsMobile = () => {
    isMobile = window.innerWidth <= 1024; // or any other breakpoint you want
  };

  onMount(() => {
    checkIsMobile(); // initial check on mount
    window.addEventListener("resize", checkIsMobile);

    return () => {
      window.removeEventListener("resize", checkIsMobile);
    };
  });
</script>

<div class="w-full h-screen bg-[#100613] background px-[9.43px]">
  <div class="flex flex-col lg:flex-row items-start gap-[60px] lg:justify-between m-auto pt-[85px] lg:pt-[120px] w-full h-screen lg:px-[140px] lg:overflow-y-scroll overflow-x-visible relative">
    <div class="flex flex-col items-start gap-[16px] duration-1000 sticky top-0 {activeSectionIndex === 3 ? ' translate-x-0 opacity-100' : 'translate-x-[-500px] opacity-0'}">
      <NameTag text="Roadmap" />
      <h1 class="header-text">Our Progress, Step <br />by Step</h1>
    </div>

    <div class="flex flex-col items-center gap-[50px] w-full lg:w-[469px] pt-[10px] duration-1000 overflow-y-scroll relative {activeSectionIndex === 3 ? ' translate-x-0 opacity-100' : 'translate-x-[500px] opacity-0'}">
      {#each steps as step}
        <div class="flex flex-col items-start gap-[13.164px] lg:gap-[18px] p-[21.94px] lg:p-[30px] sticky w-[290px] lg:w-full aspect-[343/248.65] lg:aspect-[469/340] rounded-[17.552px] lg:rounded-[24px] border border-[#EDDFEB0D] odd:rotate-[-3deg] even:rotate-[3deg]" style="background-color: {step.bgColor}; top: {isMobile ? 0 : 64 * (step.id - 1)}px;">
          <div class="px-[5.851px] lg:px-[8px] py-[1.463px] lg:py-[2px] rounded-full" style="background-color: {step.titleBg};">
            <p class="text-[8.776px] lg:text-[12px] font-Gilroy" style="color: {step.titleColor};">Step {step.id}</p>
          </div>
          <div class="flex flex-col items-start gap-[21.94px] lg:gap-[30px] w-full">
            <div class="flex flex-col items-start gap-[4.388px] lg:gap-[6px]">
              <p class="text-[#EDDFEB] text-[17.552px] lg:text-[24px] font-Gilroy-SemiBold">{step.name}</p>
              <p class="text-[#EDDFEB99] text-[10.239px] lg:text-[14px] font-Gilroy">{step.date}</p>
            </div>
            <hr class="w-full border-dashed" style="border-color: {step.borderColor};" />
            <p class="text-[#EDDFEB99] text-[11.701px] lg:text-[16px] font-Gilroy-Medium">{step.text}</p>
          </div>
        </div>
      {/each}
    </div>

    <img src={RoadmapFiger} alt="" class="hidden lg:block fixed bottom-0 left-[120px] duration-1000 {activeSectionIndex === 3 ? ' translate-x-0 opacity-100' : 'translate-x-[-500px] opacity-0'}" />
  </div>
</div>

<style>
  .background {
    background-image: url("src/lib/assets/images/roadmap-bg.png");
    background-position: right;
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

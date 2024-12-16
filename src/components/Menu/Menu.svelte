<script>
  import Menu from "$lib/assets/images/menu.svg";
  import MenuClose from "$lib/assets/images/menu-close.svg";
  import Telegram from "$lib/assets/images/header-telegram.svg";

  export let setActiveSection;

  let isOpen = false;

  let sections = [
    {
      name: "About Us",
      sectionId: 1,
    },
    {
      name: "Investors",
      sectionId: 2,
    },
    {
      name: "Roadmap",
      sectionId: 3,
    },
    {
      name: "Backers",
      sectionId: 4,
    },
    {
      name: "FAQ",
      sectionId: 5,
    },
    {
      name: "Team",
      sectionId: 6,
    },
  ];
</script>

<div class="flex flex-col items-end gap-[20px] fixed top-[20px] right-[20px] z-[10] duration-300 overflow-hidden {isOpen ? 'h-[362.8px]' : 'h-[30px]'}">
  <button on:click={() => (isOpen = !isOpen)} class="">
    <img src={isOpen ? MenuClose : Menu} alt="" class="w-[30px]" />
  </button>
  <div class="flex flex-col items-end gap-[32px]">
    <div class="flex flex-col items-end gap-[16px]">
      {#each sections as section}
        <button class="text-[#EDDFEBB2] hover:text-[#FDEB56] text-[14px] font-Gilroy-Medium" on:click={() => setActiveSection(section.sectionId)}>
          {section.name}
        </button>
      {/each}
    </div>
    <div class="flex flex-col items-end gap-[20px]">
      <a href="/" class="flex items-center justify-start gap-[10px] duration-300 h-[40px] w-[40px] hover:w-[155px] overflow-hidden p-[7px] rounded-[8px] border border-[#29B6F633]">
        <img src={Telegram} alt="" class="w-[25px]" />
        <p class="text-[#8EC9ED] text-[16px] font-Gilroy-Medium shrink-0">Telegram Bot</p>
      </a>
      <a href="/" class="w-[88px] h-[40px] flex items-center justify-center rounded-[8px] bg-[#FDEB56] hover:bg-[#B1A43C]">
        <p class="text-[#1B1907] text-[16px] font-Gilroy-Medium">Login</p>
      </a>
    </div>
  </div>
</div>

{#if isOpen}
  <div class="w-full h-screen fixed top-0 left-0 background z-[9]"></div>
{/if}

<style>
  .background {
    background: linear-gradient(180deg, rgba(16, 6, 19, 0.95) 52%, rgba(16, 6, 19, 0) 100%);
  }
</style>

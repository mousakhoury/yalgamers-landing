<script>
  import Logo from "$lib/assets/images/Logo.svg";
  import Telegram from "$lib/assets/images/header-telegram.svg";
  import Line from "$lib/assets/images/header-line.svg";

  export let setActiveSection;

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

<div class="flex flex-col items-start gap-[30px] w-full max-w-[1160px] left-[50%] translate-x-[-50%] fixed top-[30px] z-[9]">
  <div class="flex items-center justify-between w-full">
    <div class="w-[263px]">
      <img src={Logo} alt="" class="w-[199px]" />
    </div>

    <div class="flex items-center gap-[32px]">
      {#each sections as section}
        <button class="text-[#EDDFEBB2] hover:text-[#FDEB56] text-[16px] font-Gilroy-Medium" on:click={() => setActiveSection(section.sectionId)}>
          {section.name}
        </button>
      {/each}
    </div>

    <div class="flex items-center justify-end gap-[20px] w-[263px]">
      <a href="/" class="flex items-center justify-start gap-[10px] duration-300 h-[40px] w-[40px] hover:w-[155px] overflow-hidden p-[7px] rounded-[8px] border border-[#29B6F633]">
        <img src={Telegram} alt="" class="w-[25px]" />
        <p class="text-[#8EC9ED] text-[16px] font-Gilroy-Medium shrink-0">Telegram Bot</p>
      </a>
      <a href="/" class="w-[88px] h-[40px] flex items-center justify-center rounded-[8px] bg-[#FDEB56] hover:bg-[#B1A43C]">
        <p class="text-[#1B1907] text-[16px] font-Gilroy-Medium">Login</p>
      </a>
    </div>
  </div>
  <img src={Line} alt="" class="w-full" />
</div>

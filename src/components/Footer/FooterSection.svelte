<script>
  import Logo from "$lib/assets/images/Logo.svg";
  import Facebook from "$lib/assets/images/facebook.svg";
  import Instagram from "$lib/assets/images/instagram.svg";
  import Twitter from "$lib/assets/images/twitter.svg";
  import Telegram from "$lib/assets/images/telegram.svg";
  import Discord from "$lib/assets/images/discord.svg";
  import Youtube from "$lib/assets/images/youtube.svg";

  export let setActiveSection; // Accept the function as a prop

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

  let links = [
    {
      image: Facebook,
      path: "#",
    },
    {
      image: Instagram,
      path: "#",
    },
    {
      image: Twitter,
      path: "#",
    },
    {
      image: Telegram,
      path: "#",
    },
    {
      image: Discord,
      path: "#",
    },
    {
      image: Youtube,
      path: "#",
    },
  ];
</script>

<div class="flex items-center justify-center w-full h-screen background px-[16px]">
  <div class="flex flex-col items-start gap-[32px] lg:gap-[48px] p-[20px] lg:p-[60px] w-full max-w-[1160px] h-[563px] rounded-[30px] border border-[#34291E] main-bg">
    <div class="flex flex-col items-start gap-[28px] w-full">
      <div class="flex flex-col lg:flex-row gap-[24px] items-start lg:items-center justify-between w-full">
        <img src={Logo} alt="" class="w-[199px]" />
        <div class="flex items-center gap-[10px] lg:gap-[32px]">
          {#each sections as section}
            <button class="text-[#EDDFEBB2] hover:text-[#FDEB56] text-[12px] lg:text-[16px] shrink-0 font-Gilroy-Medium" on:click={() => setActiveSection(section.sectionId)}>
              {section.name}
            </button>
          {/each}
        </div>
      </div>

      <div class="flex flex-col-reverse lg:flex-row gap-[24px] items-start lg:items-center justify-between w-full">
        <p class="text-[#EDDFEB66] text-[14px] font-Gilroy">Copyright © 2023 YAL GAMERS</p>
        <div class="flex items-center gap-[24px]">
          {#each links as link}
            <a href={link.path}>
              <img src={link.image} alt="" class="w-[24px]" />
            </a>
          {/each}
        </div>
      </div>
    </div>

    <hr class="w-full border-dashed border-[#FDEB564D]" />
  </div>
</div>

<style>
  .background {
    background-image: url("src/lib/assets/images/footer-bg.svg");
    background-position: bottom;
    background-size: cover;
    background-repeat: no-repeat;
  }

  .main-bg {
    background-image: url("src/lib/assets/images/footer-main-bg.png");
    background-position: center;
    background-size: cover;
    background-repeat: no-repeat;
  }
</style>

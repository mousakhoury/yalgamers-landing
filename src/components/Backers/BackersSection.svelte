<script>
  import NameTag from "$components/UI/NameTag.svelte";
  import InvestorLogo from "$lib/assets/images/investor-logo.svg";
  export let activeSectionIndex;

  let backers = Array.from({ length: 8 }, (_, index) => ({
    id: index + 1,
    title: "title",
    logo: InvestorLogo,
  }));

  // Slice the array to get only the first 6 backers
  let firstSixBackers = backers.slice(0, 6);

  // Calculate the size of each quarter
  let quarterSize = Math.ceil(backers.length / 4);

  // Slice the array into 4 parts
  let firstQuarter = backers.slice(0, quarterSize);
  let secondQuarter = backers.slice(quarterSize, quarterSize * 2);
  let thirdQuarter = backers.slice(quarterSize * 2, quarterSize * 3);
  let fourthQuarter = backers.slice(quarterSize * 3);
</script>

<div class="flex flex-col gap-[24px] items-center justify-center w-full h-screen background p-[16px]">
  <div class="flex flex-col gap-[40px] items-center w-full duration-1000 {activeSectionIndex === 4 ? ' translate-y-0 opacity-100' : 'translate-y-[-100px] opacity-0'}">
    <div class="flex flex-col items-center gap-[16px]">
      <NameTag text="Backers" />
      <h1 class="header-text">Introducing the Pioneers <br />Supporting Our Mission</h1>
    </div>
    <div class="hidden lg:grid grid-cols-2 gap-[24px] w-full max-w-[1161px]">
      <div class="grid grid-cols-2 gap-[24px] w-full duration-1000 {activeSectionIndex === 4 ? ' translate-x-0' : 'translate-x-[-100px]'}">
        {#each firstQuarter as backer}
          <button class="flex items-center justify-center w-full aspect-[272/195] px-[46px] py-[37px] item-bg">
            <img src={backer.logo} alt="" class="" />
          </button>
        {/each}
      </div>
      <div class="grid grid-cols-2 gap-[24px] w-full duration-1000 {activeSectionIndex === 4 ? ' translate-x-0' : 'translate-x-[100px]'}">
        {#each secondQuarter as backer}
          <button class="flex items-center justify-center w-full aspect-[272/195] px-[46px] py-[37px] item-bg">
            <img src={backer.logo} alt="" class="" />
          </button>
        {/each}
      </div>
    </div>

    <div class="grid lg:hidden grid-cols-2 gap-[15px] w-full">
      {#each firstSixBackers as backer}
        <button class="flex items-center justify-center w-full aspect-[272/195] px-[13px] py-[13px] item-bg">
          <img src={backer.logo} alt="" class="" />
        </button>
      {/each}
    </div>
  </div>
  <div class="hidden lg:grid grid-cols-2 gap-[24px] w-full max-w-[1161px] duration-1000 {activeSectionIndex === 4 ? ' translate-y-0 opacity-100' : 'translate-y-[100px] opacity-0'}">
    <div class="grid grid-cols-2 gap-[24px] w-full duration-1000 {activeSectionIndex === 4 ? ' translate-x-0' : 'translate-x-[-100px]'}">
      {#each thirdQuarter as backer}
        <button class="flex items-center justify-center w-full aspect-[272/195] px-[46px] py-[37px] item-bg">
          <img src={backer.logo} alt="" class="" />
        </button>
      {/each}
    </div>
    <div class="grid grid-cols-2 gap-[24px] w-full duration-1000 {activeSectionIndex === 4 ? ' translate-x-0' : 'translate-x-[100px]'}">
      {#each fourthQuarter as backer}
        <button class="flex items-center justify-center w-full aspect-[272/195] px-[46px] py-[37px] item-bg">
          <img src={backer.logo} alt="" class="" />
        </button>
      {/each}
    </div>
  </div>
</div>

<style>
  .background {
    background-image: url("src/lib/assets/images/investors-bg.png");
    background-position: center;
    background-size: cover;
    background-repeat: no-repeat;
  }

  .header-text {
    font-family: "Anton", sans-serif;
    text-align: center;
    font-size: 40px;
    font-style: normal;
    font-weight: 400;
    line-height: 130%; /* 80.6px */
    background: linear-gradient(94deg, #eddfeb 0%, #eddfeb 16.5%, rgba(237, 223, 235, 0.5) 31.5%, #eddfeb 48%, #eddfeb 63%, rgba(237, 223, 235, 0.5) 74.5%, #eddfeb 87%, #eddfeb 100%);
    background-clip: text;
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
  }

  .item-bg {
    border-radius: 16px;
    border: 1px solid rgba(188, 90, 215, 0.3);
    background: radial-gradient(50% 50% at 50% 50%, rgba(188, 90, 215, 0) 55.5%, rgba(188, 90, 215, 0.05) 100%), #1a111c;
    box-shadow:
      0px 0px 10px 2px rgba(188, 90, 215, 0.3) inset,
      0px 0px 20px 4px rgba(188, 90, 215, 0.15);
  }

  @media (max-width: 1024px) {
    .header-text {
      font-size: 32px;
    }

    .item-bg {
      border-radius: 10px;
      border: 1px solid rgba(188, 90, 215, 0.3);
      background: radial-gradient(50% 50% at 50% 50%, rgba(188, 90, 215, 0) 55.5%, rgba(188, 90, 215, 0.05) 100%), #1a111c;
      box-shadow:
        0px 0px 10px 2px rgba(188, 90, 215, 0.3) inset,
        0px 0px 20px 4px rgba(188, 90, 215, 0.15);
    }
  }
</style>

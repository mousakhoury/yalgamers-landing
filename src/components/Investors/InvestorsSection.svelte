<script>
  import NameTag from "$components/UI/NameTag.svelte";
  import InvestorLogo from "$lib/assets/images/investor-logo.svg";
  import UpRightArrow from "$lib/assets/images/arrow-up-right-gold.svg";
  export let activeSectionIndex;

  let investors = Array.from({ length: 6 }, (_, index) => ({
    id: index + 1,
    title: "title",
    logo: InvestorLogo,
  }));

  let firstHalf = investors.slice(0, Math.ceil(investors.length / 2));
  let secondHalf = investors.slice(Math.ceil(investors.length / 2));
</script>

<div class="flex flex-col gap-[24px] items-center justify-center w-full h-screen background px-[16px]">
  <div class="flex flex-col gap-[40px] items-center w-full duration-1000 {activeSectionIndex === 2 ? ' translate-y-0 opacity-100' : 'translate-y-[-100px] opacity-0'}">
    <div class="flex flex-col items-center gap-[16px]">
      <NameTag text="Investors" />
      <h1 class="header-text">Who We Are and What <br />We Stand For</h1>
    </div>
    <div class="hidden lg:grid grid-cols-3 gap-[24px] w-full max-w-[1161px]">
      {#each firstHalf as investor}
        <button class="flex items-center justify-center w-full aspect-[371/199] item-bg relative overflow-hidden group">
          <img src={investor.logo} alt="" class="duration-300 group-hover:translate-y-[-20px]" />
          <div class="flex items-center gap-[8.032px] duration-300 absolute scale-[0.9] group-hover:scale-[1] bottom-[-20px] group-hover:bottom-[20.5px]">
            <p class="text-[#FDEB56] text-[16.064px] font-Gilroy-Medium">View Details</p>
            <img src={UpRightArrow} alt="" class="w-[21.419px]" />
          </div>
        </button>
      {/each}
    </div>
    <div class="grid lg:hidden grid-cols-2 gap-[15px] w-full">
      {#each investors as investor}
        <button class="flex items-center justify-center w-full aspect-[164/120] px-[12px] lg:px-[65px] lg:aspect-[371/199] item-bg relative overflow-hidden group">
          <img src={investor.logo} alt="" class="duration-300 group-hover:translate-y-[-20px]" />
          <div class="flex items-center gap-[8.032px] duration-300 absolute scale-[0.9] group-hover:scale-[1] bottom-[-20px] group-hover:bottom-[20.5px]">
            <p class="text-[#FDEB56] text-[16.064px] font-Gilroy-Medium">View Details</p>
            <img src={UpRightArrow} alt="" class="w-[21.419px]" />
          </div>
        </button>
      {/each}
    </div>
  </div>
  <div class="hidden lg:grid grid-cols-3 gap-[24px] w-full max-w-[1161px] duration-1000 {activeSectionIndex === 2 ? ' translate-y-0 opacity-100' : 'translate-y-[100px] opacity-0'}">
    {#each secondHalf as investor}
      <button class="flex items-center justify-center w-full aspect-[371/199] item-bg relative overflow-hidden group">
        <img src={investor.logo} alt="" class="duration-300 group-hover:translate-y-[-20px]" />
        <div class="flex items-center gap-[8.032px] duration-300 absolute scale-[0.9] group-hover:scale-[1] bottom-[-20px] group-hover:bottom-[20.5px]">
          <p class="text-[#FDEB56] text-[16.064px] font-Gilroy-Medium">View Details</p>
          <img src={UpRightArrow} alt="" class="w-[21.419px]" />
        </div>
      </button>
    {/each}
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
    border-radius: 20px;
    /* border: 2px solid rgba(237, 223, 235, 0.25); */
    background: linear-gradient(106deg, rgba(237, 223, 235, 0.06) 0%, rgba(237, 223, 235, 0.01) 100%);
    backdrop-filter: blur(25px);
  }

  @media (max-width: 1024px) {
    .header-text {
      font-size: 32px;
    }

    .item-bg {
      border-radius: 10px;
      background: linear-gradient(106deg, rgba(237, 223, 235, 0.06) 0%, rgba(237, 223, 235, 0.01) 100%);
      backdrop-filter: blur(25px);
    }
  }
</style>

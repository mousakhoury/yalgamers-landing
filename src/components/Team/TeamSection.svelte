<script>
  import NameTag from "$components/UI/NameTag.svelte";
  import MemberPlaceholder from "$lib/assets/images/member-placeholder.png";

  export let activeSectionIndex;

  let team = Array.from({ length: 30 }, (_, index) => ({
    id: index + 1,
    positions: `Founder ${index + 1}`,
    name: `Abdullah Al Gharem ${index + 1}`,
    image: MemberPlaceholder,
    description: "2x MSC management and engineering. Worked in multiple companies in Europe and Singapore including BMW, ETH Zurich, RWTH, TUM, MIT and NUS. Established DW community fund in web3, with +70 investments in gaming and web3 projects. Led multiple initiatives in web3 with brands like MBC group, decrypt and others.2x MSC management and engineering. Worked in multiple companies in Europe and Singapore including BMW, ETH Zurich, RWTH, TUM, MIT and NUS. Established DW community fund in web3, with +70 investments in gaming and web3 projects. Led multiple initiatives in web3 with brands like MBC group, decrypt and others.2x MSC management and engineering. Worked in multiple companies in Europe and Singapore including BMW, ETH Zurich, RWTH, TUM, MIT and NUS. Established DW community fund in web3, with +70 investments in gaming and web3 projects. Led multiple initiatives in web3 with brands like MBC group, decrypt and others.2x MSC management and engineering. Worked in multiple companies in Europe and Singapore including BMW, ETH Zurich, RWTH, TUM, MIT and NUS. Established DW community fund in web3, with +70 investments in gaming and web3 projects.",
  }));

  let selectedMemberId = 1;

  function getMemberById(id) {
    return team.find((member) => member.id === id);
  }

  let selectedMember = getMemberById(1);

  function selectMember(id) {
    selectedMemberId = id;
    selectedMember = getMemberById(id);
  }
</script>

<div class="flex flex-col gap-[32px] lg:gap-[41px] items-center justify-center w-full h-screen background px-[16px]">
  <div class="w-full duration-1000 {activeSectionIndex === 6 ? ' translate-y-0 opacity-100' : 'translate-y-[-100px] opacity-0'}">
    <div class="flex flex-col items-center gap-[16px]">
      <NameTag text="Team" />
      <h1 class="header-text">Meet the Talented Team Driving <br />Our Vision Forward</h1>
    </div>
  </div>
  <div class="flex flex-col lg:flex-row items-start gap-[18px] lg:gap-[24px] h-[497px] lg:h-[393px] w-full max-w-[1160px] mx-auto duration-1000 {activeSectionIndex === 6 ? ' translate-y-0 opacity-100' : 'translate-y-[100px] opacity-0'}">
    <div class="flex flex-col items-start gap-[20px] w-full lg:max-w-[272px] h-[190px] lg:h-full p-[20px] pb-0 rounded-[20px] border border-[#251C28] bg-[#170D1A] duration-1000 {activeSectionIndex === 6 ? ' translate-x-0 opacity-100' : 'translate-x-[-100px] opacity-0'}">
      <p class="text-[#EDDFEBE5] text-[20px] font-Gilroy-SemiBold pb-[16px] border-b w-full border-dashed border-[#EDDFEB1A]">Positions</p>
      <div class="flex flex-col items-start gap-[12px] w-full h-full overflow-auto">
        {#each team as member}
          <button on:click={() => selectMember(member.id)} class="flex items-center gap-[5px]">
            {#if selectedMemberId === member.id}
              <hr class="w-[32px] border-[#FDEB56]" />
            {/if}
            <p class="text-[14px] font-Gilroy-Medium {selectedMemberId === member.id ? 'text-[#FDEB56]' : 'text-[#EDDFEBB2]'}">{member.positions}</p>
          </button>
        {/each}
      </div>
    </div>

    <div class="flex flex-col items-start gap-[20px] w-full h-[289px] lg:h-full p-[20px] rounded-[20px] border border-[#251C28] bg-[#170D1A] duration-1000 {activeSectionIndex === 6 ? ' translate-x-0 opacity-100' : 'translate-x-[100px] opacity-0'}">
      <div class="flex items-center gap-[14px] lg:gap-[20px]">
        <img src={selectedMember.image} alt="" class="w-[60px] lg:w-[100px] aspect-square rounded-[10px] object-cover" />
        <div class="flex flex-col items-start gap-[6px]">
          <p class="text-[#EDDFEBE5] text-[18px] lg:text-[24px] font-Gilroy-SemiBold">
            {selectedMember.name}
          </p>
          <div class="flex items-center gap-[8px]">
            <div class="px-[6px] py-[3px] rounded-full bg-[#BC5AD71A]">
              <p class="text-[#BC5AD7] text-[11px] lg:text-[14px] font-Gilroy-Medium">CEO</p>
            </div>
            <div class="px-[6px] py-[3px] rounded-full bg-[#BC5AD71A]">
              <p class="text-[#BC5AD7] text-[11px] lg:text-[14px] font-Gilroy-Medium">Founder</p>
            </div>
          </div>
        </div>
      </div>
      <hr class="w-full border-dashed border-[#EDDFEB1A]" />
      <p class="text-[#EDDFEBB2] text-[12px] lg:text-[14px] font-Gilroy w-full h-full overflow-auto">{selectedMember.description}</p>
    </div>
  </div>
</div>

<style>
  .background {
    background-image: url("src/lib/assets/images/team-bg.png");
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

  .overflow-auto::-webkit-scrollbar-track {
    background: #170d1a;
  }

  .overflow-auto::-webkit-scrollbar {
    width: 6px;
    height: 6px;
    display: block;
  }

  .overflow-auto::-webkit-scrollbar-thumb {
    background: #2f3344;
    border-radius: 100px;
  }

  @media (max-width: 1024px) {
    .header-text {
      font-size: 32px;
    }
  }
</style>

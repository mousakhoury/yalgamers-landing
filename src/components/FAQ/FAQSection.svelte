<script>
  import NameTag from "$components/UI/NameTag.svelte";
  import ArrowDown from "$lib/assets/images/arrow-down.svg";

  export let activeSectionIndex;

  let questions = Array.from({ length: 5 }, (_, index) => ({
    id: index + 1,
    question: "How Yalgamers works?",
    answer: "We are a team of innovators dedicated to reshaping the gaming industry in the MENA region by leveraging the power of Web3 technology. Our vision is to create a gaming ecosystem where players are more than just participants—they are owners. In our games, digital assets like characters, items.",
  }));

  let selectedQuestionId = null; // Tracks which question is open

  function toggleQuestion(id) {
    selectedQuestionId = selectedQuestionId === id ? null : id; // Toggle open/close
  }
</script>

<div class="w-full h-screen overflow-y-auto overflow-x-hidden bg-[#100613]">
  <div class="w-full h-screen background flex items-start pt-[100px] justify-center px-[16px]">
    <div class="flex flex-col lg:flex-row items-start gap-[24px] lg:justify-between w-full max-w-[1160px]">
      <div class="flex flex-col items-start gap-[16px] duration-1000 {activeSectionIndex === 5 ? ' translate-x-0 opacity-100' : 'translate-x-[-500px] opacity-0'}">
        <NameTag text="FAQ" />
        <h1 class="header-text">Frequently Asked <br />Question</h1>
      </div>
      <div class="flex flex-col items-start w-full max-w-[568px] duration-1000 {activeSectionIndex === 5 ? ' translate-x-0 opacity-100' : 'translate-x-[500px] opacity-0'}">
        {#each questions as question}
          <button on:click={() => toggleQuestion(question.id)} class="flex flex-col items-start gap-[12px] w-full border-b border-[#EDDFEB1A] overflow-hidden transition-all duration-500 py-[16px] lg:py-[20px] {selectedQuestionId === question.id ? 'h-auto' : 'h-[63px] lg:h-[71px]'}">
            <div class="flex items-center justify-between w-full py-[5px]">
              <p class="text-[#EDDFEBE5] text-[17px] lg:text-[20px] font-Gilroy-SemiBold">{question.question}</p>
              <img src={ArrowDown} alt="" class="transition-transform duration-300" style="transform: rotate({selectedQuestionId === question.id ? '180deg' : '0deg'})" />
            </div>
            {#if selectedQuestionId === question.id}
              <p class="text-[#EDDFEB99] text-[12px] lg:text-[14px] text-start font-Gilroy-Regular">{question.answer}</p>
            {/if}
          </button>
        {/each}
      </div>
    </div>
  </div>
  <div class="w-full h-[204px] lg:h-[55.3vh] end bg-[#100613] {activeSectionIndex === 5 ? 'scale-[1] duration-700' : 'scale-[3] duration-[1s]'}"></div>
</div>

<style>
  .background {
    background-image: url("src/lib/assets/images/about-bg.svg");
    background-position: top;
    background-size: cover;
    background-repeat: no-repeat;
  }

  .end {
    background-image: url("src/lib/assets/images/faq-end.png");
    background-position: bottom;
    background-size: contain;
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

    .end {
      background-image: url("src/lib/assets/images/faq-end-mobile.png");
    }
  }
</style>

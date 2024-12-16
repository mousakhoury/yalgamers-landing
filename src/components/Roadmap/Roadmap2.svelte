<script>
  import NameTag from "$components/UI/NameTag.svelte";

  export let activeSectionIndex;
</script>

<div class="w-full h-screen bg-[#100613] background">
  <div class="flex items-start justify-between m-auto pt-[120px] w-full h-screen px-[140px] overflow-y-scroll overflow-x-visible relative">
    <div class="flex flex-col items-start gap-[16px] duration-1000 sticky top-0 {activeSectionIndex === 3 ? ' translate-x-0 opacity-100' : 'translate-x-[-500px] opacity-0'}">
      <h1 class="header-text">Our Progress, Step <br />by Step</h1>
    </div>
  </div>
</div>

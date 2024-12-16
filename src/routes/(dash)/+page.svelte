<script>
  import AboutSection from "$components/AboutUs/AboutSection.svelte";
  import BackersSection from "$components/Backers/BackersSection.svelte";
  import FaqSection from "$components/FAQ/FAQSection.svelte";
  import FooterSection from "$components/Footer/FooterSection.svelte";
  import Header from "$components/Hero/Header.svelte";
  import HeroSection from "$components/Hero/HeroSection.svelte";
  import InvestorsSection from "$components/Investors/InvestorsSection.svelte";
  import Menu from "$components/Menu/Menu.svelte";
  import Roadmap from "$components/Roadmap/Roadmap.svelte";
  import TeamSection from "$components/Team/TeamSection.svelte";
  import { onMount } from "svelte";

  let sections = [];
  let activeSectionIndex = 0; // Start with the first section as active
  let isMobile = false;

  const updateActiveSection = () => {
    sections.forEach((section, index) => {
      const rect = section.getBoundingClientRect();
      // Check if the section is fully revealed (inside the scrollable container)
      if (rect.top <= 0 && rect.bottom > 0) {
        activeSectionIndex = index;
      }
    });
  };

  const setActiveSection = (index) => {
    activeSectionIndex = index;
    sections[index]?.scrollIntoView({ behavior: "smooth" });
  };

  const checkIfMobile = () => {
    isMobile = window.innerWidth <= 1024; // Adjust the width for mobile breakpoint
  };

  onMount(() => {
    const container = document.querySelector(".relaive"); // The scrollable container

    // Check if it's a mobile device on mount
    checkIfMobile();

    // Run the function once on load to detect the active section immediately
    updateActiveSection();

    // Add scroll event listener to the container (not window)
    container.addEventListener("scroll", updateActiveSection);

    // Add resize event listener to update mobile state when the window is resized
    window.addEventListener("resize", checkIfMobile);

    return () => {
      container.removeEventListener("scroll", updateActiveSection);
      window.removeEventListener("resize", checkIfMobile);
    };
  });
</script>

<div class="relaive overflow-y-scroll w-full h-screen">
  {#if activeSectionIndex === 0 && !isMobile}
    <Header {setActiveSection} />
  {:else if activeSectionIndex != 7}
    <Menu {setActiveSection} />
  {/if}

  <div bind:this={sections[0]} class="sticky top-0 duration-[1s] z-[8] {activeSectionIndex === 0 ? 'opacity-100 visible scale-[1]' : ' scale-[1.3] invisible opacity-0'} ">
    <HeroSection {activeSectionIndex} />
  </div>

  <div bind:this={sections[1]} class="section z-[7] transition-clip {activeSectionIndex === 1 ? 'opacity-100 duration-700  visible' : 'opacity-0 duration-[1s] invisible'} {activeSectionIndex === 0 ? 'clip-in' : 'clip-out'}">
    <AboutSection {activeSectionIndex} />
  </div>
  <div bind:this={sections[2]} class="section duration-[1s] z-[6] transition-clip {activeSectionIndex === 2 ? 'opacity-100 visible' : ' opacity-0 invisible'} {activeSectionIndex === 1 ? 'clip-in' : 'out'}">
    <InvestorsSection {activeSectionIndex} />
  </div>
  <div bind:this={sections[3]} class="section duration-700 z-[5] {activeSectionIndex === 3 ? 'opacity-100 visible' : ' opacity-0 invisible'}">
    <Roadmap {activeSectionIndex} />
  </div>
  <div bind:this={sections[4]} class="section duration-700 z-[4] {activeSectionIndex === 4 ? 'opacity-100 visible' : ' opacity-0 invisible'}">
    <BackersSection {activeSectionIndex} />
  </div>
  <div bind:this={sections[5]} class="section z-[3] transition-clip {activeSectionIndex === 5 ? 'opacity-100 duration-700  visible' : 'opacity-0 duration-[1s] invisible'} {activeSectionIndex === 4 ? 'clip-in' : 'clip-out'}">
    <FaqSection {activeSectionIndex} />
  </div>
  <div bind:this={sections[6]} class="section duration-[1s] z-[2] transition-clip {activeSectionIndex === 6 ? 'opacity-100 visible' : ' opacity-0 invisible'} {activeSectionIndex === 5 ? 'clip-in' : 'out'}">
    <TeamSection {activeSectionIndex} />
  </div>
  <div bind:this={sections[7]} class="section duration-700 z-[1] {activeSectionIndex === 7 ? 'opacity-100 visible' : ' opacity-0 invisible'}">
    <FooterSection {activeSectionIndex} {setActiveSection} />
  </div>
</div>

<style>
  .section {
    position: sticky;
    top: 0;
    height: 100vh;
    width: 100%;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    /* background: #100613; */
    color: white;
    font-size: 2rem;
    transition:
      transform 0.2s,
      opacity 0.2s;
  }

  .transition-clip {
    transition:
      clip-path 1.5s ease-in-out,
      opacity 1.5s ease-in-out;
  }

  .clip-in {
    clip-path: circle(0% at 50% 50%);
  }

  .clip-out {
    clip-path: circle(150% at 50% 50%);
  }
</style>

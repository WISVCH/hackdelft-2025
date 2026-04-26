<script lang="ts">
    import { onMount } from 'svelte';
    import sponsorData from '$lib/data/sponsors.json';

    const sponsorLogoDir = "assets/sponsors/"
    const sponsorLogoMap: { [key: string]: URL } = {
        ch: new URL(sponsorLogoDir + "/ch.svg?as=webp&width=200", import.meta.url),
        xtudelft: new URL(
            sponsorLogoDir + "/xtudelft.png?as=webp&width=200",
            import.meta.url
        ),
        navara: new URL(sponsorLogoDir + "/nav_logo_navy_diap_rgb.png?as=webp&width=200", import.meta.url),
        jetbrains: new URL(sponsorLogoDir + "/jetbrains_logo.png?as=webp&width=200", import.meta.url),
        sping: new URL(sponsorLogoDir + "/Sping_logo.png?as=webp&width=200", import.meta.url),
        unipartners: new URL(sponsorLogoDir + "/UniPartners-Logo.png?as=webp&width=200", import.meta.url)
    };
  interface Sponsor {
    logoKey: string;
    url: string;
    title: string;
  }

  interface SponsorCategory {
    type: 'organisation' | 'primary' | 'secondary';
    title: string;
    items: Sponsor[];
  }

  let categories: SponsorCategory[] = [];

  function shuffleArray<T>(array: T[]): T[] {
    const arr = [...array];
    for (let i = arr.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [arr[i], arr[j]] = [arr[j], arr[i]];
    }
    return arr;
  }

  onMount(() => {
    categories = sponsorData.map((category: SponsorCategory) => ({
      ...category,
      items: shuffleArray(category.items),
    }));
  });

  const typeColors: Record<SponsorCategory['type'], string> = {
    organisation: 'text-tu',
    primary: 'text-primary',
    secondary: 'text-secondary-brand',
  };
</script>

<section class="mb-24">
    <div class="mb-8 bg-CppBlue/50 p-4 pb-8 rounded-md">
  <h2
    class="text-5xl font-normal text-center mb-16 text-primary"
  >
    Sponsors
  </h2>

  {#each categories as category}
    <div>
      <h3
        class="text-3xl font-normal text-center mb-16 text-primary"
      >
        {category.title}
      </h3>

      <ul class="flex flex-wrap justify-evenly gap-x-8 gap-y-4 p-0 mb-8">
        {#each category.items as sponsor (sponsor.logoKey)}
            <li class="w-2/3 sm:w-1/2 md:w-1/3 xl:w-1/5 list-none flex justify-center">
                <a
                    href={sponsor.url}
                    target="_blank"
                    rel="noopener"
                    title={sponsor.title}
                    class="no-underline block w-full"
                >
                    <!-- Top bar
                    <div class="mb-2.5">
                        <hr class="h-0.5 w-full border-0 bg-[#84C1EE]" />
                    </div> -->

                    <!-- Logo -->
                    <div class="flex p-6 bg-VodkaWhite rounded-2xl">
                        <img
                        src={sponsorLogoMap[sponsor.logoKey].toString()}
                        alt={sponsor.title}
                        class="w-full h-30 object-contain"
                        />
                    </div>

                    <!-- Title -->
                    <p
                        class="text-white text-center text-xl font-normal mt-2.5 {typeColors[category.type]}"
                    >
                        {sponsor.title}
                    </p>

                    <!-- Bottom bar -->
                    <div class="mt-2.5">
                        <hr class="h-0.5 w-full border-0 bg-[#84C1EE]" />
                    </div>
                </a>
          </li>
        {/each}
      </ul>
    </div>
  {/each}
  </div>
</section>

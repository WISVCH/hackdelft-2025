<script lang="ts">
    import { onMount, onDestroy } from "svelte";
    import Photo from "./Photo.svelte";

    // Replace with your actual data import, e.g.:
    const imageModules = import.meta.glob('$lib/assets/photos-event/*', {
        eager: true,
        query: '?url',
        import: 'default'
    });
    const photosMap: string[] = Object.values(imageModules) as string[];

    let currentIndex = 0;
    let galleryEl: HTMLDivElement;
    let animationId: number | null = null;
    let shouldAnimate = true;
    let lastScrolled = 0;

    function animate(time: DOMHighResTimeStamp) {
        if (!shouldAnimate) {
            animationId = null;
            return;
        }
        animationId = requestAnimationFrame(animate);
        if (!galleryEl) return;

        const scaledTime = time * 0.06;
        const max = galleryEl.scrollWidth - galleryEl.clientWidth;
        galleryEl.scrollLeft = scaledTime % max;
        lastScrolled = scaledTime % max;
    }

    onMount(() => {
        animationId = requestAnimationFrame(animate);

        galleryEl.onscroll = () => {
            if (!shouldAnimate) return;
            const diff = lastScrolled - galleryEl.scrollLeft;
            if (Math.abs(diff) < 4) return;
            shouldAnimate = false;
        };
    });

    onDestroy(() => {
        if (animationId !== null) cancelAnimationFrame(animationId);
    });

    // replace resumeAnimate / stopAnimate with one function
    function setAnimate(animating: boolean) {
        if (animating && !shouldAnimate) {
            shouldAnimate = true;
            animationId = requestAnimationFrame(animate);
        } else {
            shouldAnimate = false;
        }
    }
</script>

<section class="mb-8" id="pictures">
    <h2
        class="text-primary text-5xl font-normal text-center mb-8 pl-px"
    >
        Pictures
    </h2>

    <!-- Gallery container with fade-out edges -->
    <div
        class="relative overflow-hidden
               before:content-[''] before:absolute before:inset-y-0 before:left-0 before:w-[30%]
               before:bg-linear-to-l before:from-transparent before:to-black before:z-10 before:pointer-events-none
               after:content-[''] after:absolute after:inset-y-0 after:right-0 after:w-[30%]
               after:bg-linear-to-r after:from-transparent after:to-black after:z-10 after:pointer-events-none"
    >
        <!-- svelte-ignore a11y-click-events-have-key-events a11y-no-static-element-interactions -->
        <div
            bind:this={galleryEl}
            class="relative flex flex-nowrap min-w-0 overflow-x-scroll gap-2
                   [scrollbar-width:auto]
                   [&::-webkit-scrollbar]:h-2
                   [&::-webkit-scrollbar-track]:bg-[rgb(48,48,48)]
                   [&::-webkit-scrollbar-thumb]:bg-[rgb(100,100,100)]"
        >
            {#each photosMap as url, index}
                <Photo
                    {url}
                    currentIndex={index}
                    totalPhotos={photosMap.length}
                    activeIndex={currentIndex}
                    startup={shouldAnimate}
                    onnavigate={(i) => (currentIndex = i)}
                    onresumeAnimate={setAnimate}
                />
            {/each}
        </div>
    </div>
</section>
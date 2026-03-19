<script lang="ts">
    interface Props {
        url: string;
        currentIndex: number;
        totalPhotos: number;
        activeIndex: number;
        startup: boolean;
        onnavigate: (index: number) => void;
        onresumeAnimate: (animating: boolean) => void;
    }

    let {
        url,
        currentIndex,
        totalPhotos,
        activeIndex,
        startup,
        onnavigate,
        onresumeAnimate,
    }: Props = $props();

    let opened = $state(false);
    let localIndex = $state(currentIndex);

    $effect(() => {
        if (startup) {
            opened = false;
        }
    });

    function openPhoto() {
        opened = true;
        onnavigate(currentIndex);  // tell parent this index is now active
        onresumeAnimate(false);
    }

    function closePhoto() {
        opened = false;
        onresumeAnimate(true);
    }

    function navigate(delta: number, e: MouseEvent) {
        e.stopPropagation();
        const next = (localIndex + delta + totalPhotos) % totalPhotos;
        localIndex = next;
        onnavigate(next);
    }
</script>

<!-- Thumbnail -->
<button class="cursor-pointer shrink-0" aria-label="open-image" onclick={openPhoto}>
    <enhanced:img src={url} alt="HackDelft photo" loading="lazy" class="h-65 w-100 object-cover" />
</button>

<!-- Lightbox -->
{#if opened}
    <!-- svelte-ignore a11y-click-events-have-key-events a11y-no-static-element-interactions -->
    <div
        class="fixed inset-0 flex justify-center items-center z-20 bg-[#181226bb] backdrop-blur-xl"
    >
        <!-- Close button -->
        <button
            class="absolute top-4 right-6 text-white text-5xl hover:text-primary transition-colors z-30"
            onclick={closePhoto}
            aria-label="Close"
        >
            &times;
        </button>

        <!-- Navigation -->
        <div class="absolute top-1/2 -translate-y-1/2 flex justify-between w-full pointer-events-none">
            <button
                class="text-white text-7xl cursor-pointer pointer-events-auto px-4 hover:text-primary transition-colors"
                onclick={(e) => navigate(-1, e)}
                aria-label="Previous photo"
            >
                &lt;
            </button>
            <button
                class="text-white text-7xl cursor-pointer pointer-events-auto px-4 hover:text-primary transition-colors"
                onclick={(e) => navigate(1, e)}
                aria-label="Next photo"
            >
                &gt;
            </button>
        </div>

        <!-- Image — stop clicks from closing the lightbox -->
        <button aria-label="stop-propagation" onclick={(e) => e.stopPropagation()}>
            <enhanced:img
                src={url}
                alt="HackDelft photo"
                loading="lazy"
                class="w-auto h-auto max-h-[90vh] max-w-[90vw] z-10"
            />
        </button>
    </div>
{/if}
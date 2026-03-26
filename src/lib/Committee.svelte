<script lang="ts">
    import groupPhoto from "$lib/assets/members/committee_group.jpg"

    interface Member {
        name: string;
        role: string;
        image: string;
    }

    // Replace image paths with your actual imports or glob
    const left: Member[] = [
        { name: "Luc Jonker", role: "Chair", image: "/static/members/Marit.jpg" },
        { name: "Renee van Westerlaak", role: "Secretary", image: "/static/members/Marjolein.jpg" },
        { name: "Bink Boëtius", role: "Treasurer", image: "/static/members/Merle.jpg" },
        { name: "Pepijn van Egmond", role: "Logistics", image: "/static/members/Marijn.jpg" },
        { name: "Senne Drent", role: "Promotion", image: "/static/members/Simon.jpg" },
        { name: "Sanne Versluis", role: "Qualitate Qua", image: "/static/members/Robert.jpg" },
    ];

    const right: Member[] = [

    ];
</script>

<section class="mb-24">
    <div class="mb-8 bg-CppBlue/50 p-4 pb-8 rounded-md">
        <h2 class="text-primary text-5xl md:text-5xl font-normal text-center mb-8 w-full">
            Meet The Committee
        </h2>


        <!-- Container: stacked on mobile, 2-col wrapped on md -->
        <div class="flex flex-col flex-nowrap md:flex-row md:flex-wrap justify-center w-4/5 mx-auto gap-6 md:gap-0">

            <!-- Left column -->
            <div class="flex flex-col gap-6 w-full md:w-1/2 text-left">
                <enhanced:img
                    src={groupPhoto}
                    alt="HackDelft photo"
                    loading="lazy"
                    class="w-auto h-auto object-cover rounded-md z-10"
                />
            </div>

            <!-- Right column -->
            <div class="flex flex-col gap-6 w-full md:w-1/2 text-left pl-8 py-8">
                <!-- <div class="ml-5 h-full"> -->
                <div class="grid grid-cols-2 flex-1 gap-x-4 gap-y-6">
                    {#each left as member}
                        <p class="text-primary md:text-2xl text-xl m-0">{member.role}</p>
                        <p class="text-xl md:text-2xl m-0">{member.name}</p>
                    {/each}
                </div>
                <!-- </div> -->
                <!-- {#each right as member}
                    Mobile: normal order — Desktop: reversed
                    <div class="flex flex-row-reverse justify-end md:flex-row md:justify-end items-center gap-5">
                        <div>
                            <p class="text-primary text-base m-0">{member.role}</p>
                            <p class="text-base m-0">{member.name}</p>
                        </div>
                        {@render hexagon(member)}
                    </div>
                {/each} -->
            </div>
        </div>
    </div>
</section>

<!-- Inline sub-component for the hexagon avatar -->
{#snippet hexagon(member: Member)}
    <div
        class="h-27.5 w-25 min-w-25 flex justify-center items-center bg-primary"
        style="clip-path: polygon(50% 0%, 100% 25%, 100% 75%, 50% 100%, 0% 75%, 0% 25%)"
    >
        <img
            src={member.image}
            alt="Committee member"
            class="h-25 w-22.5 min-w-22.5 object-cover"
            style="clip-path: polygon(50% 0%, 100% 25%, 100% 75%, 50% 100%, 0% 75%, 0% 25%)"
        />
    </div>
{/snippet}
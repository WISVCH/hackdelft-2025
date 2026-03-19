<script lang="ts">
    import { saturday, sunday } from "$lib/data/timeline.json";

    interface TimelineEntry {
        time: string;
        name: string;
        description: string;
        id: string;
    }
</script>

<section class="bg-CppBlue/50 p-4 rounded-md mb-10" id="timetable">
    <h2
        class="text-center  text-5xl font-normal text-secondary"
    >
        Timetable
    </h2>
    <p class="text-center">
        This is an indication of the schedule of the event! It is an indication,
        and therefore subject to change.
    </p>

    <!-- Desktop day headers (hidden on mobile) -->
    <div class="hidden xl:flex flex-row">
        <h3
            class="w-1/2 min-w-[calc(50%-2rem)] max-w-[50%] text-xl font-normal text-secondary mx-2 my-6"
        >
            Saturday
        </h3>
        <h3
            class="w-1/2 min-w-[calc(50%-2rem)] max-w-[50%] text-xl font-normal text-secondary ml-20.5 my-6"
        >
            Sunday
        </h3>
    </div>

    <!-- Main container: stacked on mobile, side-by-side on xl -->
    <div class="flex flex-col xl:flex-row">

        <!-- Saturday -->
        <h3 class="text-primary-text mx-2 my-4 xl:hidden">
            Saturday
        </h3>
        <div
            class="w-full xl:w-1/2 xl:pr-18.75 xl:border-r-2 xl:border-primary grid grid-cols-2"
            style="grid-template-rows: repeat(3, 200px);"
        >
            {#each saturday as entry, i}
                {@const gridClass = [
                    "col-start-2 row-start-0 row-end-1 h-full",
                    "col-start-1 row-start-1 row-end-2 h-full",
                    "col-start-2 row-start-2 row-end-[9] h-full",
                    // "col-start-1 row-start-6 row-end-8",
                    "col-start-1 row-start-6 row-end-7 h-full",
                ][i] ?? ""}
                <div
                    id="box-{entry.id}"
                    class="mx-2 flex flex-col {gridClass}"
                >
                    <time class="italic flex items-center gap-1 text-sm">
                        {entry.time}
                    </time>
                    <div
                        class="flex-1 p-2.5 border-2 border-primary text-sm"
                    >
                        <h4
                            class="m-0 mb-2 text-primary text-base flex items-center gap-1"
                        >
                            {entry.name}
                        </h4>
                        <span class="xl:text-sm text-xs">{entry.description}</span>
                    </div>
                </div>
            {/each}
        </div>

        <!-- Sunday -->
        <h3 class="text-primary-text mx-2 my-4 xl:hidden">
            Sunday
        </h3>
        <div
            class="w-full xl:w-1/2 xl:pl-18.75 grid grid-cols-2"
            style="grid-template-rows: repeat(3, 200px);"
        >
            {#each sunday as entry, i}
                {@const gridClass = [
                    "col-start-2 row-start-1 row-end-6 h-full",
                    // "col-start-1 row-start-2 row-end-3 h-full",
                    "col-start-1 row-start-4 row-end-6 h-full",
                    "col-start-2 row-start-6 row-end-8 h-full",
                    "col-start-1 row-start-8 row-end-9 h-full",
                    "col-start-1 row-start-7",
                ][i] ?? ""}
                <div
                    id="box-{entry.id}"
                    class="mx-2 flex flex-col {gridClass}"
                >
                    <time class="italic flex items-center gap-1 text-sm">
                        <!-- <Clock size={12} class="mr-1" /> -->
                        {entry.time}
                    </time>
                    <div
                        class="flex-1 p-2.5 border-2 border-primary text-sm"
                    >
                        <h4
                            class="m-0 mb-2 text-primary text-base flex items-center gap-1"
                        >
                            <!-- <Calendar size={14} class="mr-1" /> -->
                            {entry.name}
                        </h4>
                        <span>{entry.description}</span>
                    </div>
                </div>
            {/each}
        </div>
    </div>
</section>
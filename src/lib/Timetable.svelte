<script lang="ts">
import { saturday, sunday } from "$lib/data/timeline.json";

// TODO: make timetables display correctly

interface TimelineEntry {
    time: string;
    name: string;
    description: string;
    id: string;
}
</script>

<section class="m-8 self-center" id='timetable'>
    <h2 class="text-center  text-5xl m-0">Timetable</h2>
    <p class="text-center m-0">
        This is an indication of the schedule of the event! It is an
        indication, and therefore subject to change.
    </p>
    <div class="hidden">
        <h3>Saturday</h3>
        <h3>Sunday</h3>
    </div>

    <div class="flex flex-col xl:flex-row">
        <h3 class="text-OrangeOrange mx-1 my-4 grid-cols-3">Saturday</h3>
        <!-- style saturday -->
        <div class="w-1/2">
            {#each saturday as entry}
                <div class="flex flex-col mx-0 my-8" id={"box-"+ entry.id}>
                    <time class="italic">
                        <!-- <Icon icon={faClock} height="12px" /> -->
                        {entry.time}
                    </time>

                    <div class="p-2.5 border-2 border-OrangeOrange text-sm grow">
                        <h4>
                            <!-- <Icon icon={faCalendar} height="14px" /> -->
                            {entry.name}
                        </h4>
                        <span>{entry.description}</span>
                    </div>
                </div>
            {/each}
        </div>



        <h3 class="text-OrangeOrange mx-1 my-4 grid-cols-3">Sunday</h3>
        <!-- style sunday -->
        <div class="w-1/2 nth-[2,4,5]:col-start-1 nth-[1,3]:col-start-2 nth-[1]:row-start-0"> 
            {#each sunday as entry}
                <div class="flex flex-col mx-0 my-8" id={"box-"+ entry.id}>
                    <time class="italic">
                        <!-- <Icon icon={faClock} height="12px" /> -->
                        {entry.time}
                    </time>

                    <div class="p-2.5 border-2 border-OrangeOrange text-sm grow">
                        <h4>
                            <!-- <Icon icon={faCalendar} height="14px" /> -->
                            {entry.name}
                        </h4>
                        <span>{entry.description}</span>
                    </div>
                </div>
            {/each}
        </div>
    </div>
</section>
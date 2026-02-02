<script>
    import { scrollIntoView } from "./scripts/scrollIntoView";
</script>

<footer>
    <section class="flex md:flex-row flex-col justify-center mb-5 gap-4">
        <div class="flex md:flex-row flex-col w-4/5 gap-4">
            <div class="flex flex-col w-1/3">
                <p class="text-lg m-0 text-OrangeOrange">Site</p>
                <a href="#home"         on:click|preventDefault={scrollIntoView} class="hover:text-OrangeOrange">Home</a>
                <a href="#aboutus"      on:click|preventDefault={scrollIntoView} class="hover:text-OrangeOrange">About us </a>
                <!-- <a href="#pictures"     on:click|preventDefault={scrollIntoView} class="hover:text-OrangeOrange">Pictures</a>
                <a href="#timetable"    on:click|preventDefault={scrollIntoView} class="hover:text-OrangeOrange">Timetable</a>
                <a href="#sponsors"     on:click|preventDefault={scrollIntoView} class="hover:text-OrangeOrange">Sponsors</a> -->
                <a href="#faq"          on:click|preventDefault={scrollIntoView} class="hover:text-OrangeOrange">FAQ</a>                      
            </div>
            <div class="">
                <p class="text-lg m-0 text-OrangeOrange">Contact</p>
                <a title="Send us an email!"
                    href="mailto:hackdelft@ch.tudelft.nl"
                    target="_blank"
                    rel="noopener"
                    class="hover:text-OrangeOrange"> hackdelft@ch.tudelft.nl </a>
            </div>
        </div>
    </section>
</footer>
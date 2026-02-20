<script>
    import Background from "$lib/Background.svelte"
    import StartingScreen from "$lib/StartingScreen.svelte";
    import About from "$lib/About.svelte";
    import Pictures from "$lib/Pictures.svelte";
    import Faq from "$lib/Faq.svelte";
    import Footer from "$lib/footer.svelte";
</script>

<div class="absolute z-1">
    <Background/>
</div>
<div class="absolute z-2 p-4">
    <StartingScreen/>
    <About/>
    <Pictures/>
    <!-- <Timetable/> -->
    <!-- <Sponsor/> -->
    <Faq/>
    <!-- <Committee/> -->
    <Footer/>
</div>
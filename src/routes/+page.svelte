<script>
    import Background from "$lib/Background.svelte"
    import StartingScreen from "$lib/StartingScreen.svelte";
    import About from "$lib/About.svelte";
</script>

<div class="absolute z-1">
    <Background />
</div>
<div class="absolute z-2">
    <StartingScreen />
    <About/>
</div>
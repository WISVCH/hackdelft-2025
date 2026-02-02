<script>
    import Sun from "$lib/assets/sun.svg"
    import Parasols from "$lib/assets/parasols_horizon.svg"
</script>

<div class="min-h-screen h-full w-screen">
    <div class="absolute z-1 flex flex-col h-screen w-screen">
        <div class="bg-CppBlue h-1/5 w-screen">
            <img class="p-4 h-full" src={Sun} alt="HackDelft" />
        </div>
        <div class="bg-CBlue w-screen grow flex flex-col justify-end align-bottom">
            <img class="z-3 w-screen p-0 border-b-8 border-PineappleYellow align-bottom" src={Parasols} alt=""/>
            <div class=" align-top bg-PineappleYellow p-0 h-33 w-screen"></div>
        </div>
    </div>
</div>
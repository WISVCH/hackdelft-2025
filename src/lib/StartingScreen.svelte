<script >
    import Logo from "$lib/assets/Logo.svg"
    import Sun from "$lib/assets/sun.svg"
    import Parasols from "$lib/assets/parasols_horizon.svg"
    import Calendar from "$lib/assets/calendar.svg"
    import Location from "$lib/assets/location.svg"
    import GamerSauce from "$lib/assets/sunny_vibes.gif"
</script>

<div>
    <div class="absolute z-1 min-h-screen h-full w-screen">
        <!-- <div class="absolute z-2">
            
        </div> -->
        <div class="absolute z-1 flex flex-col h-screen w-screen">
            <!-- <div class="bg-CppBlue h-1/5 w-screen">
                <img class="p-4 h-full" src={Sun} alt="HackDelft" />
            </div> -->
            <div class="w-screen grow flex flex-col justify-end align-bottom">
                <img class="z-3 blur-sm w-screen p-0 border-b-8 border-PineappleYellow align-bottom" src={GamerSauce} alt=""/>
                <img style="margin-top: -5%;" class="z-3 blur-sm w-screen p-0 border-b-8 bg-CppBlue/0 border-PineappleYellow align-bottom" src={Parasols} alt=""/>
                <div class=" align-top bg-PineappleYellow p-0 h-33 w-screen"></div>
            </div>
        </div>
    </div>
    <div class="absolute z-2 h-screen w-screen">
        <header class="flex flex-col h-screen text-2xl  text-center" id='home'>
                <div class="bg-CppBlue/50 p-4 rounded-md flex flex-col m-auto content-center justify-center w-full max-w-2xl">
                    <img class="w-2/3 self-center" src={Logo} alt="HackDelft" />
                    <div class="text-2xl">This website is still under construction. Stay tuned!</div>
                    <div class="flex justify-between my-7">
                        <p class="flex flex-col items-center w-1/3"><img class="" src={Calendar} alt="Date" /> 6 and 7 June 2026</p>
                        <p class="flex flex-col items-center w-1/3"><img src={Location} alt="Location" />X TU Delft</p>
                    </div>
                    <div class="flex flex-wrap justify-center gap-5 ">
                        <a class="p-2.5 rounded-md bg-OrangeOrange hover:bg-PineappleYellow" href="https://discord.gg/rB2ucUaFnc" target="_blank">
                            <!-- <Icon icon={faDiscord} pad /> -->
                            Join Discord
                        </a>
                        <!-- <a href="https://docs.google.com/forms/d/e/1FAIpQLScIeFxdTOsJnt7DQdpYPtcRsrYT-wHJDa2N1bVtCJNFaQtSIQ/viewform" target="_blank">
                            <Icon icon={faClipboardList} pad />
                            Sign-up form
                        </a> -->

                        <!-- <small> Unfortunatly the event is sold out but you can sign up for the waiting list below and have a chance of still claiming a spot!</small>
                        <a href="https://ch.tudelft.nl/activities/event/2024/hackaton/" target="_blank">
                            <Icon icon={faTicket} pad />
                            Buy Tickets
                        </a>
                        
                        <a href="https://docs.google.com/forms/d/e/1FAIpQLSd6cXDC7eyLyKr7F8pDm-0kJvlPPoUGydYaqSLxeHh8XIsePg/viewform?usp=sf_link" target="_blank">
                            <Icon icon={faClipboardList} pad />
                            Waiting list
                        </a> -->
                    </div>
            </div>
        </header>
    </div>
</div>
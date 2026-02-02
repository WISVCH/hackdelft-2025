<script >
    import Logo from "$lib/assets/Logo.svg"
    import Calendar from "$lib/assets/calendar.svg"
    import Location from "$lib/assets/location.svg"
</script>

<section id='home' class="w-full">
    <div class="flex flex-col text-2xl  text-center">
        <div class="bg-CppBlue/50 p-4 rounded-md flex flex-col m-auto content-center justify-center w-full max-w-2xl">
            <img class="w-2/3 self-center" src={Logo} alt="HackDelft" />
            <div class="text-2xl">This website is still under construction. Stay tuned!</div>
            <div class="flex justify-between my-7">   
                <p class="flex flex-col items-center w-1/3"><img class="" src={Calendar} alt="Date" /> 6 and 7 June 2026</p>
                <p class="flex flex-col items-center w-1/3"><img src={Location} alt="Location" />X TU Delft</p>
            </div>
            <div class="flex flex-wrap justify-center gap-5">
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
    </div>
</section>

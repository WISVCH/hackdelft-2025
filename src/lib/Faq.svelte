<script lang="ts">
import { faq } from "$lib/data/faq.json"
console.log(faq)
interface Question {
    question: string;
    answer: string;
}
</script>

<section class="" id='faq'>
    <h2 class="text-5xl text-center text-CSharpBlue m-0">FAQ</h2>
    <ul class="text-center p-0 w-4/5 mx-auto">
        {#each faq as q}
            <li class="mx-8 my-0">
                <details class="px-3 py-10">
                    <summary class="cursor-pointer text-lg text-center hover:text-OrangeOrange">
                        {q.question}
                        <!-- <span class={style.icon}><Icon icon={faChevronDown}/></span> -->
                    </summary>
                    <p class="mx-2 my-0 text-lg text-center">{q.answer}</p>
                </details>
            </li>
        {/each}
    </ul>
</section>
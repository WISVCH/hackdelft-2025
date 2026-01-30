<script>
	import '../app.css';
	import favicon from '$lib/assets/favicon.svg';

	let { children } = $props();
</script>

<svelte:head>
	<title>Hack Delft 2026</title>
	<link rel="icon" href={favicon} />
</svelte:head>
<div class="font-Sono text-VodkaWhite">
	{@render children()}
</div>

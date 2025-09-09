<script lang="ts">
	import { page } from '$app/stores';
</script>

<header class="bg-white shadow-sm border-b border-gray-200">
	<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
		<div class="flex justify-between items-center h-16">
			<div class="flex items-center">
				<a href="/" class="flex items-center space-x-2">
					<div class="w-8 h-8 bg-blue-600 rounded-lg flex items-center justify-center">
						<span class="text-white font-bold text-sm">S</span>
					</div>
					<span class="text-xl font-bold text-gray-900">Strive Planner</span>
				</a>
			</div>
			
			<nav class="hidden md:flex space-x-8">
				<a href="/" class="text-gray-900 hover:text-blue-600 px-3 py-2 text-sm font-medium transition-colors">
					Home
				</a>
				<a href="/features" class="text-gray-600 hover:text-blue-600 px-3 py-2 text-sm font-medium transition-colors">
					Features
				</a>
				<a href="/for-whom" class="text-gray-600 hover:text-blue-600 px-3 py-2 text-sm font-medium transition-colors">
					For Whom
				</a>
				<a href="/about" class="text-gray-600 hover:text-blue-600 px-3 py-2 text-sm font-medium transition-colors">
					About
				</a>
				<a href="/blog" class="text-gray-600 hover:text-blue-600 px-3 py-2 text-sm font-medium transition-colors">
					Blog
				</a>
			</nav>
			
			<div class="flex items-center space-x-4">
				<a href="/download" class="bg-blue-600 text-white px-4 py-2 rounded-lg text-sm font-medium hover:bg-blue-700 transition-colors">
					Download iOS App
				</a>
			</div>
		</div>
	</div>
</header>
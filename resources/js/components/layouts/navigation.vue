<script setup>
import { ref, onMounted, onBeforeUnmount } from 'vue'

const mobileMenuOpen = ref(false)
const isScrolled = ref(false)

const handleScroll = () => {
  isScrolled.value = window.scrollY > 10
}

onMounted(() => {
  window.addEventListener('scroll', handleScroll)
})
onBeforeUnmount(() => {
  window.removeEventListener('scroll', handleScroll)
})
</script>

<template>
	<div class="bg-gray-50 text-gray-800 min-h-screen flex flex-col">
		<header
			:class="[
			'fixed top-0 w-full z-50 transition-all duration-300',
			isScrolled ? 'bg-white text-[#86906C] shadow-md' : 'bg-transparent text-white'
			]"
		>
			<div
			:class="[
				'max-w-7xl mx-auto flex justify-between items-center transition-all duration-300',
				isScrolled ? 'px-4 py-4' : 'px-8 py-8'
			]"
			>
				<div class="h-8 w-auto flex items-center" :class="[
			'transition-all duration-300',
			isScrolled ? 'text-[#86906C]' : 'text-white'
			]">
				<svg class="h-full w-auto" viewBox="0 0 164 42" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path d="M26.168 42H47.3525V37.0649H31.1528V25.9612H47.3525V21.0261H31.1528V9.92186H47.3525V4.98732H26.168V42Z" fill="currentColor"/>
					<path d="M0 42H4.9848V25.9612H21.1834V21.0261H4.9848V9.92186H21.1834V4.98732H0V42Z" fill="currentColor"/>
					<path d="M149.474 22.333L161.831 4.99901H155.729L146.423 18.0535L137.117 4.99901H131.015L143.372 22.333L129.361 41.9883H135.462L146.423 26.6124L157.384 41.9883H163.486L149.474 22.333Z" fill="currentColor"/>
					<path d="M71.5475 21.0261H62.3047V25.9612H73.6128L83.107 16.5605V16.5577L83.6728 15.9982V-1.52588e-05H78.688V13.9574L71.5475 21.0261Z" fill="currentColor"/>
					<path d="M83.6728 25.0972L78.688 30.0323V30.039L71.5913 37.0649H57.4125V9.92186H73.6129V4.98732H52.4277V42H73.6129V41.9572L73.6555 42L78.6936 37.0127H99.872V32.0776H83.6728V25.0972Z" fill="currentColor"/>
					<path d="M116.285 4.99899V4.98732H103.826V32.0776H108.812V9.92241H116.285V9.93409C119.838 10.0532 123.204 11.534 125.674 14.0639C128.145 16.5938 129.525 19.9749 129.525 23.4937C129.525 27.0124 128.145 30.3935 125.674 32.9234C123.204 35.4533 119.838 36.9341 116.285 37.0532V37.0649H108.81V37.0104H103.826V41.9978H116.285V41.9861C121.146 41.8465 125.76 39.8368 129.149 36.3836C132.537 32.9304 134.432 28.3057 134.432 23.4914C134.432 18.6772 132.537 14.0525 129.149 10.5993C125.76 7.1461 121.146 5.13635 116.285 4.99676V4.99899Z" fill="currentColor"/>
				</svg>
				</div>

				<!-- Desktop Menu -->
				<nav class="space-x-6 hidden md:flex">
					<router-link to="/" :class="[ 'text-sm',isScrolled ? 'hover:text-[#1F2023] hover:font-bold' : 'hover:text-[#1F2023] hover:font-bold' ]">Home</router-link>
					<router-link to="/about" :class="[ 'text-sm',isScrolled ? 'hover:text-[#1F2023] hover:font-bold' : 'hover:text-[#1F2023] hover:font-bold' ]">About</router-link>
					<router-link to="/services" :class="[ 'text-sm',isScrolled ? 'hover:text-[#1F2023] hover:font-bold' : 'hover:text-[#1F2023] hover:font-bold' ]">Services</router-link>
					<router-link to="/contact" :class="[ 'text-sm',isScrolled ? 'hover:text-[#1F2023] hover:font-bold' : 'hover:text-[#1F2023] hover:font-bold' ]">Contact</router-link>
				</nav>

				<!-- Mobile Toggle Button -->
				<button @click="mobileMenuOpen = !mobileMenuOpen" class="md:hidden">
					<svg xmlns="http://www.w3.org/2000/svg" class="w-6 h-6 text-white" fill="none" viewBox="0 0 24 24" stroke="currentColor">
					<path :class="{ 'hidden': mobileMenuOpen, 'block': !mobileMenuOpen }" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
						d="M4 6h16M4 12h16M4 18h16" />
					<path :class="{ 'block': mobileMenuOpen, 'hidden': !mobileMenuOpen }" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
						d="M6 18L18 6M6 6l12 12" />
					</svg>
				</button>
			</div>

			<!-- Mobile Menu -->
			<div v-if="mobileMenuOpen" class="md:hidden bg-black/70 backdrop-blur-lg px-4 pb-4">
			<nav class="flex flex-col space-y-2">
				<a href="#" class="block py-2 text-white hover:text-[#86906C]">Home</a>
				<a href="#" class="block py-2 text-white hover:text-[#86906C]">About</a>
				<a href="#" class="block py-2 text-white hover:text-[#86906C]">Services</a>
				<a href="#" class="block py-2 text-white hover:text-[#86906C]">Contact</a>
			</nav>
			</div>
		</header>
		<slot/>
	</div>
</template>
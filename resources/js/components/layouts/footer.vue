<template>
    <footer id="contact" class="bg-[#1F2023] text-white py-10">
        <div class="max-w-6xl mx-auto px-4 grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-10">
            
            <!-- Logo & Contact -->
            <div>
            <h3 class="text-2xl font-bold mb-3">FEELDX</h3>
            <p class="text-sm text-gray-300 mb-1">Email: <a href="mailto:contact@feeldx.com" class="hover:underline">contact@feeldx.com</a></p>
            <p class="text-sm text-gray-300">Phone: <a href="tel:+639123456789" class="hover:underline">+63 912 345 6789</a></p>
            </div>

            <!-- Quick Links -->
            <div>
            <h4 class="text-xl font-semibold mb-3">Quick Links</h4>
            <ul class="space-y-2 text-sm text-gray-300">
                <li><a href="#services" class="hover:text-white transition">Services</a></li>
                <li><a href="#why" class="hover:text-white transition">Why FEELDX</a></li>
                <li><a href="#clients" class="hover:text-white transition">Clients</a></li>
                <li><a href="#testimonials" class="hover:text-white transition">Testimonials</a></li>
            </ul>
            </div>

            <!-- Social / CTA (Optional) -->
            <div class="hidden lg:block">
            <h4 class="text-xl font-semibold mb-3">Stay Connected</h4>
            <p class="text-sm text-gray-300 mb-4">Follow us on social media for updates:</p>
            <div class="flex gap-4">
                <!-- Icons can be replaced with real links/icons -->
                <a href="#" class="hover:text-white text-gray-400 transition">LinkedIn</a>
                <a href="#" class="hover:text-white text-gray-400 transition">Facebook</a>
            </div>
            </div>
            
        </div>

        <div class="text-center text-xs text-gray-500 mt-10">
            © {{ new Date().getFullYear() }} FEELDX. All rights reserved.
        </div>
        </footer>

</template>
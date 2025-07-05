<template>
  <navigation>
    <section class="relative pt-32 pb-16 flex items-center justify-center text-center px-4 overflow-hidden">
      <!-- Background Overlay -->
      <div class="absolute inset-0 bg-[#86906C] bg-opacity-90 z-0"></div>

      <!-- Content -->
      <div class="relative z-10 max-w-5xl mx-auto px-4 text-center">
        <h2 class="text-3xl font-bold text-white mb-8">Our Services</h2>
        <p class="text-white mb-12">
          We combine construction expertise with leading-edge technology to deliver immersive visuals, precise planning, and tailored training for every stage of your build.
        </p>
      </div>
    </section>
    <!-- Services Section -->
    <section id="services" class="py-20 bg-white">
      <div class="max-w-6xl mx-auto px-4 text-center">
        

        <div class="grid gap-8 md:grid-cols-3">
          <!-- Visualisation Card -->
          <div class="bg-gray-50 p-8 rounded-2xl shadow hover:shadow-lg transition">
            <div class="mb-4 flex justify-center">
              <!-- Example Icon; replace with actual SVG/icon -->
              <svg class="w-12 h-12 text-accent-blue" fill="currentColor" viewBox="0 0 24 24">
                <path d="M3 3h18v5H3zM3 10h18v11H3z"/>
              </svg>
            </div>
            <h3 class="text-xl font-semibold text-charcoal mb-2">Visualisation</h3>
            <p class="text-gray-600 text-sm">
              From high-res 3D renders to 4D/5D BIM fly-throughs and interactive models, we bring your design to life with clarity, impact, and technical accuracy.
            </p>
          </div>

          <!-- Project Control Card -->
          <div class="bg-gray-50 p-8 rounded-2xl shadow hover:shadow-lg transition">
            <div class="mb-4 flex justify-center">
              <svg class="w-12 h-12 text-accent-blue" fill="currentColor" viewBox="0 0 24 24">
                <path d="M5 13l4 4L19 7"/>
              </svg>
            </div>
            <h3 class="text-xl font-semibold text-charcoal mb-2">Project Control</h3>
            <p class="text-gray-600 text-sm">
              Detailed construction lifecycle planning, forensic scheduling, tender programmes and claims analysis ensures your project stays on track.
            </p>
          </div>

          <!-- Education Card -->
          <div class="bg-gray-50 p-8 rounded-2xl shadow hover:shadow-lg transition">
            <div class="mb-4 flex justify-center">
              <svg class="w-12 h-12 text-accent-blue" fill="currentColor" viewBox="0 0 24 24">
                <path d="M12 2L2 7l10 5 10-5zM2 17l10 5 10-5M2 12l10 5 10-5"/>
              </svg>
            </div>
            <h3 class="text-xl font-semibold text-charcoal mb-2">Education</h3>
            <p class="text-gray-600 text-sm">
              Upskill your team with immersive learning platforms, VR field trips, and bespoke training tailored for RTOs, universities, and construction firms.
            </p>
          </div>
        </div>
      </div>
    </section>

    <footer_ui />
  </navigation>
</template>

<script setup>
import navigation from '@/components/layouts/navigation.vue'
import footer_ui from '@/components/layouts/footer.vue'
</script>

<style scoped>
.text-charcoal {
  --tw-text-opacity: 1;
  color: rgba(31, 32, 35, var(--tw-text-opacity));
}
.bg-accent-blue {
  --tw-bg-opacity: 1;
  background-color: rgba(0, 82, 213, var(--tw-bg-opacity));
}
</style>

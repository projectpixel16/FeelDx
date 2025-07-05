<template>
  <navigation>
    <section class="relative pt-32 pb-16 flex items-center justify-center text-center px-4 overflow-hidden">
      <!-- Background Overlay -->
      <div class="absolute inset-0 bg-[#86906C] bg-opacity-90 z-0"></div>

      <!-- Content -->
      <div class="relative z-10 max-w-5xl mx-auto px-4 text-center">
        <h1 class="text-4xl font-bold text-white mb-4">About Us</h1>
        <p class="text-lg text-white">
          Welcome to FEELDX (formerly Feel Virtual Reality), Australia’s leading Digital Media and Project Planning Specialists. We bring construction and built-environment projects to life.
        </p>
      </div>
    </section>


    <!-- Core Services -->
    <section class="py-16 bg-gray-50">
      <div class="max-w-4xl mx-auto px-4 space-y-6">
        <p class="text-gray-700">
          • Groundbreaking 3D & 4D BIM workflows help you better understand your projects by visualising deliverables and requirements — reducing risk and delivering better stakeholder outcomes.
        </p>
        <p class="text-gray-700">
          • Our FEEL Digital Asset Strategy platform offers high visibility and reduces downtime in managing projects and assets.
        </p>
        <p class="text-gray-700">
          • Providing end-to-end smart construction planning and project management using business intelligence and deep construction expertise.
        </p>
        <p class="text-gray-700">
          • VR E‑learning platforms combine CGI, video, photos, and interactive VR for RTOs, universities, colleges, and virtual field trips.
        </p>
      </div>
    </section>

    <!-- Mission & Culture -->
    <section class="py-16">
      <div class="max-w-4xl mx-auto px-4 space-y-6">
        <h2 class="text-3xl font-semibold text-charcoal mb-4">Mission & Culture</h2>
        <p class="text-gray-700">
          At FEELDX, we immerse ourselves in every project—often going beyond the brief—because we care as much about the outcome as our clients do. When our clients win, we win.
        </p>
        <p class="text-gray-700">
          We’re inspired by helping people realise their potential. As Dana Dalmond says, empowering builders and contractors to succeed in new ways fuels our passion.
        </p>
      </div>
    </section>

    <!-- Contact / CTA -->
    <section class="py-16 bg-gray-50">
      <div class="max-w-4xl mx-auto px-4 text-center">
        <h3 class="text-3xl font-semibold text-charcoal mb-4">Let’s Build Something That Matters</h3>
        <p class="text-gray-700 mb-8">
          Contact us today to explore how we can empower your next project.
        </p>
        <div class="inline-flex gap-4">
          <a href="mailto:contact@feeldx.com.au" class="bg-[#86906C] text-white px-6 py-3 rounded-lg hover:bg-accent-navy transition">
            Email Us
          </a>
          <a href="tel:1800333539" class="bg-white text-charcoal px-6 py-3 rounded-lg hover:bg-gray-100 transition">
            Call 1800 FEELDX
          </a>
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
.bg-accent-navy {
  --tw-bg-opacity: 1;
  background-color: rgba(0, 52, 113, var(--tw-bg-opacity));
}
</style>

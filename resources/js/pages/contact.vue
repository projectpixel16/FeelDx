<template>
    <navigation>
        <section class="bg-[#86906C] pt-24"></section>
        <section id="contact" class="py-20 !pt-30 ">
            <div class="max-w-6xl mx-auto px-4 grid md:grid-cols-2 gap-12">
            <!-- Contact Form -->
            <div>
                <h2 class="text-3xl font-bold text-charcoal mb-6">Get In Touch</h2>
                <form @submit.prevent="handleSubmit" class="space-y-4">
                <div>
                    <label class="block text-sm font-medium text-gray-700 mb-1">Name</label>
                    <input v-model="form.name" type="text" class="w-full border border-gray-300 rounded-lg px-4 py-2 focus:outline-none focus:ring-2 focus:ring-accent-blue" required />
                </div>
                <div>
                    <label class="block text-sm font-medium text-gray-700 mb-1">Email</label>
                    <input v-model="form.email" type="email" class="w-full border border-gray-300 rounded-lg px-4 py-2 focus:outline-none focus:ring-2 focus:ring-accent-blue" required />
                </div>
                <div>
                    <label class="block text-sm font-medium text-gray-700 mb-1">Message</label>
                    <textarea v-model="form.message" rows="5" class="w-full border border-gray-300 rounded-lg px-4 py-2 focus:outline-none focus:ring-2 focus:ring-accent-blue" required></textarea>
                </div>
                <button type="submit" class="bg-[#86906C] text-white px-6 py-3 rounded-lg hover:bg-accent-navy transition">
                    Send Message
                </button>
                </form>
            </div>

            <!-- Contact Info -->
            <div class="space-y-6">
                <h2 class="text-3xl font-bold text-charcoal mb-6">Contact Details</h2>
                <p class="text-gray-700">We're ready to collaborate on your next project. Let's build something that matters.</p>
                <div>
                <p class="text-gray-700"><strong>Email:</strong> <a href="mailto:contact@feeldx.com.au" class="hover:underline">contact@feeldx.com.au</a></p>
                <p class="text-gray-700"><strong>Phone:</strong> <a href="tel:1800333539" class="hover:underline">1800 FEELDX</a></p>
                <p class="text-gray-700"><strong>Location:</strong> Melbourne, Sydney, Brisbane (National Reach)</p>
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
import { reactive } from 'vue'

const form = reactive({
  name: '',
  email: '',
  message: '',
})

function handleSubmit() {
  // You can replace this with a real API call
  alert(`Thank you, ${form.name}! We'll be in touch shortly.`)
  form.name = ''
  form.email = ''
  form.message = ''
}
</script>

<style scoped>
.text-charcoal {
  color: #1F2023;
}
.bg-accent-blue {
  background-color: #0052D5;
}
.bg-accent-navy {
  background-color: #003471;
}
</style>

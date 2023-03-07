<script setup>
import GuestLayout from '@/Layouts/GuestLayout.vue';
import InputError from '@/Components/InputError.vue';
import InputLabel from '@/Components/InputLabel.vue';
import PrimaryButton from '@/Components/PrimaryButton.vue';
import TextInput from '@/Components/TextInput.vue';
import { Head, Link, useForm, usePage } from '@inertiajs/vue3';
import { computed } from 'vue'

const encode = computed(() => usePage().props.encode);

const form = useForm({
    client_name: encode.client_name,
    address: '',
    area: '',
    telephone: '',
    homepage: '',
    category: '',
    open_hours: '',
    facebook_fanpage_url: '',
    memo: ''
});

</script>
<template>

</template>

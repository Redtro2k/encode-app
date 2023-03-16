<script setup>
import GuestLayout from '@/Layouts/GuestLayout.vue'
import InputError from '@/Components/InputError.vue'
import InputLabel from '@/Components/InputLabel.vue'
import TextInput from '@/Components/TextInput.vue';
import PrimaryButton from '@/Components/PrimaryButton.vue';
import { useForm, Head } from '@inertiajs/vue3';
import { MagnifyingGlassIcon } from '@heroicons/vue/24/solid';


const form = useForm({
    longtitude: '',
    latitude: '',
    tags: ''
})

const getLocation = useForm({
    address: ''
})

const export_address = () => {
    getLocation.post(route('find.store'), {
        preserveScroll: true
    });
}

const export_json = () => {

}
</script>
<template>
    <GuestLayout>
        <Head title="Get Location"/>
            <form @submit.prevent="export_address">
                <div>
                        <h2 class="text-center block font-semibold text-gray-700 pb-4">Get Longitude & Latitude</h2>
                        <div>
                            <InputLabel for="address" value="Location" />
                            <TextInput id="address" type="text" v-model="getLocation.address" class="mt-1 block w-full"/>
                        </div>
                    <div class="flex justify-end mt-4">
                        <PrimaryButton class="ml-4" :class="{'opacity-24': form.processing}" :disabled="form.processing">
                            <MagnifyingGlassIcon class="text-white h-5 w-5" />
                        </PrimaryButton>
                    </div>

                </div>
                <div class="mt-8 bg-indigo-200 rounded-md">
                    <span class="mx-2 py-2 text-left block">
                    If you do not know the actual longitude and latitude of the location you are looking for, simply fill in the location and the system will find it.
                    </span>
                </div>
            </form>
            <form @submit.prevent="export_json">
                <div class="mt-4 border-t-2 pt-4">
                <h2 class="text-center block font-semibold text-gray-700 pb-4">Export Manually</h2>
                <div class="flex justify-between space-x-4">
                    <div>
                        <InputLabel for="location" value="Location" />
                        <TextInput id="longitude" type="text" class="mt-1 block w-full"/>
                    </div>
                    <div>
                        <InputLabel for="latitude" value="Latitude" />
                        <TextInput id="latitude" type="text" class="mt-1 block w-full"/>
                    </div>
                </div>
                <div class="mt-4">
                    <InputLabel for="tags" value="Title & Tags" />
                    <TextInput id="tags" type="text" class="mt-1 block w-full"/>
                </div>
            </div>
            <div class="flex justify-end mt-4">
                <PrimaryButton class="ml-4" :class="{'opacity-24': form.processing}" :disabled="form.processing">
                    Export
                </PrimaryButton>
            </div>
            </form>

    </GuestLayout>
</template>

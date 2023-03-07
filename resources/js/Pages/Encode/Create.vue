<script setup>
import GuestLayout from '@/Layouts/GuestLayout.vue';
import InputError from '@/Components/InputError.vue';
import InputLabel from '@/Components/InputLabel.vue';
import PrimaryButton from '@/Components/PrimaryButton.vue';
import TextInput from '@/Components/TextInput.vue';
import { Head, Link, useForm } from '@inertiajs/vue3';


const form = useForm({
    client_name: '',
    address: '',
    area: '',
    telephone: '',
    homepage: '',
    category: '',
    open_hours: '',
    facebook_fanpage_url: '',
    memo: ''
});

const submit = () => {
    form.post(route('encode.store'), {
        onSuccess: () => form.reset('client_name', 'address', 'telephone', 'homepage', 'open_hours', 'facebook_fanpage_url', 'memo'),
        // onFinish: () => alert('Successfully Created!')
    })
};
</script>

<template>
    <GuestLayout>
        <Head title="Add Records" />

        <form @submit.prevent="submit">
            <!-- <span class="font-medium flex justify-center bg-green-400 p-2 text-white border-solid border-green-600">
                        {{ $page.props.flash.message }}
                    </span> -->
            <div>
                <InputLabel for="client_name" value="Client Name" />

                <TextInput
                    id="client_name"
                    type="text"
                    class="mt-1 block w-full"
                    v-model="form.client_name"

                    autofocus
                    autocomplete="client_name"
                />

                <InputError class="mt-2" :message="form.errors.client_name" />
            </div>
            <div class="mt-4">
                <InputLabel for="address" value="Address" />

                <TextInput
                    id="address"
                    type="text"
                    class="mt-1 block w-full"
                    v-model="form.address"

                    autofocus
                    autocomplete="address"
                />

                <InputError class="mt-2" :message="form.errors.address" />
            </div>
            <div class="mt-4">
                <InputLabel for="area" value="Area" />

                <TextInput
                    id="area"
                    type="text"
                    class="mt-1 block w-full"
                    v-model="form.area"

                    autofocus
                    autocomplete="area"
                />

                <InputError class="mt-2" :message="form.errors.address" />
            </div>
            <div class="mt-4">
                <InputLabel for="telephone" value="Telephone" />

                <TextInput
                    id="telephone"
                    type="text"
                    class="mt-1 block w-full"
                    v-model="form.telephone"

                    autofocus
                    autocomplete="area"
                />

                <InputError class="mt-2" :message="form.errors.telephone" />
            </div>
            <div class="mt-4">
                <InputLabel for="homepage" value="Homepage" />

                <TextInput
                    id="homepage"
                    type="text"
                    class="mt-1 block w-full"
                    v-model="form.homepage"

                    autofocus
                    autocomplete="homepage"
                />

                <InputError class="mt-2" :message="form.errors.telephone" />
            </div>
            <div class="mt-4">
                <InputLabel for="category" value="Category" />

                <TextInput
                    id="category"
                    type="text"
                    class="mt-1 block w-full"
                    v-model="form.category"

                    autofocus
                    autocomplete="category"
                />

                <InputError class="mt-2" :message="form.errors.category" />
            </div>
            <div class="mt-4">
                <InputLabel for="open_hours" value="Open Hours" />

                <TextInput
                    id="open_hours"
                    type="text"
                    class="mt-1 block w-full"
                    v-model="form.open_hours"

                    autofocus
                    autocomplete="open_hours"
                />

                <InputError class="mt-2" :message="form.errors.open_hours" />
            </div>
            <div class="mt-4">
                <InputLabel for="facebook_fanpage_url" value="Facebook Url" />

                <TextInput
                    id="facebook_fanpage_url"
                    type="text"
                    class="mt-1 block w-full"
                    v-model="form.facebook_fanpage_url"

                    autofocus
                    autocomplete="facebook_page_url"
                />

                <InputError class="mt-2" :message="form.errors.facebook_page_url" />
            </div>
            <div class="mt-4">
                <InputLabel for="memo" value="Memo" />

                <TextInput
                    id="category"
                    type="text"
                    class="mt-1 block w-full"
                    v-model="form.memo"

                    autofocus
                    autocomplete="memo"
                />

                <InputError class="mt-2" :message="form.errors.memo" />
            </div>
            <div class="flex items-center justify-end mt-4">
                <PrimaryButton class="ml-4" :class="{ 'opacity-25': form.processing }" :disabled="form.processing">
                    Add
                </PrimaryButton>
            </div>
        </form>
    </GuestLayout>
</template>

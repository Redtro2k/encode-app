<script setup>
import { Link } from '@inertiajs/vue3';
import Paginate from '@/Components/Paginated.vue';

const threeDotMessage = (str, num) => {
    if (str.length > num) {
        return str.slice(0, num) + "...";
    } else {
        return str;
    }
}
</script>
<template>
    <div class="px-4 sm:px-6 lg:px-8">
        <div class="sm:flex sm:items-center">
            <div class="sm:flex-auto">
                <h1 class="text-xl font-semibold text-gray-900">Users</h1>
                <p class="mt-2 text-sm text-gray-700">A list of all the users in your account including their name, title,
                    email and role.</p>
            </div>
            <div class="flex space-x-2">
                <Link class="rounded-md bg-indigo-500 p-2 text-white hover:bg-indigo-400" :href="route('encode.create')">Create</Link>
                <a class="rounded-md bg-indigo-500 p-2 text-white hover:bg-indigo-400" :href="route('export')">Export as Excel</a>
                <Link class="rounded-md bg-indigo-500 p-2 text-white hover:bg-indigo-400" :href="route('erase')">Clear All</Link>
            </div>
        </div>
        <div class="mt-8 flex flex-col">
            <div class="-my-2 -mx-4 overflow-x-auto sm:-mx-6 lg:-mx-8">
                <div class="inline-block min-w-full py-2 align-middle md:px-6 lg:px-8">
                    <div class="overflow-hidden shadow ring-1 ring-black ring-opacity-5 md:rounded-lg">
                        <table class="min-w-full divide-y divide-gray-300">
                            <thead class="bg-gray-50">
                                <tr>
                                    <th scope="col"
                                        class="py-3.5 pl-4 pr-3 text-left text-sm font-semibold text-gray-900 sm:pl-6">No.
                                    </th>
                                    <th scope="col" class="px-3 py-3.5 text-left text-sm font-semibold text-gray-900">Client
                                        Name</th>
                                    <th scope="col" class="px-3 py-3.5 text-left text-sm font-semibold text-gray-900">
                                        Address</th>
                                    <th scope="col" class="px-3 py-3.5 text-left text-sm font-semibold text-gray-900">Area
                                    </th>
                                    <th scope="col" class="px-3 py-3.5 text-left text-sm font-semibold text-gray-900">
                                        Telephone</th>
                                    <th scope="col" class="px-3 py-3.5 text-left text-sm font-semibold text-gray-900">
                                        Homepage</th>
                                    <th scope="col" class="px-3 py-3.5 text-left text-sm font-semibold text-gray-900">
                                        Category</th>
                                    <th scope="col" class="px-3 py-3.5 text-left text-sm font-semibold text-gray-900">Open
                                        Hours</th>
                                    <th scope="col" class="px-3 py-3.5 text-left text-sm font-semibold text-gray-900">
                                        Facebook Page URL</th>
                                    <th scope="col" class="px-3 py-3.5 text-left text-sm font-semibold text-gray-900">Memo
                                    </th>
                                    <th scope="col" class="relative py-3.5 pl-3 pr-4 sm:pr-6">
                                        <span class="sr-only">Edit</span>
                                    </th>
                                </tr>
                            </thead>
                            <tbody  class="divide-y divide-gray-200 bg-white">
                                <tr v-if="$page.props.items.data == null" v-for="(item, index) in $page.props.items.data" :key="item.id">
                                    <td class="whitespace-nowrap py-4 pl-4 pr-3 text-sm font-medium text-gray-900 sm:pl-6">
                                        {{ index + 1 }}</td>
                                    <td class="whitespace-nowrap px-3 py-4 text-sm text-gray-500">{{ item.client_name }}
                                    </td>
                                    <td class="whitespace-nowrap px-3 py-4 text-sm text-gray-500">{{
                                        threeDotMessage(item.address, 30) }}</td>
                                    <td class="whitespace-nowrap px-3 py-4 text-sm text-gray-500">{{ item.area }}</td>
                                    <td class="whitespace-nowrap px-3 py-4 text-sm text-gray-500">{{ item.telephone }}</td>
                                    <td class="whitespace-nowrap px-3 py-4 text-sm text-gray-500">{{ item.homepage }}</td>
                                    <td class="whitespace-nowrap px-3 py-4 text-sm text-gray-500">{{ item.category }}</td>
                                    <td class="whitespace-nowrap px-3 py-4 text-sm text-gray-500">{{ item.open_hours }}</td>
                                    <td class="whitespace-nowrap px-3 py-4 text-sm text-gray-500">{{
                                        threeDotMessage(item.facebook_fanpage_url, 20) }}</td>
                                <td class="whitespace-nowrap px-3 py-4 text-sm text-gray-500">{{ item.memo }}</td>
                                <td
                                    class="relative whitespace-nowrap py-4 pl-3 pr-4 text-right text-sm font-medium sm:pr-6">
                                    <Link :href="route('encode.destroy', item.id)" method="DELETE" as="button"
                                        class="text-indigo-600 hover:text-indigo-900">Remove<span class="sr-only">, {{
                                        item.id }}</span></Link>
                                </td>
                                </tr>
                                <tr v-else>
                                    <td colspan="6" class="flex flex-col">Empty!</td>
                                </tr>
                        </tbody>
                    </table>
                </div>
                <paginate v-if="$page.props.items.data.length !== 0" class="max-w-6xl mx-auto mt-8 px-4 sm:px-6 lg:px-8"
          :links="$page.props.items.links" :from="$page.props.items.from" :to="$page.props.items.to" :result="$page.props.items.total"
          :responsiveNext="$page.props.items.next_page_url" :responsivePrevious="$page.props.items.first_page_url" />
            </div>
        </div>
    </div>
</div></template>

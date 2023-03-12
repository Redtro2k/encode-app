<script setup>
import { Link, router } from '@inertiajs/vue3';
import Paginate from '@/Components/Paginated.vue';
import { watch, ref } from 'vue'
import { ArchiveBoxXMarkIcon, ArrowUpIcon, ArrowDownIcon, MagnifyingGlassIcon } from '@heroicons/vue/24/solid'


const threeDotMessage = (str, num) => {
    if (str.length > num) {
        return str.slice(0, num) + "...";
    } else {
        return str;
    }
}
let props = defineProps({
    items: Object,
    filters: Object
})
let search = ref(props.filters.search)
let sortOrder = ref('-')

const sortColumn = (column) => {
    if(column === 'client_name'){
        sortOrder.value = sortOrder.value === '' ? '-' : ''
    }
}

watch([search, sortOrder], ([value, order]) => {
      let query = ''
      if (value) {
        query = `?filter[client_name]=${value}`
      }
      if(order){
        query += `${value ? '&' : '?'}sort=${order}client_name`
      }

      router.get(`/encode${query}`, {},{
        preserveState: true,
        replace: true
      })
    })
</script>
<template>
    <div class="px-4 sm:px-6 lg:px-8">
        <div class="sm:flex sm:items-center">
            <div class="sm:flex-auto">
                <h1 class="text-xl font-semibold text-gray-900">Data Entries</h1>
                <p class="mt-2 text-sm text-gray-700">A list of all the Gathering Data Entries including their client name, address, etc. hover the Client Name if you want sort to asc and desc.</p>
            </div>
            <div class="flex space-x-2">
                <Link class="rounded-md bg-indigo-500 p-2 text-white hover:bg-indigo-400" :href="route('encode.create')">Create</Link>
                <a class="rounded-md bg-indigo-500 p-2 text-white hover:bg-indigo-400" :href="route('export')">Export as Excel</a>
                <Link class="rounded-md bg-red-500 p-2 text-white hover:bg-red-400" :href="route('erase')">Clear All</Link>
            </div>
        </div>
        <div class="mt-8 flex flex-col">
            <div class="-my-2 -mx-4 overflow-x-auto sm:-mx-6 lg:-mx-8">
                <div class="inline-block min-w-full py-2 align-middle md:px-6 lg:px-8">
                    <div class="w-64 mb-4">
                    <div class="mt-1 relative rounded-md shadow-sm">
                    <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                        <MagnifyingGlassIcon class="h-5 w-5 text-gray-400" aria-hidden="true" />
                    </div>
                        <input type="email" v-model="search" class="focus:ring-indigo-500 focus:border-indigo-500 block w-full pl-10 sm:text-sm border-gray-300 rounded-md" placeholder="Client Name" />
                    </div>
                </div>
                    <div class="overflow-hidden shadow ring-1 ring-black ring-opacity-5 md:rounded-lg">
                        <table class="min-w-full divide-y divide-gray-300">
                            <thead class="bg-gray-50">
                                <tr>
                                    <th scope="col"
                                        class="py-3.5 pl-4 pr-3 text-left text-sm font-semibold text-gray-900 sm:pl-6">No.
                                    </th>
                                    <th @click="sortColumn('client_name')" scope="col" class="px-3 py-3.5 text-left text-sm font-semibold text-gray-900 cursor-pointer">
                                        <div class="flex justify-between">
                                            <p class="group inline-flex">
                                                Client Name
                                                    <span class="invisible ml-2 flex-none rounded text-gray-400 group-hover:visible group-focus:visible">
                                                    <component :is="sortOrder == '-' ? ArrowDownIcon : ArrowUpIcon" class="h-5 w-5 text-gray-600"/>
                                                </span>
                                            </p>
                                        </div>
                                    </th>
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
                                <tr v-if="props.items.data.length !== 0" v-for="(item, index) in props.items.data" :key="item.id">
                                    <td class="whitespace-nowrap py-4 pl-4 pr-3 text-sm font-medium text-gray-900 sm:pl-6">
                                        {{ index + 1 }}</td>
                                    <td class="whitespace-nowrap px-3 py-4 text-sm text-gray-500">{{ item.client_name }}
                                    </td>
                                    <td class="whitespace-nowrap px-3 py-4 text-sm text-gray-500">{{threeDotMessage(item.address, 30) }}</td>
                                    <td class="whitespace-nowrap px-3 py-4 text-sm text-gray-500">{{ item.area }}</td>
                                    <td class="whitespace-nowrap px-3 py-4 text-sm text-gray-500">
                                        {{ item.telephone.split(' ').join('-') }}
                                    </td>
                                    <td class="whitespace-nowrap px-3 py-4 text-sm text-gray-500">
                                        <component :is="item.homepage != 'N/A' ? 'a' : 'p'" :href="item.homepage" :class="[item.homepage != 'N/A' ? 'text-indigo-500 hover:text-indigo-400' : 'text-gray-700', ]">
                                            {{ threeDotMessage(item.homepage, 20) }}
                                        </component>
                                        </td>
                                    <td class="whitespace-nowrap px-3 py-4 text-sm text-gray-500">{{ item.category }}</td>
                                    <td class="whitespace-nowrap px-3 py-4 text-sm text-gray-500">{{ item.open_hours }}</td>
                                    <td class="whitespace-nowrap px-3 py-4 text-sm text-gray-500">
                                        <component :is="item.homepage != 'N/A' ? 'a' : 'p'" :href="item.facebook_fanpage_url" :class="[item.facebook_fanpage_url != 'N/A' ? 'text-indigo-500 hover:text-indigo-400' : 'text-gray-700', ]">
                                            {{threeDotMessage(item.facebook_fanpage_url, 20) }}
                                        </component>
                                        </td>
                                <td class="whitespace-nowrap px-3 py-4 text-sm text-gray-500">{{ item.memo }}</td>
                                <td
                                    class="relative whitespace-nowrap py-4 pl-3 pr-4 text-right text-sm font-medium sm:pr-6">
                                    <div class="flex space-x-4">
                                        <Link :href="route('encode.destroy', item.id)" method="DELETE" as="button"
                                        class="text-indigo-600 hover:text-indigo-900">Remove<span class="sr-only">, {{ item.id }}</span></Link>
                                        <Link :href="route('encode.edit', item.id)" method="GET" as="button"
                                        class="text-green-600 hover:text-green-900">Edit<span class="sr-only">, {{ item.id }}</span></Link>
                                    </div>
                                </td>
                                </tr>
                                <tr v-else>
                                    <td colspan="11">
                                        <div class="flex justify-center my-5">
                                            <div>
                                                <ArchiveBoxXMarkIcon  class="h-24 w-24 text-gray-500 justify-center pt-4"/>
                                                <p class="flex justify-center text-center py-2 text-lg font-extrabold text-gray-500">Empty</p>
                                            </div>
                                        </div>

                                    </td>
                                </tr>
                        </tbody>
                    </table>
                </div>
                <paginate v-if="props.items.data.length !== 0"  class="max-w-6xl mx-auto mt-8 px-4 sm:px-6 lg:px-8"
                :links="props.items.links" :from="props.items.from" :to="props.items.to" :result="props.items.total"
                :responsiveNext="props.items.next_page_url" :responsivePrevious="props.items.first_page_url" />
            </div>
        </div>
    </div>
</div></template>

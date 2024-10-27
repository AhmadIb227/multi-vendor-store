<body>
    <li class="my-account-dropdown">
        @php
            $languges = App\Models\Language::all();
        @endphp
        <div class="topbar-text dropdown disable-autohide __language-bar text-capitalize">
            <a class="topbar-link dropdown-toggle" href="#" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false" style="display: flex;">

               @php
                $curr_lang = Session::has('language')
                    ? App\Models\Language::find(Session::get('language'))
                    : App\Models\Language::where('language', 'العربية')->first();

                if (!$curr_lang) {
                    $curr_lang = App\Models\Language::where('language', 'العربية')->first();
                }
            @endphp
                <!--<img class="mr-2" width="35" -->
                <!--    src="{{ asset('assets/flags/' . $curr_lang->language . '.png') }}"-->
                <!--    alt="{{ $curr_lang->language }}" style"">-->
                <!--{{ $curr_lang->language }}-->
                <img class="mr-2" width="35"
                     src="{{ asset('assets/flags/' . $curr_lang->language . '.png') }}"
                     alt="{{ $curr_lang->language }}"
                     style="margin-left: 15px;">
                <span >{{ $curr_lang->language }}</span>
            </a>
            <div class="dropdown-menu dropdown-menu-left" aria-labelledby="dropdownMenuButton" >
                @foreach ($languges as $language)
                    <a class="dropdown-item pb-1 change-language"
                        href="{{ route('front.language', $language->id) }}"
                        data-language-code="{{ $language->language }}" style="display: flex;">
                        <img class="mr-2" width="35"
                            src="{{ asset('assets/flags/' . $language->language . '.png') }}"
                            alt="{{ $language->language }}">
                        <span class="text-capitalize">{{ $language->language }}</span>
                    </a>
                @endforeach
            </div>
        </div>
    </li>
</body>

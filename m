From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Subject: Re: [PATCH v2] mm: Introduce new function vm_insert_kmem_page
Date: Fri, 5 Oct 2018 10:52:09 +0200
Message-ID: <CANiq72kVJn7985EET067Dgj+z0dwb0x2MTUnREMWKCVU6=WnJA@mail.gmail.com>
References: <20181003185854.GA1174@jordon-HP-15-Notebook-PC>
 <20181003200003.GA9965@bombadil.infradead.org> <20181003221444.GZ30658@n2100.armlinux.org.uk>
 <CAFqt6zYHhmPwUdaCZX-BuAvaVwA-x1W39tz+Q50-nbEaW2cYVg@mail.gmail.com>
 <20181004123400.GC30658@n2100.armlinux.org.uk> <CAFqt6zZPOM17QwmcWKF3F1gqkJm=2PxvuJ3naWuRXZGHc2HrEQ@mail.gmail.com>
 <20181004181736.GB20842@bombadil.infradead.org> <CAFqt6zaN0PQHkjuwFf8VriROLy7qrPDu-iNE=VPiXJw8C7GpQg@mail.gmail.com>
 <CANiq72mkTP_m20vqei-cpN+ypQ_gU472qn5m68vb_4Nqj5afMQ@mail.gmail.com> <CAFqt6zaFc_GenhfvsD0VPfepR-jjXypj+4CgNEuHMVq1WXV+8w@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAFqt6zaFc_GenhfvsD0VPfepR-jjXypj+4CgNEuHMVq1WXV+8w@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Souptick Joarder <jrdr.linux@gmail.com>
Cc: Matthew Wilcox <willy@infradead.org>, linux@armlinux.org.uk, Robin van der Gracht <robin@protonic.nl>, stefanr@s5r6.in-berlin.de, hjc@rock-chips.com, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Dave Airlie <airlied@linux.ie>, robin.murphy@arm.com, iamjoonsoo.kim@lge.com, Andrew Morton <akpm@linux-foundation.org>, Marek Szyprowski <m.szyprowski@samsung.com>, Kees Cook <keescook@chromium.org>, treding@nvidia.com, mhocko@suse.com, Dan Williams <dan.j.williams@intel.com>, kirill.shutemov@linux.intel.com, Mark Rutland <mark.rutland@arm.com>, Andrey Ryabinin <aryabinin@virtuozzo.com>, Dmitry Vyukov <dvyukov@google.com>, Kate Stewart <kstewart@linuxfoundation.org>, tchibo@google.com, riel@redhat.com, minchan@kernel.org, Peter Zijlstra <peterz@infradead.org>, ying.hua
List-Id: linux-rockchip.vger.kernel.org

Hi Souptick,

On Fri, Oct 5, 2018 at 7:51 AM Souptick Joarder <jrdr.linux@gmail.com> wrote:
>
> On Fri, Oct 5, 2018 at 1:16 AM Miguel Ojeda
> <miguel.ojeda.sandonis@gmail.com> wrote:
> >
> >
> > Also, not sure if you saw my comments/review: if the interface is not
> > going to change, why the name change? Why can't we simply keep using
> > vm_insert_page?
>
> yes, changing the name without changing the interface is a
> bad approach and this can't be taken. As Matthew mentioned,
> "vm_insert_range() which takes an array of struct page pointers.
> That fits the majority of remaining users" would be a better approach
> to fit this use case.
>
> But yes, we can't keep vm_insert_page and vmf_insert_page together
> as it doesn't guarantee  that future drivers will not use vm_insert_page
> in #PF context ( which will generate new errno to VM_FAULT_CODE).
>

Maybe I am hard of thinking, but aren't you planning to remove
vm_insert_page with these changes? If yes, why you can't use the keep
vm_insert_page name? In other words, keep returning what the drivers
expect?

Cheers,
Miguel

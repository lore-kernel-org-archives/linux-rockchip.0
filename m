From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Subject: Re: [PATCH v2] mm: Introduce new function vm_insert_kmem_page
Date: Thu, 4 Oct 2018 21:46:34 +0200
Message-ID: <CANiq72mkTP_m20vqei-cpN+ypQ_gU472qn5m68vb_4Nqj5afMQ@mail.gmail.com>
References: <20181003185854.GA1174@jordon-HP-15-Notebook-PC>
 <20181003200003.GA9965@bombadil.infradead.org> <20181003221444.GZ30658@n2100.armlinux.org.uk>
 <CAFqt6zYHhmPwUdaCZX-BuAvaVwA-x1W39tz+Q50-nbEaW2cYVg@mail.gmail.com>
 <20181004123400.GC30658@n2100.armlinux.org.uk> <CAFqt6zZPOM17QwmcWKF3F1gqkJm=2PxvuJ3naWuRXZGHc2HrEQ@mail.gmail.com>
 <20181004181736.GB20842@bombadil.infradead.org> <CAFqt6zaN0PQHkjuwFf8VriROLy7qrPDu-iNE=VPiXJw8C7GpQg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAFqt6zaN0PQHkjuwFf8VriROLy7qrPDu-iNE=VPiXJw8C7GpQg@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Souptick Joarder <jrdr.linux@gmail.com>
Cc: Matthew Wilcox <willy@infradead.org>, linux@armlinux.org.uk, Robin van der Gracht <robin@protonic.nl>, stefanr@s5r6.in-berlin.de, hjc@rock-chips.com, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Dave Airlie <airlied@linux.ie>, robin.murphy@arm.com, iamjoonsoo.kim@lge.com, Andrew Morton <akpm@linux-foundation.org>, Marek Szyprowski <m.szyprowski@samsung.com>, Kees Cook <keescook@chromium.org>, treding@nvidia.com, mhocko@suse.com, Dan Williams <dan.j.williams@intel.com>, kirill.shutemov@linux.intel.com, Mark Rutland <mark.rutland@arm.com>, Andrey Ryabinin <aryabinin@virtuozzo.com>, Dmitry Vyukov <dvyukov@google.com>, Kate Stewart <kstewart@linuxfoundation.org>, tchibo@google.com, riel@redhat.com, minchan@kernel.org, Peter Zijlstra <peterz@infradead.org>, ying.hua
List-Id: linux-rockchip.vger.kernel.org

Hi Souptick,

On Thu, Oct 4, 2018 at 8:49 PM Souptick Joarder <jrdr.linux@gmail.com> wrote:
>
> On Thu, Oct 4, 2018 at 11:47 PM Matthew Wilcox <willy@infradead.org> wrote:
> >
> > I think this is a bad plan.  What we should rather do is examine the current
> > users of vm_insert_page() and ask "What interface would better replace
> > vm_insert_page()?"
> >
> > As I've said to you before, I believe the right answer is to have a
> > vm_insert_range() which takes an array of struct page pointers.  That
> > fits the majority of remaining users.
>
> Ok, but it will take some time.
> Is it a good idea to introduce the final vm_fault_t patch and then
> start working on vm_insert_range as it will be bit time consuming ?
>

Well, why is there a rush? Development should be done in a patch
series or a tree, and submitted as a whole, instead of sending partial
patches.

Also, not sure if you saw my comments/review: if the interface is not
going to change, why the name change? Why can't we simply keep using
vm_insert_page?

Cheers,
Miguel

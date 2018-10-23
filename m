From: Souptick Joarder <jrdr.linux@gmail.com>
Subject: Re: [PATCH v2] mm: Introduce new function vm_insert_kmem_page
Date: Tue, 23 Oct 2018 18:03:42 +0530
Message-ID: <CAFqt6zZp=UsSGH148=tPWLnSxC51EGdR0Vv4f5tP58MO-6OS_w@mail.gmail.com>
References: <CANiq72mkTP_m20vqei-cpN+ypQ_gU472qn5m68vb_4Nqj5afMQ@mail.gmail.com>
 <CAFqt6zaFc_GenhfvsD0VPfepR-jjXypj+4CgNEuHMVq1WXV+8w@mail.gmail.com>
 <CANiq72kVJn7985EET067Dgj+z0dwb0x2MTUnREMWKCVU6=WnJA@mail.gmail.com>
 <CAFqt6zZ4sPjtb5BaDfwc5tZv+vMj6ao3NJZ_3quX9AH5pCMwJg@mail.gmail.com>
 <CANiq72m9u1PL9X+dPNLxgkhvttj=4ijLyM2sFex=Kws7wswKzw@mail.gmail.com>
 <CAFqt6zYH4Aczu8AYke8AfGuMS70SJXCMn-n8X8C_Tz03gTjn8g@mail.gmail.com>
 <CANiq72kRAZE9SyM4EkpaBZH03Ex0Z=4Pk2iOuc2jBDKTfKjHQg@mail.gmail.com>
 <CAFqt6zZCCPFE3sQ3u_gjiN8wwd99nwWatk9JRsiGxbCwhi91mg@mail.gmail.com>
 <CANiq72k-e_j67==VdrayqggjAd7MAfpaJS-_0=jkmh4OWynukQ@mail.gmail.com>
 <CAFqt6zZ2yHkVcbYtK1dxr9B3K5WVYGboavjP1ibmYei0u4zFbQ@mail.gmail.com> <20181023122435.GB20085@bombadil.infradead.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20181023122435.GB20085@bombadil.infradead.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Matthew Wilcox <willy@infradead.org>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Russell King - ARM Linux <linux@armlinux.org.uk>, robin@protonic.nl, stefanr@s5r6.in-berlin.de, hjc@rock-chips.com, Heiko Stuebner <heiko@sntech.de>, airlied@linux.ie, robin.murphy@arm.com, iamjoonsoo.kim@lge.com, Andrew Morton <akpm@linux-foundation.org>, Marek Szyprowski <m.szyprowski@samsung.com>, Kees Cook <keescook@chromium.org>, treding@nvidia.com, Michal Hocko <mhocko@suse.com>, Dan Williams <dan.j.williams@intel.com>, "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>, Mark Rutland <mark.rutland@arm.com>, aryabinin@virtuozzo.com, Dmitry Vyukov <dvyukov@google.com>, Kate Stewart <kstewart@linuxfoundation.org>, tchibo@google.com, riel@redhat.com, Minchan Kim <minchan@kernel.org>, Peter Zijlstra <peterz@infrad>
List-Id: linux-rockchip.vger.kernel.org

On Tue, Oct 23, 2018 at 5:54 PM Matthew Wilcox <willy@infradead.org> wrote:
>
> On Tue, Oct 23, 2018 at 05:44:32PM +0530, Souptick Joarder wrote:
> > On Sat, Oct 6, 2018 at 4:19 PM Miguel Ojeda
> > <miguel.ojeda.sandonis@gmail.com> wrote:
> > >
> > > On Sat, Oct 6, 2018 at 7:11 AM Souptick Joarder <jrdr.linux@gmail.com> wrote:
> > > >
> > > > On Fri, Oct 5, 2018 at 11:39 PM Miguel Ojeda
> > > > <miguel.ojeda.sandonis@gmail.com> wrote:
> > > > > They are not supposed to be "steps". You did it with 70+ commits (!!)
> > > > > over the course of several months. Why a tree wasn't created, stuff
> > > > > developed there, and when done, submitted it for review?
> > > >
> > > > Because we already have a plan for entire vm_fault_t migration and
> > > > the * instruction * was to send one patch per driver.
> > >
> > > The instruction?
> >
> > Sorry for the delayed response.
> > Instruction from Matthew  Wilcox who is supervising the entire vm_fault_t
> > migration work :-)
>
> Hang on.  That was for the initial vm_fault_t conversion in which each
> step was clearly an improvement.  What you're looking at now is far
> from that.

Ok. But my understanding was, the approach of vm_insert_range comes
into discussion as part of converting vm_insert_page into vmf_insert_page
which is still part of original vm_fault_t conversion discussion.  No ?

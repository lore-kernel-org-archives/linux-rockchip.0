From: Matthew Wilcox <willy@infradead.org>
Subject: Re: [PATCH v2] mm: Introduce new function vm_insert_kmem_page
Date: Thu, 4 Oct 2018 11:17:36 -0700
Message-ID: <20181004181736.GB20842@bombadil.infradead.org>
References: <20181003185854.GA1174@jordon-HP-15-Notebook-PC>
 <20181003200003.GA9965@bombadil.infradead.org>
 <20181003221444.GZ30658@n2100.armlinux.org.uk>
 <CAFqt6zYHhmPwUdaCZX-BuAvaVwA-x1W39tz+Q50-nbEaW2cYVg@mail.gmail.com>
 <20181004123400.GC30658@n2100.armlinux.org.uk>
 <CAFqt6zZPOM17QwmcWKF3F1gqkJm=2PxvuJ3naWuRXZGHc2HrEQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
Content-Disposition: inline
In-Reply-To: <CAFqt6zZPOM17QwmcWKF3F1gqkJm=2PxvuJ3naWuRXZGHc2HrEQ@mail.gmail.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Souptick Joarder <jrdr.linux@gmail.com>
Cc: Mark Rutland <mark.rutland@arm.com>, Kate Stewart <kstewart@linuxfoundation.org>, Michal Hocko <mhocko@suse.com>, Heiko Stuebner <heiko@sntech.de>, airlied@linux.ie, linux@dominikbrodowski.net, linux-kernel@vger.kernel.org, Linux-MM <linux-mm@kvack.org>, cpandya@codeaurora.org, linux1394-devel@lists.sourceforge.net, Marek Szyprowski <m.szyprowski@samsung.com>, ak@linux.intel.com, Minchan Kim <minchan@kernel.org>, linux-rockchip@lists.infradead.org, Russell King - ARM Linux <linux@armlinux.org.uk>, Peter Zijlstra <peterz@infradead.org>, linux-arm-kernel@lists.infradead.org, "Huang, Ying" <ying.huang@intel.com>, tchibo@google.com, aryabinin@virtuozzo.com, treding@nvidia.com, riel@redhat.com, Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>, rppt@linux.vnet.ibm.com, dri-devel@lists.freedesktop.org, Dan Williams <dan.j.williams@intel.com>, Andrew Morton <akp>
List-Id: linux-rockchip.vger.kernel.org

On Thu, Oct 04, 2018 at 11:42:18PM +0530, Souptick Joarder wrote:
> On Thu, Oct 4, 2018 at 6:04 PM Russell King - ARM Linux
> <linux@armlinux.org.uk> wrote:
> > I'm confused, what are you trying to do?
> >
> > It seems that we already have:
> >
> > vm_insert_page() - returns an errno
> > vmf_insert_page() - returns a VM_FAULT_* code
> >
> > From what I _think_ you're saying, you're trying to provide
> > vm_insert_kmem_page() as a direct replacement for the existing
> > vm_insert_page(), and then make vm_insert_page() behave as per
> > vmf_insert_page(), so we end up with:
> 
> yes, vm_insert_kmem_page() can be a direct replacement of vm_insert_page
> or might be a wrapper function written using vm_insert_page whichever
> suites better
> based on feedback.
> 
> >
> > vm_insert_kmem_page() - returns an errno
> > vm_insert_page() - returns a VM_FAULT_* code
> > vmf_insert_page() - returns a VM_FAULT_* code and is identical to
> >       vm_insert_page()
> >
> 
> After completion of conversion we end up with
> 
>  vm_insert_kmem_page() - returns an errno
>  vmf_insert_page() - returns a VM_FAULT_* code
> 
> 
> > Given that the documentation for vm_insert_page() says:
> >
> >  * Usually this function is called from f_op->mmap() handler
> >  * under mm->mmap_sem write-lock, so it can change vma->vm_flags.
> >  * Caller must set VM_MIXEDMAP on vma if it wants to call this
> >  * function from other places, for example from page-fault handler.
> >
> > this says that the "usual" use method for vm_insert_page() is
> > _outside_ of page fault handling - if it is used _inside_ page fault
> > handling, then it states that additional fixups are required on the
> > VMA.  So I don't get why your patch commentry seems to be saying that
> > users of vm_insert_page() outside of page fault handling all need to
> > be patched - isn't this the use case that this function is defined
> > to be handling?
> 
> The answer is yes best of my knowledge.
> 
> But as mentioned in change log ->
> 
> Going forward, the plan is to restrict future drivers not
> to use vm_insert_page ( *it will generate new errno to
> VM_FAULT_CODE mapping code for new drivers which were already
> cleaned up for existing drivers*) in #PF (page fault handler)
> context but to make use of vmf_insert_page which returns
> VMF_FAULT_CODE and that is not possible until both vm_insert_page
> and vmf_insert_page API exists.
> 
> But there are some consumers of vm_insert_page which use it
> outside #PF context. straight forward conversion of vm_insert_page
> to vmf_insert_page won't work there as those function calls expects
> errno not vm_fault_t in return.
> 
> If both {vm, vmf}_insert_page exists, vm_insert_page might be used for
> #PF context which we want to protect by removing/ replacing vm_insert_page
> with another similar/ wrapper API.
> 
> Is that the right answer of your question ? no ?

I think this is a bad plan.  What we should rather do is examine the current
users of vm_insert_page() and ask "What interface would better replace
vm_insert_page()?"

As I've said to you before, I believe the right answer is to have a
vm_insert_range() which takes an array of struct page pointers.  That
fits the majority of remaining users.

----

If we do want to rename vm_insert_page() to vm_insert_kmem_page(), then
the right answer is to _just do that_.  Not duplicate vm_insert_page()
in its entirety.  I don't see the point to doing that.

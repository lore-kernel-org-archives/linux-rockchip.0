From: Matthew Wilcox <willy@infradead.org>
Subject: Re: [PATCH v2] mm: Introduce new function vm_insert_kmem_page
Date: Wed, 3 Oct 2018 17:39:56 -0700
Message-ID: <20181004003956.GA31522@bombadil.infradead.org>
References: <20181003185854.GA1174@jordon-HP-15-Notebook-PC>
 <20181003200003.GA9965@bombadil.infradead.org>
 <20181003221444.GZ30658@n2100.armlinux.org.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
Content-Disposition: inline
In-Reply-To: <20181003221444.GZ30658@n2100.armlinux.org.uk>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Russell King - ARM Linux <linux@armlinux.org.uk>
Cc: mark.rutland@arm.com, kstewart@linuxfoundation.org, mhocko@suse.com, heiko@sntech.de, airlied@linux.ie, linux@dominikbrodowski.net, linux-kernel@vger.kernel.org, linux-mm@kvack.org, cpandya@codeaurora.org, linux1394-devel@lists.sourceforge.net, m.szyprowski@samsung.com, ak@linux.intel.com, minchan@kernel.org, linux-rockchip@lists.infradead.org, peterz@infradead.org, linux-arm-kernel@lists.infradead.org, ying.huang@intel.com, tchibo@google.com, aryabinin@virtuozzo.com, treding@nvidia.com, riel@redhat.com, keescook@chromium.org, arnd@arndb.de, rppt@linux.vnet.ibm.com, dri-devel@lists.freedesktop.org, dan.j.williams@intel.com, akpm@linux-foundation.org, dvyukov@google.com, robin@protonic.nl, hjc@rock-chips.com, miguel.ojeda.sandonis@gmail.com, mcgrof@kernel.org, stefanr@s5r6.in-berlin.de, Souptick Joarder <jrdr.linux@gmail.com>, hannes@cmpxchg.org, joe@perches.com, iamjoons
List-Id: linux-rockchip.vger.kernel.org

On Wed, Oct 03, 2018 at 11:14:45PM +0100, Russell King - ARM Linux wrote:
> On Wed, Oct 03, 2018 at 01:00:03PM -0700, Matthew Wilcox wrote:
> > On Thu, Oct 04, 2018 at 12:28:54AM +0530, Souptick Joarder wrote:
> > > These are the approaches which could have been taken to handle
> > > this scenario -
> > > 
> > > *  Replace vm_insert_page with vmf_insert_page and then write few
> > >    extra lines of code to convert VM_FAULT_CODE to errno which
> > >    makes driver users more complex ( also the reverse mapping errno to
> > >    VM_FAULT_CODE have been cleaned up as part of vm_fault_t migration ,
> > >    not preferred to introduce anything similar again)
> > > 
> > > *  Maintain both vm_insert_page and vmf_insert_page and use it in
> > >    respective places. But it won't gurantee that vm_insert_page will
> > >    never be used in #PF context.
> > > 
> > > *  Introduce a similar API like vm_insert_page, convert all non #PF
> > >    consumer to use it and finally remove vm_insert_page by converting
> > >    it to vmf_insert_page.
> > > 
> > > And the 3rd approach was taken by introducing vm_insert_kmem_page().
> > > 
> > > In short, vmf_insert_page will be used in page fault handlers
> > > context and vm_insert_kmem_page will be used to map kernel
> > > memory to user vma outside page fault handlers context.
> > 
> > As far as I can tell, vm_insert_kmem_page() is line-for-line identical
> > with vm_insert_page().  Seriously, here's a diff I just did:
[...]
> > What on earth are you trying to do?
> 
> Reading the commit log, it seems that the intention is to split out
> vm_insert_page() used outside of page-fault handling with the use
> within page-fault handling, so that different return codes can be
> used.

Right, but we already did that.  We now have vmf_insert_page() which
returns a VM_FAULT_* code and vm_insert_page() which returns an errno.

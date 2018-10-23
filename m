From: Matthew Wilcox <willy@infradead.org>
Subject: Re: [PATCH v2] mm: Introduce new function vm_insert_kmem_page
Date: Tue, 23 Oct 2018 05:59:28 -0700
Message-ID: <20181023125928.GC20085@bombadil.infradead.org>
References: <CANiq72kVJn7985EET067Dgj+z0dwb0x2MTUnREMWKCVU6=WnJA@mail.gmail.com>
 <CAFqt6zZ4sPjtb5BaDfwc5tZv+vMj6ao3NJZ_3quX9AH5pCMwJg@mail.gmail.com>
 <CANiq72m9u1PL9X+dPNLxgkhvttj=4ijLyM2sFex=Kws7wswKzw@mail.gmail.com>
 <CAFqt6zYH4Aczu8AYke8AfGuMS70SJXCMn-n8X8C_Tz03gTjn8g@mail.gmail.com>
 <CANiq72kRAZE9SyM4EkpaBZH03Ex0Z=4Pk2iOuc2jBDKTfKjHQg@mail.gmail.com>
 <CAFqt6zZCCPFE3sQ3u_gjiN8wwd99nwWatk9JRsiGxbCwhi91mg@mail.gmail.com>
 <CANiq72k-e_j67==VdrayqggjAd7MAfpaJS-_0=jkmh4OWynukQ@mail.gmail.com>
 <CAFqt6zZ2yHkVcbYtK1dxr9B3K5WVYGboavjP1ibmYei0u4zFbQ@mail.gmail.com>
 <20181023122435.GB20085@bombadil.infradead.org>
 <CAFqt6zZp=UsSGH148=tPWLnSxC51EGdR0Vv4f5tP58MO-6OS_w@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
Content-Disposition: inline
In-Reply-To: <CAFqt6zZp=UsSGH148=tPWLnSxC51EGdR0Vv4f5tP58MO-6OS_w@mail.gmail.com>
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

On Tue, Oct 23, 2018 at 06:03:42PM +0530, Souptick Joarder wrote:
> On Tue, Oct 23, 2018 at 5:54 PM Matthew Wilcox <willy@infradead.org> wrote:
> > On Tue, Oct 23, 2018 at 05:44:32PM +0530, Souptick Joarder wrote:
> > > Instruction from Matthew  Wilcox who is supervising the entire vm_fault_t
> > > migration work :-)
> >
> > Hang on.  That was for the initial vm_fault_t conversion in which each
> > step was clearly an improvement.  What you're looking at now is far
> > from that.
> 
> Ok. But my understanding was, the approach of vm_insert_range comes
> into discussion as part of converting vm_insert_page into vmf_insert_page
> which is still part of original vm_fault_t conversion discussion.  No ?

No.  The initial part (converting all page fault methods to vm_fault_t)
is done.  What remains undone (looking at akpm's tree) is changing the
typedef of vm_fault_t from int to unsigned int.  That will prevent new
page fault handlers with the wrong type from being added.

I don't necessarily want to get rid of vm_insert_page().  Maybe it will
make sense to do that, and maybe not.  What I do want to see is thought,
and not "Matthew told me to do it", when I didn't.

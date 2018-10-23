From: Matthew Wilcox <willy@infradead.org>
Subject: Re: [PATCH v2] mm: Introduce new function vm_insert_kmem_page
Date: Tue, 23 Oct 2018 05:24:35 -0700
Message-ID: <20181023122435.GB20085@bombadil.infradead.org>
References: <CANiq72mkTP_m20vqei-cpN+ypQ_gU472qn5m68vb_4Nqj5afMQ@mail.gmail.com>
 <CAFqt6zaFc_GenhfvsD0VPfepR-jjXypj+4CgNEuHMVq1WXV+8w@mail.gmail.com>
 <CANiq72kVJn7985EET067Dgj+z0dwb0x2MTUnREMWKCVU6=WnJA@mail.gmail.com>
 <CAFqt6zZ4sPjtb5BaDfwc5tZv+vMj6ao3NJZ_3quX9AH5pCMwJg@mail.gmail.com>
 <CANiq72m9u1PL9X+dPNLxgkhvttj=4ijLyM2sFex=Kws7wswKzw@mail.gmail.com>
 <CAFqt6zYH4Aczu8AYke8AfGuMS70SJXCMn-n8X8C_Tz03gTjn8g@mail.gmail.com>
 <CANiq72kRAZE9SyM4EkpaBZH03Ex0Z=4Pk2iOuc2jBDKTfKjHQg@mail.gmail.com>
 <CAFqt6zZCCPFE3sQ3u_gjiN8wwd99nwWatk9JRsiGxbCwhi91mg@mail.gmail.com>
 <CANiq72k-e_j67==VdrayqggjAd7MAfpaJS-_0=jkmh4OWynukQ@mail.gmail.com>
 <CAFqt6zZ2yHkVcbYtK1dxr9B3K5WVYGboavjP1ibmYei0u4zFbQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
Content-Disposition: inline
In-Reply-To: <CAFqt6zZ2yHkVcbYtK1dxr9B3K5WVYGboavjP1ibmYei0u4zFbQ@mail.gmail.com>
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

On Tue, Oct 23, 2018 at 05:44:32PM +0530, Souptick Joarder wrote:
> On Sat, Oct 6, 2018 at 4:19 PM Miguel Ojeda
> <miguel.ojeda.sandonis@gmail.com> wrote:
> >
> > On Sat, Oct 6, 2018 at 7:11 AM Souptick Joarder <jrdr.linux@gmail.com> wrote:
> > >
> > > On Fri, Oct 5, 2018 at 11:39 PM Miguel Ojeda
> > > <miguel.ojeda.sandonis@gmail.com> wrote:
> > > > They are not supposed to be "steps". You did it with 70+ commits (!!)
> > > > over the course of several months. Why a tree wasn't created, stuff
> > > > developed there, and when done, submitted it for review?
> > >
> > > Because we already have a plan for entire vm_fault_t migration and
> > > the * instruction * was to send one patch per driver.
> >
> > The instruction?
> 
> Sorry for the delayed response.
> Instruction from Matthew  Wilcox who is supervising the entire vm_fault_t
> migration work :-)

Hang on.  That was for the initial vm_fault_t conversion in which each
step was clearly an improvement.  What you're looking at now is far
from that.

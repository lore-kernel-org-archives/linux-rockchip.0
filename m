From: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [BUG] rk3399-rockpro64 pcie synchronous external abort
Date: Mon, 11 Nov 2019 19:21:48 -0500
Message-ID: <CAMdYzYqQdd5Es3DtWT3M4bBhMrTeZfz--eVGjGzin6jbH3ZwcA@mail.gmail.com>
References: <CAMdYzYo6mKSMXoDR7St1ynUJ9f3sh=0rgNAbbVvFAfJn82VvVQ@mail.gmail.com>
 <20191112000334.GA69183@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191112000334.GA69183-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Bjorn Helgaas <helgaas-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Mon, Nov 11, 2019 at 7:03 PM Bjorn Helgaas <helgaas-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org> wrote:
>
> On Sun, Nov 10, 2019 at 10:43:48AM -0500, Peter Geis wrote:
>
> > I plugged in an i350 two port nic and examined the assigned address spaces.
> > I've attached it below.
> > Judging by the usage, I think this controller has enough address space
> > for another two port NIC, and that's about it.
> > I'm pretty sure now that the rk3399 controller just doesn't have the
> > address space to map larger devices.
> > I'm pretty sure the IOMMU would allow us to address system memory as
> > pcie address space and overcome this limitation, but I don't know how
> > to do that.
>
> I don't think you're out of MMIO space, at least in this instance.  It
> looks like you have 32MB available and the two-port NIC on bus 01 only
> takes 5MB.
>
> The IOMMU is used for DMA (e.g., reads/writes initiated by the NIC),
> while the MMIO space is used for CPU programmed I/O (reads/writes done
> by the driver running on the CPU).
>
> > The address space for the nic is below:
> > f8000000-f8ffffff : axi-base
> > fa000000-fbdfffff : MEM
>
> 32MB.
>
> >   fa000000-fa4fffff : PCI Bus 0000:01
>
> 5MB.
Just a note, this is not the device that triggered the bug.
This is a i350 NIC, i posted it as a comparison to my original email.
>
> >     fa000000-fa07ffff : 0000:01:00.0
> >       fa000000-fa07ffff : igb
> >     fa080000-fa0fffff : 0000:01:00.0
> >     fa100000-fa17ffff : 0000:01:00.1
> >       fa100000-fa17ffff : igb
> >     fa180000-fa1fffff : 0000:01:00.1
> >     fa200000-fa27ffff : 0000:01:00.0
> >     fa280000-fa2fffff : 0000:01:00.0
> >     fa300000-fa37ffff : 0000:01:00.1
> >     fa380000-fa3fffff : 0000:01:00.1
> >     fa400000-fa403fff : 0000:01:00.0
> >       fa400000-fa403fff : igb
> >     fa404000-fa407fff : 0000:01:00.1
> >       fa404000-fa407fff : igb
> > fd000000-fdffffff : f8000000.pcie

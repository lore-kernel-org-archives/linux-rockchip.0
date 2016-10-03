From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] ARM: dts: rockchip: Reserve unusable memory region on
 rk3066
Date: Mon, 03 Oct 2016 12:54:56 +0200
Message-ID: <2391111.dvDuarNnp9@phil>
References: <20161001140939.GA31220@vaio-ubuntu> <6962779.A926KxJite@phil>
 <20161003102054.GB7632@leverpostej>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20161003102054.GB7632@leverpostej>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, =?utf-8?B?UGF3ZcWC?= Jarosz <paweljarosz3691-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 3. Oktober 2016, 11:20:54 CEST schrieb Mark Rutland:
> On Sat, Oct 01, 2016 at 09:18:15PM +0200, Heiko Stuebner wrote:
> > Am Samstag, 1. Oktober 2016, 19:17:11 CEST schrieb Mark Rutland:
> > > On Sat, Oct 01, 2016 at 04:09:39PM +0200,
> > > =?UTF-8?q?Pawe=C5=82=20Jarosz?=
> > 
> > wrote:
> > > > For some reason accessing memory region above 0xfe000000 freezes
> > > > system on rk3066. There is similiar bug on later rockchip soc (rk3288)
> > > > solved same way.
> 
> [...]
> 
> > > > +	reserved-memory {
> > > > +		#address-cells = <1>;
> > > > +		#size-cells = <1>;
> > > > +		ranges;
> > > > +		/*
> > > > +		 * The rk3066 cannot use the memory area above 0x9F000000
> > > > +		 * for some unknown reason.
> > > > +		 */
> > > > +		unusable@9F000000 {
> > > > +			reg = <0x9F000000 0x1000000>;
> > > > +		};
> > > 
> > > I don't think this is a sane workaround, but it is at best difficult to
> > > tell, given there's no reason given for why this memory is unusable.
> > > 
> > > For instance, if bus accesses to this address hang, then this patch only
> > > makes the hand less likely, since the kernel will still map the region
> > > (and
> > > therefore the CPU can perform speculative accesses).
> > > 
> > > Are issues with this memory consistently seen in practice?
> > > 
> > > Can you enable CONFIG_MEMTEST and pass 'memtest' to the kernel, to
> > > determine if the memory is returning erroneous values?
> > 
> > just for the sake of completeness, on the rk3288 the issue was the dma not
> > being able to access the specific memory region (interestingly also the
> > last 16MB but of the 4GB area supported on the rk3288). So memory itself
> > was ok, just dma access to it failed.
> 
> How odd.
> 
> > We didn't find any other sane solution to limit the dma access in a
> > general way at the time, so opted for just blocking the memory region (as
> > it was similarly only
> 
> I was under the impression that dma-ranges could describe this kind of
> DMA addressing limitation. Was there some problem with that? Perhaps the
> driver is not acquiring/configuring its mask correctly?

I remember looking at (and trying) different options back then.

dma-mask wanted power-of-2 values (so it's either 4GB or 2GB (or lower)),  
zone-dma was a 32bit (and non-dt) thing and dma-ranges seem to simply also 
calculate a dma-mask from the value, so you're down to 2GB again.

So just blocking of those 16MB at the end for 4GB devices somehow sounded 
nicer than limiting dma access to only half the memory.

I may be overlooking something but that was what I came up with last year.


Heiko

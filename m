From: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] ARM: dts: rockchip: Reserve unusable memory region on
 rk3066
Date: Mon, 3 Oct 2016 11:20:54 +0100
Message-ID: <20161003102054.GB7632@leverpostej>
References: <20161001140939.GA31220@vaio-ubuntu>
 <20161001181711.GB17554@remoulade> <6962779.A926KxJite@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
Content-Disposition: inline
In-Reply-To: <6962779.A926KxJite@phil>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, =?utf-8?B?UGF3ZcWC?= Jarosz <paweljarosz3691@gmail.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Sat, Oct 01, 2016 at 09:18:15PM +0200, Heiko Stuebner wrote:
> Am Samstag, 1. Oktober 2016, 19:17:11 CEST schrieb Mark Rutland:
> > On Sat, Oct 01, 2016 at 04:09:39PM +0200, =?UTF-8?q?Pawe=C5=82=20Jarosz?= 
> wrote:
> > > For some reason accessing memory region above 0xfe000000 freezes
> > > system on rk3066. There is similiar bug on later rockchip soc (rk3288)
> > > solved same way.

[...]

> > > +	reserved-memory {
> > > +		#address-cells = <1>;
> > > +		#size-cells = <1>;
> > > +		ranges;
> > > +		/*
> > > +		 * The rk3066 cannot use the memory area above 0x9F000000
> > > +		 * for some unknown reason.
> > > +		 */
> > > +		unusable@9F000000 {
> > > +			reg = <0x9F000000 0x1000000>;
> > > +		};
> > 
> > I don't think this is a sane workaround, but it is at best difficult to
> > tell, given there's no reason given for why this memory is unusable.
> > 
> > For instance, if bus accesses to this address hang, then this patch only
> > makes the hand less likely, since the kernel will still map the region (and
> > therefore the CPU can perform speculative accesses).
> > 
> > Are issues with this memory consistently seen in practice?
> > 
> > Can you enable CONFIG_MEMTEST and pass 'memtest' to the kernel, to determine
> > if the memory is returning erroneous values?
> 
> just for the sake of completeness, on the rk3288 the issue was the dma not 
> being able to access the specific memory region (interestingly also the last 
> 16MB but of the 4GB area supported on the rk3288). So memory itself was ok, 
> just dma access to it failed.

How odd.

> We didn't find any other sane solution to limit the dma access in a general way 
> at the time, so opted for just blocking the memory region (as it was similarly 
> only 

I was under the impression that dma-ranges could describe this kind of
DMA addressing limitation. Was there some problem with that? Perhaps the
driver is not acquiring/configuring its mask correctly?

Thanks,
Mark.

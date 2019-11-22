From: Bjorn Helgaas <helgaas-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [BUG] rk3399-rockpro64 pcie synchronous external abort
Date: Fri, 22 Nov 2019 08:36:16 -0600
Message-ID: <20191122143616.GA215594@google.com>
References: <2a381384-9d47-a7e2-679c-780950cd862d@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <2a381384-9d47-a7e2-679c-780950cd862d-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Thu, Nov 21, 2019 at 10:03:27AM +0800, Shawn Lin wrote:
> From da9db487615c3687a0823c54d8d0790cbd4f79a2 Mon Sep 17 00:00:00 2001
> From: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> Date: Thu, 21 Nov 2019 09:45:12 +0800
> Subject: [PATCH] WFT: PCI: rockchip: play game with unsupported request from
>  EP
> 
> Native defect prevents this RC far from supporting any response
> from EP which UR filed is set. Take a big hammer to take over
> Serror handler and work around it.

Peter, now that you have a way to at least boot, can you collect the
output of "sudo lspci -vvxxx"?

When we're enumerating devices, we don't know ahead of time which
devices exist, so we try to read the Vendor ID for each *possible*
device.  If the device doesn't exist, that config read should be
terminated with an Unsupported Request completion (see the
implementation note at the end of PCIe r5.0, sec 2.3.2).  So far this
is all standard PCIe hardware behavior (and sorry if this is all
obvious).

Sec 6.2.5 and 6.2.6 show several configuration bits that affect how
that UR is handled and ultimately reported, possibly via SERR#.  In
most Linux systems, a UR completion does not cause an SERR#, but the
PCI core does not manage those configuration bits directly (it
probably *should* be more proactive about this), so this is more a
result of how platform firmware set them than anything else.

I'm speculating that you may have PCI_COMMAND_SERR and similar bits
set, which will cause SERR# in cases where we don't see SERR# on other
platforms.  Your lspci output should show this.

Bjorn

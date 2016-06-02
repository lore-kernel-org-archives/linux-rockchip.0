From: Arnd Bergmann <arnd-r2nGTMty4D4@public.gmane.org>
Subject: Re: [PATCH 1/3] pci: introduce read_bridge/write_bridge pci ops
Date: Thu, 02 Jun 2016 17:06:55 +0200
Message-ID: <3585926.N1C2xx3GaB@wuerfel>
References: <1464784332-3775650-1-git-send-email-arnd@arndb.de>
 <4967020.J4dsRYGugq@wuerfel> <20160602140001.GB8262@localhost>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20160602140001.GB8262@localhost>
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
Cc: Thomas Petazzoni <thomas.petazzoni-wi1+55ScJUtKEb57/3fJTNBPR1lH4CV8@public.gmane.org>, Pratyush Anand <pratyush.anand-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Wenrui Li <wenrui.li-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Alex Williamson <alex.williamson-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Hannes Reinecke <hare-l3A5Bk7waGM@public.gmane.org>, Jingoo Han <jingoohan1-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Thursday, June 2, 2016 9:00:01 AM CEST Bjorn Helgaas wrote:
> > I just did a count of the implementations of pci_ops: I found 107
> > instances of 'struct pci_ops', and 67 of them treat type0 and type1
> > access differently in some form.
> > 
> > I'd estimate that about half of them, or roughly a third of the total
> > instances would benefit from my change, if we were to do them again.
> > Clearly there is no need to change the existing code here when it works,
> > unless the benefit is very clear and the code is actively maintained.
> > 
> > In some cases, the difference is only that the root bus has a limited
> > set of devices that are allowed to be accessed, so there would
> > likely be no benefit of this, compared to e.g. yet another callback
> > that checks the validity.
> > Some other instances have type0 registers at a different memory location
> > from type1, some use different layout inside of that space, and some
> > are completely different.
> 
> The type0/type1 distinction still seems out of place to me at the call
> site.  Is there any other reason a caller would care about the
> difference between type0 and type1?

The callers really shouldn't care, but they also shouldn't call the
pci_ops function pointer (and as we found earlier, there are only
three such callers).

The distinction between type0 and type1 in my mind is an implementation
detail of the pci_{read,write}_config_{byte,word,dword} functions
that call the low-level operations here.

	Arnd

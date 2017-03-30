From: Bjorn Helgaas <helgaas-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH v2 3/5] PCI: rockchip: add remove() support
Date: Thu, 30 Mar 2017 18:28:25 -0500
Message-ID: <20170330232825.GB3912@bhelgaas-glaptop.roam.corp.google.com>
References: <20170310024617.67303-1-briannorris@chromium.org>
 <20170310024617.67303-3-briannorris@chromium.org>
 <20170324142541.GA25380@bhelgaas-glaptop.roam.corp.google.com>
 <20170324172218.GA119093@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20170324172218.GA119093-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Wenrui Li <wenrui.li-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Ray Jui <rjui-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>, Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Fri, Mar 24, 2017 at 10:22:19AM -0700, Brian Norris wrote:
> Hi Bjorn,
> 
> On Fri, Mar 24, 2017 at 09:25:41AM -0500, Bjorn Helgaas wrote:
> > On Thu, Mar 09, 2017 at 06:46:15PM -0800, Brian Norris wrote:
> > > Currently, if we try to unbind the platform device, the remove will
> > > succeed, but the removal won't undo most of the registration, leaving
> > > partially-configured PCI devices in the system.
> > > 
> > > This allows, for example, a simple 'lspci' to crash the system, as it
> > > will try to touch the freed (via devm_*) driver structures.
> > > 
> > > So let's implement device remove().
> > 
> > How exactly do you reproduce this problem?
> 
> On RK3399:
> 
>   # echo f8000000.pcie > /sys/bus/platform/drivers/rockchip-pcie/unbind
>   # lspci
> 
> > There are several other drivers that are superficially similar, e.g.,
> > they define a struct platform_driver without a .remove method.  Do
> > they all have this problem?  Some of them do set .suppress_bind_attrs
> > = true; is that relevant to this scenario?
> 
> Yes, I think .suppress_bind_attrs would be enough to prevent this,
> according to my reading of the code and comments:
> 
>  * @suppress_bind_attrs: Disables bind/unbind via sysfs.
> 
> > In fact, the only other callers of pci_remove_root_bus() are
> > iproc_pcie_remove(), hv_pci_remove(), and vmd_remove().
> 
> Then iProc would suffer from the same memory leak in
> of_pci_get_host_bridge_resources() [1]. It *would* suffer from the same
> domain allocation issues in of_pci_bus_find_domain_nr() ->
> pci_get_new_domain_nr() [2], except that all iProc device trees (in
> mainline at least) use the 'linux,pci-domain' property to avoid it.
> 
> HyperV and VMD drivers use ACPI, which uses neither
> pci_get_new_domain_nr() nor of_pci_get_host_bridge_resources().
> 
> > These don't have .remove:
> > 
> >   imx6_pcie_driver
> >   ls_pcie_driver
> >   armada8k_pcie_driver
> >   artpec6_pcie_driver
> >   dw_plat_pcie_driver
> >   hisi_pcie_driver
> >   hisi_pcie_almost_ecam_driver
> >   spear13xx_pcie_driver
> >   gen_pci_driver
> 
> I think these are all technically broken.

Can we fix them all at the same time as you fix Rockchip?  Maybe we
should have a series that adds ".suppress_bind_attrs = true" to all
these drivers, including Rockchip.  Then you could have this current 
series to make Rockchip modular on top, if there's still value in it.

If we find a common problem, I'd like to fix it everywhere we know
about so it doesn't get forgotten or copied to even more places.

> > These don't have .remove but do set .suppress_bind_attrs = true:
> > 
> >   dra7xx_pcie_driver
> >   qcom_pcie_driver
> >   advk_pcie_driver
> >   mvebu_pcie_driver
> >   rcar_pci_driver
> >   rcar_pcie_driver
> >   tegra_pcie_driver
> >   altera_pcie_driver
> >   nwl_pcie_driver
> >   xilinx_pcie_driver
> 
> Those are fine then, I suppose.
> 
> Brian
> 
> [1] PCI: return resource_entry in pci_add_resource helpers
>     https://patchwork.kernel.org/patch/9642229/
>     of/pci: Fix memory leak in of_pci_get_host_bridge_resources
>     https://patchwork.kernel.org/patch/9642231/
> 
> [2] PCI: use IDA to manage domain number if not getting it from DT
>     https://patchwork.kernel.org/patch/9638353/

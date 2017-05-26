From: Bjorn Helgaas <helgaas-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH] PCI: Make error code types consistent in
 pci_{read,write}_config_*
Date: Fri, 26 May 2017 16:40:24 -0500
Message-ID: <20170526214024.GC21531@bhelgaas-glaptop.roam.corp.google.com>
References: <1495177107-203736-1-git-send-email-shawn.lin@rock-chips.com>
 <20170523184359.GB115572@google.com>
 <20170523193655.GA144183@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20170523193655.GA144183-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
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
Cc: Wei Zhang <wzhang-b10kYP2dOMg@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Keith Busch <keith.busch-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Krishna Dhulipala <krishnad-b10kYP2dOMg@public.gmane.org>, Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, Christoph Hellwig <hch-jcswGhMUV9g@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Tue, May 23, 2017 at 12:36:58PM -0700, Brian Norris wrote:
> Callers normally treat the config space accessors as returning PCBIOS_*
> error codes, not Linux error codes (or they don't look at them at all).
> We have pcibios_err_to_errno(), in case the error code needs translated.
> 
> Fixes: 4b1038834739 ("PCI: Don't attempt config access to disconnected devices")
> Signed-off-by: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>

Applied with Keith's reviewed-by to for-linus for v4.12, thanks, Brian!

> ---
> + others, change subject
> 
> On Tue, May 23, 2017 at 11:44:01AM -0700, Brian Norris wrote:
> > But the high level code doesn't handle this
> > consistently. See, e.g., pci_read_config_byte() which can return regular
> > Linux error codes (like -ENODEV), except it also passes up the return
> > code of pci_read_config_byte() (a PCIBIOS_* code) directly.
> 
> Apparently this is new (inconsistent) behavior in 4.12-rc1. Seems like
> an oversight to me.
> 
> > So callers don't really know whether to treat the value from
> > pci_read_config_<foo>() as a PCIBIOS_* code (which should be translated
> > with pcibios_err_to_errno()) or as a standard Linux errno.
> > 
> > But then, there are relatively few callers (less than 10% of
> > pci_read_config_<foo>(); even fewer for writes) that actually check the
> > error codes...
> > 
> > Maybe the "fix" is to replace -ENODEV with PCIBIOS_DEVICE_NOT_FOUND for
> > the inconsistent cases (pci_{read,write}_config_{byte,word,dword}()).
> 
> Fix implemented in the surrounding patch.
> 
>  drivers/pci/access.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/pci/access.c b/drivers/pci/access.c
> index 74cf5fffb1e1..c80e37a69305 100644
> --- a/drivers/pci/access.c
> +++ b/drivers/pci/access.c
> @@ -896,7 +896,7 @@ int pci_read_config_byte(const struct pci_dev *dev, int where, u8 *val)
>  {
>  	if (pci_dev_is_disconnected(dev)) {
>  		*val = ~0;
> -		return -ENODEV;
> +		return PCIBIOS_DEVICE_NOT_FOUND;
>  	}
>  	return pci_bus_read_config_byte(dev->bus, dev->devfn, where, val);
>  }
> @@ -906,7 +906,7 @@ int pci_read_config_word(const struct pci_dev *dev, int where, u16 *val)
>  {
>  	if (pci_dev_is_disconnected(dev)) {
>  		*val = ~0;
> -		return -ENODEV;
> +		return PCIBIOS_DEVICE_NOT_FOUND;
>  	}
>  	return pci_bus_read_config_word(dev->bus, dev->devfn, where, val);
>  }
> @@ -917,7 +917,7 @@ int pci_read_config_dword(const struct pci_dev *dev, int where,
>  {
>  	if (pci_dev_is_disconnected(dev)) {
>  		*val = ~0;
> -		return -ENODEV;
> +		return PCIBIOS_DEVICE_NOT_FOUND;
>  	}
>  	return pci_bus_read_config_dword(dev->bus, dev->devfn, where, val);
>  }
> @@ -926,7 +926,7 @@ EXPORT_SYMBOL(pci_read_config_dword);
>  int pci_write_config_byte(const struct pci_dev *dev, int where, u8 val)
>  {
>  	if (pci_dev_is_disconnected(dev))
> -		return -ENODEV;
> +		return PCIBIOS_DEVICE_NOT_FOUND;
>  	return pci_bus_write_config_byte(dev->bus, dev->devfn, where, val);
>  }
>  EXPORT_SYMBOL(pci_write_config_byte);
> @@ -934,7 +934,7 @@ EXPORT_SYMBOL(pci_write_config_byte);
>  int pci_write_config_word(const struct pci_dev *dev, int where, u16 val)
>  {
>  	if (pci_dev_is_disconnected(dev))
> -		return -ENODEV;
> +		return PCIBIOS_DEVICE_NOT_FOUND;
>  	return pci_bus_write_config_word(dev->bus, dev->devfn, where, val);
>  }
>  EXPORT_SYMBOL(pci_write_config_word);
> @@ -943,7 +943,7 @@ int pci_write_config_dword(const struct pci_dev *dev, int where,
>  					 u32 val)
>  {
>  	if (pci_dev_is_disconnected(dev))
> -		return -ENODEV;
> +		return PCIBIOS_DEVICE_NOT_FOUND;
>  	return pci_bus_write_config_dword(dev->bus, dev->devfn, where, val);
>  }
>  EXPORT_SYMBOL(pci_write_config_dword);
> -- 
> 2.13.0.219.gdb65acc882-goog

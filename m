From: Srinath Mannam <srinath.mannam-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>
Subject: Re: [PATCH v3 23/25] PCI: iproc: Use inbound resources for setup
Date: Tue, 29 Oct 2019 21:29:35 +0530
Message-ID: <CABe79T4p-YJp7nNx0iyyx46PFWBC57H-2+VL=RM9rKK-X4qdFg@mail.gmail.com>
References: <20191028163256.8004-1-robh@kernel.org>
 <20191028163256.8004-24-robh@kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191028163256.8004-24-robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Karthikeyan Mitran <m.karthikeyan-DTHOJn6Rh8lhmhkoCovsdw@public.gmane.org>, linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Linus Walleij <linus.walleij-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, Matthias Brugger <matthias.bgg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Thomas Petazzoni <thomas.petazzoni-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, Toan Le <toan-shex6MNQR2J/SfDzf78azzKzEDxYleXD@public.gmane.org>, Will Deacon <will-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Lorenzo Pieralisi <lorenzo.pieralisi-5wv7dgnIgG8@public.gmane.org>, Michal Simek <michal.simek-gjFFaj9aHVfQT0dZR+AlfA@public.gmane.org>, Christoph Hellwig <hch-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, BCM Kernel Feedback <bcm-kernel-feedback-list-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Ray Jui <rjui-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>, Hou Zhiqiang <Zhiqiang.Hou-3arQi8VN3Tc@public.gmane.org>, Ryder Lee <ryder.lee-NuS5LvNUpcJWk0Htik3J/w@public.gmane.org>, linux-mediatek-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Andrew Murray <andrew.murray-5wv7dgnIgG8@public.gmane.org>, Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, Linux ARM <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Scott Branden <sbranden-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>J
List-Id: linux-rockchip.vger.kernel.org

Hi Rob,

I reviewed and verified this change.. It is working fine.

Regards,
Srinath.

On Mon, Oct 28, 2019 at 10:03 PM Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org> wrote:
>
> Now that the helpers provide the inbound resources in the host bridge
> 'dma_ranges' resource list, convert Broadcom iProc host bridge to use
> the resource list to setup the inbound addresses.
>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi-5wv7dgnIgG8@public.gmane.org>
> Cc: Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
> Cc: Ray Jui <rjui-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>
> Cc: Scott Branden <sbranden-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>
> Cc: bcm-kernel-feedback-list-dY08KVG/lbpWk0Htik3J/w@public.gmane.org
> Reviewed-by: Andrew Murray <andrew.murray-5wv7dgnIgG8@public.gmane.org>
> Signed-off-by: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
> ---
> v2:
>  - Fix iproc_pcie_paxb_v2_msi_steer() to use resource_entry
> ---
>  drivers/pci/controller/pcie-iproc.c | 77 +++++++----------------------
>  1 file changed, 17 insertions(+), 60 deletions(-)
>
> diff --git a/drivers/pci/controller/pcie-iproc.c b/drivers/pci/controller/pcie-iproc.c
> index 223335ee791a..f4d78e66846e 100644
> --- a/drivers/pci/controller/pcie-iproc.c
> +++ b/drivers/pci/controller/pcie-iproc.c
> @@ -1122,15 +1122,16 @@ static int iproc_pcie_ib_write(struct iproc_pcie *pcie, int region_idx,
>  }
>
>  static int iproc_pcie_setup_ib(struct iproc_pcie *pcie,
> -                              struct of_pci_range *range,
> +                              struct resource_entry *entry,
>                                enum iproc_pcie_ib_map_type type)
>  {
>         struct device *dev = pcie->dev;
>         struct iproc_pcie_ib *ib = &pcie->ib;
>         int ret;
>         unsigned int region_idx, size_idx;
> -       u64 axi_addr = range->cpu_addr, pci_addr = range->pci_addr;
> -       resource_size_t size = range->size;
> +       u64 axi_addr = entry->res->start;
> +       u64 pci_addr = entry->res->start - entry->offset;
> +       resource_size_t size = resource_size(entry->res);
>
>         /* iterate through all IARR mapping regions */
>         for (region_idx = 0; region_idx < ib->nr_regions; region_idx++) {
> @@ -1182,66 +1183,19 @@ static int iproc_pcie_setup_ib(struct iproc_pcie *pcie,
>         return ret;
>  }
>
> -static int iproc_pcie_add_dma_range(struct device *dev,
> -                                   struct list_head *resources,
> -                                   struct of_pci_range *range)
> -{
> -       struct resource *res;
> -       struct resource_entry *entry, *tmp;
> -       struct list_head *head = resources;
> -
> -       res = devm_kzalloc(dev, sizeof(struct resource), GFP_KERNEL);
> -       if (!res)
> -               return -ENOMEM;
> -
> -       resource_list_for_each_entry(tmp, resources) {
> -               if (tmp->res->start < range->cpu_addr)
> -                       head = &tmp->node;
> -       }
> -
> -       res->start = range->cpu_addr;
> -       res->end = res->start + range->size - 1;
> -
> -       entry = resource_list_create_entry(res, 0);
> -       if (!entry)
> -               return -ENOMEM;
> -
> -       entry->offset = res->start - range->cpu_addr;
> -       resource_list_add(entry, head);
> -
> -       return 0;
> -}
> -
>  static int iproc_pcie_map_dma_ranges(struct iproc_pcie *pcie)
>  {
>         struct pci_host_bridge *host = pci_host_bridge_from_priv(pcie);
> -       struct of_pci_range range;
> -       struct of_pci_range_parser parser;
> -       int ret;
> -       LIST_HEAD(resources);
> -
> -       /* Get the dma-ranges from DT */
> -       ret = of_pci_dma_range_parser_init(&parser, pcie->dev->of_node);
> -       if (ret)
> -               return ret;
> +       struct resource_entry *entry;
> +       int ret = 0;
>
> -       for_each_of_pci_range(&parser, &range) {
> -               ret = iproc_pcie_add_dma_range(pcie->dev,
> -                                              &resources,
> -                                              &range);
> -               if (ret)
> -                       goto out;
> +       resource_list_for_each_entry(entry, &host->dma_ranges) {
>                 /* Each range entry corresponds to an inbound mapping region */
> -               ret = iproc_pcie_setup_ib(pcie, &range, IPROC_PCIE_IB_MAP_MEM);
> +               ret = iproc_pcie_setup_ib(pcie, entry, IPROC_PCIE_IB_MAP_MEM);
>                 if (ret)
> -                       goto out;
> +                       break;
>         }
>
> -       list_splice_init(&resources, &host->dma_ranges);
> -
> -       return 0;
> -out:
> -       pci_free_resource_list(&resources);
>         return ret;
>  }
>
> @@ -1276,13 +1230,16 @@ static int iproce_pcie_get_msi(struct iproc_pcie *pcie,
>  static int iproc_pcie_paxb_v2_msi_steer(struct iproc_pcie *pcie, u64 msi_addr)
>  {
>         int ret;
> -       struct of_pci_range range;
> +       struct resource_entry entry;
> +
> +       memset(&entry, 0, sizeof(entry));
> +       entry.res = &entry.__res;
>
> -       memset(&range, 0, sizeof(range));
> -       range.size = SZ_32K;
> -       range.pci_addr = range.cpu_addr = msi_addr & ~(range.size - 1);
> +       msi_addr &= ~(SZ_32K - 1);
> +       entry.res->start = msi_addr;
> +       entry.res->end = msi_addr + SZ_32K - 1;
>
> -       ret = iproc_pcie_setup_ib(pcie, &range, IPROC_PCIE_IB_MAP_IO);
> +       ret = iproc_pcie_setup_ib(pcie, &entry, IPROC_PCIE_IB_MAP_IO);
>         return ret;
>  }
>
> --
> 2.20.1
>

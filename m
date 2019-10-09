From: Enric Balletbo Serra <eballetbo@gmail.com>
Subject: Re: [PATCH] iommu/rockchip: don't use platform_get_irq to implicitly
 count irqs
Date: Wed, 9 Oct 2019 10:22:02 +0200
Message-ID: <CAFqH_53xE7fH-Mf0_qokamUCBNDedadSLQa=uxiP_v7TW7DPfw@mail.gmail.com>
References: <20190925184346.14121-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190925184346.14121-1-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: Joerg Roedel <joro@8bytes.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, iommu@lists.linux-foundation.org, linux-kernel <linux-kernel@vger.kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

Missatge de Heiko Stuebner <heiko@sntech.de> del dia dc., 25 de set.
2019 a les 20:44:
>
> Till now the Rockchip iommu driver walked through the irq list via
> platform_get_irq() until it encountered an ENXIO error. With the
> recent change to add a central error message, this always results
> in such an error for each iommu on probe and shutdown.
>
> To not confuse people, switch to platform_count_irqs() to get the
> actual number of interrupts before walking through them.
>
> Fixes: 7723f4c5ecdb ("driver core: platform: Add an error message to platform_get_irq*()")
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---

This patch definitely removes the annoying messages on my Samsung
Chromebook Plus like:

 rk_iommu ff924000.iommu: IRQ index 1 not found
 rk_iommu ff914000.iommu: IRQ index 1 not found
 rk_iommu ff903f00.iommu: IRQ index 1 not found
 rk_iommu ff8f3f00.iommu: IRQ index 1 not found
 rk_iommu ff650800.iommu: IRQ index 1 not found

FWIW, I sent a similar patch [1] to fix this, but can be rejected in
favour of the Heiko's patch. So,

Tested-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>

Thanks,
 Enric

[1] https://lkml.org/lkml/2019/10/8/551

>  drivers/iommu/rockchip-iommu.c | 19 ++++++++++++++-----
>  1 file changed, 14 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
> index 26290f310f90..4dcbf68dfda4 100644
> --- a/drivers/iommu/rockchip-iommu.c
> +++ b/drivers/iommu/rockchip-iommu.c
> @@ -100,6 +100,7 @@ struct rk_iommu {
>         struct device *dev;
>         void __iomem **bases;
>         int num_mmu;
> +       int num_irq;
>         struct clk_bulk_data *clocks;
>         int num_clocks;
>         bool reset_disabled;
> @@ -1136,7 +1137,7 @@ static int rk_iommu_probe(struct platform_device *pdev)
>         struct rk_iommu *iommu;
>         struct resource *res;
>         int num_res = pdev->num_resources;
> -       int err, i, irq;
> +       int err, i;
>
>         iommu = devm_kzalloc(dev, sizeof(*iommu), GFP_KERNEL);
>         if (!iommu)
> @@ -1163,6 +1164,10 @@ static int rk_iommu_probe(struct platform_device *pdev)
>         if (iommu->num_mmu == 0)
>                 return PTR_ERR(iommu->bases[0]);
>
> +       iommu->num_irq = platform_irq_count(pdev);
> +       if (iommu->num_irq < 0)
> +               return iommu->num_irq;
> +
>         iommu->reset_disabled = device_property_read_bool(dev,
>                                         "rockchip,disable-mmu-reset");
>
> @@ -1219,8 +1224,9 @@ static int rk_iommu_probe(struct platform_device *pdev)
>
>         pm_runtime_enable(dev);
>
> -       i = 0;
> -       while ((irq = platform_get_irq(pdev, i++)) != -ENXIO) {
> +       for (i = 0; i < iommu->num_irq; i++) {
> +               int irq = platform_get_irq(pdev, i);
> +
>                 if (irq < 0)
>                         return irq;
>
> @@ -1245,10 +1251,13 @@ static int rk_iommu_probe(struct platform_device *pdev)
>  static void rk_iommu_shutdown(struct platform_device *pdev)
>  {
>         struct rk_iommu *iommu = platform_get_drvdata(pdev);
> -       int i = 0, irq;
> +       int i;
> +
> +       for (i = 0; i < iommu->num_irq; i++) {
> +               int irq = platform_get_irq(pdev, i);
>
> -       while ((irq = platform_get_irq(pdev, i++)) != -ENXIO)
>                 devm_free_irq(iommu->dev, irq, iommu);
> +       }
>
>         pm_runtime_force_suspend(&pdev->dev);
>  }
> --
> 2.23.0
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

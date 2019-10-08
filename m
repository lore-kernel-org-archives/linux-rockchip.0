From: Enric Balletbo Serra <eballetbo@gmail.com>
Subject: Re: [PATCH] iommu/rockchip: Don't loop until failure to count interrupts
Date: Tue, 8 Oct 2019 22:21:39 +0200
Message-ID: <CAFqH_50xbB-+zEffHYPt+NPCVAikQpcWc_uxbkA0a6ppT5OJQA@mail.gmail.com>
References: <20191008135843.30640-1-enric.balletbo@collabora.com> <3132916.nyj3dfveGU@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <3132916.nyj3dfveGU@diego>
Sender: linux-kernel-owner@vger.kernel.org
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>, Joerg Roedel <joro@8bytes.org>, linux-kernel <linux-kernel@vger.kernel.org>, Doug Anderson <dianders@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, iommu@lists.linux-foundation.org, Matthias Kaehlcke <mka@chromium.org>, Guenter Roeck <groeck@chromium.org>, Collabora Kernel ML <kernel@collabora.com>, Benson Leung <bleung@chromium.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko,

Missatge de Heiko St=C3=BCbner <heiko@sntech.de> del dia dt., 8 d=E2=80=99o=
ct. 2019
a les 19:58:
>
> Hi Enric,
>
> Am Dienstag, 8. Oktober 2019, 15:58:43 CEST schrieb Enric Balletbo i Serr=
a:
> > As platform_get_irq() now prints an error when the interrupt does not
> > exist, counting interrupts by looping until failure causes the printing
> > of scary messages like:
> >
> >  rk_iommu ff924000.iommu: IRQ index 1 not found
> >  rk_iommu ff914000.iommu: IRQ index 1 not found
> >  rk_iommu ff903f00.iommu: IRQ index 1 not found
> >  rk_iommu ff8f3f00.iommu: IRQ index 1 not found
> >  rk_iommu ff650800.iommu: IRQ index 1 not found
> >
> > Fix this by using the platform_irq_count() helper to avoid touching
> > non-existent interrupts.
>
> It looks like we did the same fix ... see my patch from september 25:
> https://patchwork.kernel.org/patch/11161221/
>

How in the hell I didn't catch this patch! Anyway, forget about this
patch then, sorry for the noise.

Thanks,
 Enric

>
> > Fixes: 7723f4c5ecdb8d83 ("driver core: platform: Add an error message t=
o platform_get_irq*()")
> > Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> > ---
> >
> >  drivers/iommu/rockchip-iommu.c | 35 +++++++++++++++++++++++-----------
> >  1 file changed, 24 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-io=
mmu.c
> > index 26290f310f90..8c6318bd1b37 100644
> > --- a/drivers/iommu/rockchip-iommu.c
> > +++ b/drivers/iommu/rockchip-iommu.c
> > @@ -1136,7 +1136,7 @@ static int rk_iommu_probe(struct platform_device =
*pdev)
> >       struct rk_iommu *iommu;
> >       struct resource *res;
> >       int num_res =3D pdev->num_resources;
> > -     int err, i, irq;
> > +     int err, i, irq, num_irqs;
> >
> >       iommu =3D devm_kzalloc(dev, sizeof(*iommu), GFP_KERNEL);
> >       if (!iommu)
> > @@ -1219,20 +1219,28 @@ static int rk_iommu_probe(struct platform_devic=
e *pdev)
> >
> >       pm_runtime_enable(dev);
> >
> > -     i =3D 0;
> > -     while ((irq =3D platform_get_irq(pdev, i++)) !=3D -ENXIO) {
> > -             if (irq < 0)
> > -                     return irq;
> > +     num_irqs =3D platform_irq_count(pdev);
> > +     if (num_irqs < 0) {
> > +             err =3D num_irqs;
> > +             goto err_disable_pm_runtime;
> > +     }
>
> By moving the basic irq count above the pm_runtime_enable
> you save some lines and the whole goto logic ... see my patch
> for reference :-D
>
> Heiko
>
> > +
> > +     for (i =3D 0; i < num_irqs; i++) {
> > +             irq =3D platform_get_irq(pdev, i);
> > +             if (irq < 0) {
> > +                     err =3D irq;
> > +                     goto err_disable_pm_runtime;
> > +             }
> >
> >               err =3D devm_request_irq(iommu->dev, irq, rk_iommu_irq,
> >                                      IRQF_SHARED, dev_name(dev), iommu)=
;
> > -             if (err) {
> > -                     pm_runtime_disable(dev);
> > -                     goto err_remove_sysfs;
> > -             }
> > +             if (err)
> > +                     goto err_disable_pm_runtime;
> >       }
> >
> >       return 0;
> > +err_disable_pm_runtime:
> > +     pm_runtime_disable(dev);
> >  err_remove_sysfs:
> >       iommu_device_sysfs_remove(&iommu->iommu);
> >  err_put_group:
> > @@ -1245,10 +1253,15 @@ static int rk_iommu_probe(struct platform_devic=
e *pdev)
> >  static void rk_iommu_shutdown(struct platform_device *pdev)
> >  {
> >       struct rk_iommu *iommu =3D platform_get_drvdata(pdev);
> > -     int i =3D 0, irq;
> > +     int i, irq, num_irqs;
> >
> > -     while ((irq =3D platform_get_irq(pdev, i++)) !=3D -ENXIO)
> > +     num_irqs =3D platform_irq_count(pdev);
> > +     for (i =3D 0; i < num_irqs; i++) {
> > +             irq =3D platform_get_irq(pdev, i);
> > +             if (irq < 0)
> > +                     continue;
> >               devm_free_irq(iommu->dev, irq, iommu);
> > +     }
> >
> >       pm_runtime_force_suspend(&pdev->dev);
> >  }
> >
>
>
>
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

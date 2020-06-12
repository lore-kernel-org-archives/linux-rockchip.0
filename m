From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: Re: [PATCH v3] mmc: sdhci: Fix HISPD bit handling
Date: Fri, 12 Jun 2020 12:21:12 +0530
Message-ID: <CAMty3ZBrY+rzFfNw=o7T-YBP49MoPAF55rgro8-Eo=QcL01jsg@mail.gmail.com>
References: <CGME20200610114402epcas1p279b1c47dc902904c44d39d50c8e169e8@epcas1p2.samsung.com>
 <20200610114347.118501-1-jagan@amarulasolutions.com>
 <8c7edc3c-2876-f407-86a5-708a0164db1d@samsung.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <8c7edc3c-2876-f407-86a5-708a0164db1d-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Jaehoon Chung <jh80.chung-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
Cc: Peng Fan <peng.fan-3arQi8VN3Tc@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Marc Zyngier <maz-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, U-Boot-Denx <u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org>, Suniel Mahesh <sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, linux-amarula <linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Wed, Jun 10, 2020 at 5:36 PM Jaehoon Chung <jh80.chung-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org> wrote:
>
> Hi Jagan,
>
> On 6/10/20 8:43 PM, Jagan Teki wrote:
> > SDHCI HISPD bits need to be configured based on desired mmc
> > timings mode and some HISPD quirks.
> >
> > So, handle the HISPD bit based on the mmc computed selected
> > mode(timing parameter) rather than fixed mmc card clock
> > frequency.
> >
> > Linux handle the HISPD similar like this in below commit,
> >
> > commit <501639bf2173> ("mmc: sdhci: fix SDHCI_QUIRK_NO_HISPD_BIT handling")
> >
> > This eventually fixed the mmc write issue observed in
> > rk3399 sdhci controller.
> >
> > Bug log for refernece,
> > => gpt write mmc 0 $partitions
> > Writing GPT: mmc write failed
> > ** Can't write to device 0 **
> > ** Can't write to device 0 **
> > error!
> >
> > Cc: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
> > Cc: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> > Cc: Peng Fan <peng.fan-3arQi8VN3Tc@public.gmane.org>
> > Reviewed-by: Jaehoon Chung <jh80.chung-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
> > Tested-by: Marc Zyngier <maz-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org> # nanopc-t4
> > Tested-by: Suniel Mahesh <sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org> # roc-rk3399-pc
> > Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
> > ---
> > Changes for v3:
> > - use && for quirk check.
> >
> >  drivers/mmc/sdhci.c | 23 +++++++++++++++--------
> >  1 file changed, 15 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/mmc/sdhci.c b/drivers/mmc/sdhci.c
> > index 92cc8434af..a7db278a0e 100644
> > --- a/drivers/mmc/sdhci.c
> > +++ b/drivers/mmc/sdhci.c
> > @@ -594,14 +594,21 @@ static int sdhci_set_ios(struct mmc *mmc)
> >                       ctrl &= ~SDHCI_CTRL_4BITBUS;
> >       }
> >
> > -     if (mmc->clock > 26000000)
> > -             ctrl |= SDHCI_CTRL_HISPD;
> > -     else
> > -             ctrl &= ~SDHCI_CTRL_HISPD;
> > -
> > -     if ((host->quirks & SDHCI_QUIRK_NO_HISPD_BIT) ||
> > -         (host->quirks & SDHCI_QUIRK_BROKEN_HISPD_MODE))
> > -             ctrl &= ~SDHCI_CTRL_HISPD;
> > +     if (!(host->quirks & SDHCI_QUIRK_NO_HISPD_BIT) &&
> > +         !(host->quirks & SDHCI_QUIRK_BROKEN_HISPD_MODE)) {
>
> Sorry, it needs to check more. Because it's different with kernel code.
> Kernel code is only checking condition about SDHCI_QUIRK_NO_HISPD_BIT.
> but in u-boot, one more checking about SDHCI_QUIRK_BROKEN_HISPD_MODE.
>
> So if it doesn't set to both, it's possible to set SDHCI_CTRL_HISPD as ctrl's flags.
>
> > +             if (mmc->selected_mode == MMC_HS ||
> > +                 mmc->selected_mode == SD_HS ||
> > +                 mmc->selected_mode == MMC_DDR_52 ||
> > +                 mmc->selected_mode == MMC_HS_200 ||
> > +                 mmc->selected_mode == MMC_HS_400 ||
> > +                 mmc->selected_mode == UHS_SDR25 ||
> > +                 mmc->selected_mode == UHS_SDR50 ||
> > +                 mmc->selected_mode == UHS_SDR104 ||
> > +                 mmc->selected_mode == UHS_DDR50)
> > +                     ctrl |= SDHCI_CTRL_HISPD;
> > +             else
> > +                     ctrl &= ~SDHCI_CTRL_HISPD;
> > +     }
> >
> I think that needs to add at here
>          else
>                 ctrl &= ~SDHCI_CTRL_HISPD;

Okay, Can you look at this logic?

--- a/drivers/mmc/sdhci.c
+++ b/drivers/mmc/sdhci.c
@@ -567,6 +567,7 @@ static int sdhci_set_ios(struct mmc *mmc)
 #endif
        u32 ctrl;
        struct sdhci_host *host = mmc->priv;
+       bool no_hispd_bit = false;

        if (host->ops && host->ops->set_control_reg)
                host->ops->set_control_reg(host);
@@ -594,13 +595,16 @@ static int sdhci_set_ios(struct mmc *mmc)
                        ctrl &= ~SDHCI_CTRL_4BITBUS;
        }

-       if (mmc->clock > 26000000)
-               ctrl |= SDHCI_CTRL_HISPD;
-       else
-               ctrl &= ~SDHCI_CTRL_HISPD;
-
        if ((host->quirks & SDHCI_QUIRK_NO_HISPD_BIT) ||
            (host->quirks & SDHCI_QUIRK_BROKEN_HISPD_MODE))
+               no_hispd_bit = true;
+
+       if (((mmc->selected_mode != MMC_LEGACY) ||
+             (mmc->selected_mode != MMC_HS_52) ||
+             (mmc->selected_mode != UHS_SDR12) ||
+             (mmc->selected_mode != MMC_HS_400_ES)) && !no_hispd_bit)
+               ctrl |= SDHCI_CTRL_HISPD;
+       else
                ctrl &= ~SDHCI_CTRL_HISPD;

        sdhci_writeb(host, ctrl, SDHCI_HOST_CONTROL);

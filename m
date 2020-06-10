From: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v2] mmc: sdhci: Fix HISPD bit handling
Date: Wed, 10 Jun 2020 17:14:26 +0530
Message-ID: <CAMty3ZAFB8twYFa7qUtQSYDQ-=C63-kaq9ezmy1bebE3WZbv6A@mail.gmail.com>
References: <20200609140135.131887-1-jagan@amarulasolutions.com>
 <097786ed-37ca-cf20-35f4-20a57e6c3b63@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <097786ed-37ca-cf20-35f4-20a57e6c3b63@arm.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Robin Murphy <robin.murphy@arm.com>
Cc: Peng Fan <peng.fan@nxp.com>, Jaehoon Chung <jh80.chung@samsung.com>, Kever Yang <kever.yang@rock-chips.com>, U-Boot-Denx <u-boot@lists.denx.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-amarula <linux-amarula@amarulasolutions.com>, Suniel Mahesh <sunil@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

On Tue, Jun 9, 2020 at 8:08 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2020-06-09 15:01, Jagan Teki wrote:
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
> > Cc: Kever Yang <kever.yang@rock-chips.com>
> > Cc: Peng Fan <peng.fan@nxp.com>
> > Reviewed-by: Jaehoon Chung <jh80.chung@samsung.com>
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> > Changes for v2:
> > - collect Jaehoon R-b
> >
> >   drivers/mmc/sdhci.c | 23 +++++++++++++++--------
> >   1 file changed, 15 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/mmc/sdhci.c b/drivers/mmc/sdhci.c
> > index 92cc8434af..280b8c88eb 100644
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
> > +     if (!(host->quirks & SDHCI_QUIRK_NO_HISPD_BIT) ||
>
> Should that be "&&" rather than "||"? Otherwise this will always
> evaluate to true unless *both* quirks are set, which isn't equivalent to
> the check being removed above.

Correct, thanks for the catch. I have updated ib v3.

Jagan.

From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: Re: [PATCH v2 8/8] rockchip: Enable PCIe/M.2 on rock960 board
Date: Sat, 9 May 2020 22:16:53 +0530
Message-ID: <CAMty3ZCsW+XnT7NHh08N8FpTx4XYPnH0_9K_6PbMqG50xAp2vw@mail.gmail.com>
References: <20200430070412.12499-1-jagan@amarulasolutions.com>
 <20200430070412.12499-9-jagan@amarulasolutions.com>
 <20200503133944.GA28003@Mani-XPS-13-9360>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200503133944.GA28003@Mani-XPS-13-9360>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Manivannan Sadhasivam <manivannan.sadhasivam-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
Cc: Patrick Wildt <patrick-Er2xLVyhcs+zQB+pC5nmwQ@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Tom Cubie <tom-jhlD/3HTYFgAvxtiuMwx3w@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, U-Boot-Denx <u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org>, Peter Robinson <pbrobinson-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Suniel Mahesh <sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, linux-amarula <linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Sun, May 3, 2020 at 7:09 PM Manivannan Sadhasivam
<manivannan.sadhasivam-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org> wrote:
>
> On Thu, Apr 30, 2020 at 12:34:12PM +0530, Jagan Teki wrote:
> > Due to some on board limitation rock960 PCIe
> > works only with 1.8V IO domain.
> >
> > So, this patch enables grf io_sel explicitly
> > to make PCIe/M.2 to work.
> >
> > Cc: Tom Cubie <tom-jhlD/3HTYFgAvxtiuMwx3w@public.gmane.org>
> > Cc: Manivannan Sadhasivam <manivannan.sadhasivam-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
> > Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
> > ---
> > Changes for v2:
> > - none
> >
> >  board/vamrs/rock960_rk3399/rock960-rk3399.c | 20 ++++++++++++++++++++
> >  configs/rock960-rk3399_defconfig            |  5 +++++
> >  2 files changed, 25 insertions(+)
> >
> > diff --git a/board/vamrs/rock960_rk3399/rock960-rk3399.c b/board/vamrs/rock960_rk3399/rock960-rk3399.c
> > index 68a127b9ac..98d62e89ca 100644
> > --- a/board/vamrs/rock960_rk3399/rock960-rk3399.c
> > +++ b/board/vamrs/rock960_rk3399/rock960-rk3399.c
> > @@ -2,3 +2,23 @@
> >  /*
> >   * Copyright (C) 2018 Manivannan Sadhasivam <manivannan.sadhasivam-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
> >   */
> > +
> > +#include <common.h>
> > +#include <syscon.h>
> > +#include <asm/io.h>
> > +#include <asm/arch-rockchip/clock.h>
> > +#include <asm/arch-rockchip/grf_rk3399.h>
> > +#include <asm/arch-rockchip/hardware.h>
> > +
> > +#ifdef CONFIG_MISC_INIT_R
> > +int misc_init_r(void)
> > +{
> > +     struct rk3399_grf_regs *grf =
> > +         syscon_get_first_range(ROCKCHIP_SYSCON_GRF);
> > +
> > +     /* BT565 is in 1.8v domain */
>
> From where this BT565 comes in?

If my understanding was correct, some SSD's to work on this board do
require this explicit domain voltage change. Usually it requires GPIO
enablement followed by grf voltage domain update [1] but in my case it
worked w/o gpio.

Maybe I will update this details in the commit message and also in the code.

[1] https://github.com/radxa/u-boot/blob/stable-4.4-rockpi4/board/rockchip/evb_rk3399/evb-rk3399.c#L194

Jagan.

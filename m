From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: Re: [PATCH v6 03/13] Kconfig: Add default SPL_FIT_GENERATOR for
 rockchip
Date: Tue, 7 May 2019 12:12:23 +0530
Message-ID: <CAMty3ZCadSyo+DdYSjcOgeUVWBEZZgST5_cr4dXeMUZ8mZe=yw@mail.gmail.com>
References: <20190427114852.7608-1-jagan@amarulasolutions.com>
 <20190427114852.7608-4-jagan@amarulasolutions.com>
 <7bd53b02-2a0f-d242-31bc-2baba0a69405@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <7bd53b02-2a0f-d242-31bc-2baba0a69405-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: Tom Rini <trini-OWPKS81ov/FWk0Htik3J/w@public.gmane.org>, U-Boot-Denx <u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Klaus Goger <klaus.goger-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>, Manivannan Sadhasivam <manivannan.sadhasivam-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, linux-amarula <linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Kever,

On Tue, May 7, 2019 at 9:36 AM Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org> wrote:
>
> Hi Jagan,
>
>
> On 04/27/2019 07:48 PM, Jagan Teki wrote:
> > Add default SPL_FIT_GENERATOR py script for rockchip platforms if
> > specific target enabled SPL_LOAD_FIT.
> >
> > So, this would help get rid of explicitly mentioning the default
> > SPL FIT generator in defconfigs. however some targets, like puma_rk3399
> > still require their own FIT generator so in those cases the default will
> > override with defconfig defined generator.
> >
> > Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
> > Reviewed-by: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
> > ---
> >  Kconfig                          | 1 +
> >  configs/chromebook_bob_defconfig | 1 -
> >  configs/evb-rk3399_defconfig     | 1 -
> >  configs/ficus-rk3399_defconfig   | 1 -
> >  configs/firefly-rk3399_defconfig | 1 -
> >  configs/rock960-rk3399_defconfig | 1 -
> >  6 files changed, 1 insertion(+), 5 deletions(-)
> >
> > diff --git a/Kconfig b/Kconfig
> > index 305b265ed7..5679a288ec 100644
> > --- a/Kconfig
> > +++ b/Kconfig
> > @@ -424,6 +424,7 @@ config SPL_FIT_GENERATOR
> >       string ".its file generator script for U-Boot FIT image"
> >       depends on SPL_FIT
> >       default "board/sunxi/mksunxi_fit_atf.sh" if SPL_LOAD_FIT && ARCH_SUNXI
> > +     default "arch/arm/mach-rockchip/make_fit_atf.py" if SPL_LOAD_FIT && ARCH_ROCKCHIP
>
> What happens to puma-rk3399 board with this patch? For it use dedicate
> its file now.
> configs/puma-rk3399_defconfig
> CONFIG_SPL_FIT_SOURCE="board/theobroma-systems/puma_rk3399/fit_spl_atf.its"

It replaced with defined .fit in puma, atleast I've tested the build.

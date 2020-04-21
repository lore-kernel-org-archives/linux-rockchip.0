From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH 2/3] phy-rockchip-dphy-rx0: Drop unneeded CONFIG_OF
 dependency
Date: Tue, 21 Apr 2020 00:55:21 -0300
Message-ID: <b7af1fd261a54527be2ea2ab2656756f15452732.camel@collabora.com>
References: <20200401213721.24173-1-ezequiel@collabora.com>
         <20200401213721.24173-3-ezequiel@collabora.com>
         <7ced1203-cdea-ad26-f46b-8873bfb85043@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <7ced1203-cdea-ad26-f46b-8873bfb85043@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Helen Koike <helen.koike@collabora.com>, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: kernel@collabora.com, Hans Verkuil <hverkuil@xs4all.nl>
List-Id: linux-rockchip.vger.kernel.org

On Thu, 2020-04-02 at 10:59 -0300, Helen Koike wrote:
> 
> On 4/1/20 6:37 PM, Ezequiel Garcia wrote:
> > The driver is perfectly capable of being built without CONFIG_OF.
> > Remove this dependency, which is useful for compile-only tests.
> > 
> > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> 
> Acked-by: Helen Koike <helen.koike@collabora.com>
> 
> > ---
> >  drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig b/drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig
> > index bd0147624de1..fb74df829371 100644
> > --- a/drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig
> > +++ b/drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig
> > @@ -2,7 +2,7 @@
> >  
> >  config PHY_ROCKCHIP_DPHY_RX0
> >  	tristate "Rockchip MIPI Synopsys DPHY RX0 driver"
> > -	depends on (ARCH_ROCKCHIP || COMPILE_TEST) && OF
> > +	depends on ARCH_ROCKCHIP || COMPILE_TEST

After discussing other similar patches, I'm starting to
think this was a bad idea.

Instead, we want to do have (ARCH_ROCKCHIP && OF) || COMPILE_TEST
as the other Rockchip PHYs.

Thanks,
Ezequiel

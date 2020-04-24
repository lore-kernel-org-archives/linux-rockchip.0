From: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: Re: [PATCH v2 3/4] media: rockchip: rga: Add support for the PX30
 compatible
Date: Fri, 24 Apr 2020 11:34:59 -0300
Message-ID: <ad0310d6618cd8cd8a88c0eaf27ae83432a61344.camel@collabora.com>
References: <20200423200937.1039257-1-paul.kocialkowski@bootlin.com>
         <20200423200937.1039257-4-paul.kocialkowski@bootlin.com>
         <cf31ae67792aedf60ee4cf8002861edadc305314.camel@collabora.com>
         <20200424135552.GI610776@aptenodytes>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200424135552.GI610776@aptenodytes>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
Cc: linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Mauro Carvalho Chehab <mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Hans Verkuil <hansverk-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, justin.swartz-4mSLLtuPuFdOJuVFMUvaKw@public.gmane.org, Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Thomas Petazzoni <thomas.petazzoni-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Fri, 2020-04-24 at 15:55 +0200, Paul Kocialkowski wrote:
> Hi Ezequiel,
> 
> On Fri 24 Apr 20, 09:54, Ezequiel Garcia wrote:
> > Hey Paul,
> > 
> > Thanks for the patch!
> > 
> > On Thu, 2020-04-23 at 22:09 +0200, Paul Kocialkowski wrote:
> > > The PX30 SoC has a RGA block, so add the associated compatible to
> > > support it.
> > > 
> > > Signed-off-by: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
> > > ---
> > >  drivers/media/platform/rockchip/rga/rga.c | 3 +++
> > >  1 file changed, 3 insertions(+)
> > > 
> > > diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
> > > index 9d122429706e..4fb4615662b7 100644
> > > --- a/drivers/media/platform/rockchip/rga/rga.c
> > > +++ b/drivers/media/platform/rockchip/rga/rga.c
> > > @@ -955,6 +955,9 @@ static const struct dev_pm_ops rga_pm = {
> > >  };
> > >  
> > >  static const struct of_device_id rockchip_rga_match[] = {
> > > +	{
> > > +		.compatible = "rockchip,px30-rga",
> > > +	},
> > 
> > Please note that if you don't have anything px30-specific,
> > then you don't need the compatible in the driver.
> > 
> > You can have something like:
> > 
> > compatible = "rockchip,px30-rga", "rockchip,rk3288-rga"
> > 
> > so you need to add it to the bindings. See Justin Swartz
> > recent patches for rk3228.
> 
> Thanks for the instruction!
> 
> I've been a bit confused about that because RK3399 has its own compatible
> (without a 2nd rk3288 compatible) although there's nothing different with it
> either. All of these rockchip platforms come with what they call "RGA2", that
> seems to have no variation across platforms (downstream rockchip even has a
> single compatible for it).
> 

Yep, and that's an anti pattern, so you can expect to see that elsewhere.

> Should we add the rk3288 compatible to the rk3399 dtsi? I guess we
> can't remove it from the driver at this point, for backward compatibility
> with previous dts (what a strange idea...).
> 

No, we don't necesarily need/have to do anything with rk3399,
not sure if there's any gain at this point.

> > Down the road, if you find something specific for px30,
> > you can make the driver aware. 
> 
> Makes sense, yes.
> 

Cool.

Thanks,
Ezequiel

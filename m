From: Adrian Ratiu <adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: Re: [PATCH v5 4/5] drm: imx: Add i.MX 6 MIPI DSI host platform driver
Date: Tue, 31 Mar 2020 10:19:00 +0300
Message-ID: <874ku52dqz.fsf@collabora.com>
References: <20200330113542.181752-1-adrian.ratiu@collabora.com>
 <20200330113542.181752-5-adrian.ratiu@collabora.com>
 <CAOMZO5CEZSBfhb9xAdf=sDhUnmSeuWSsnUQArz=a1TPzytLAeQ@mail.gmail.com>
 <4a9d2d6e5cecbe296c14119d27a8793a7dbed7b2.camel@collabora.com>
 <877dz134xf.fsf@collabora.com>
 <246bf7c71620021258355c2fc32dd38ac6b0cc45.camel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; format=flowed
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <246bf7c71620021258355c2fc32dd38ac6b0cc45.camel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jernej Skrabec <jernej.skrabec-gGgVlfcn5nU@public.gmane.org>, Sjoerd Simons <sjoerd.simons-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Andrzej Hajda <a.hajda-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, Martyn Welch <martyn.welch-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, DRI mailing list <dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org>, Emil Velikov <emil.velikov-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, NXP Linux Team <linux-imx-3arQi8VN3Tc@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, linux-stm32-XDFAJ8BFU24N7RejjzZ/Li2xQDfSxrLKVpNB7YpNyf8@public.gmane.org, "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Laurent Pinchart <Laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>, Fabio Estevam <festevam-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Tue, 31 Mar 2020, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> 
wrote:
> On Tue, 2020-03-31 at 00:31 +0300, Adrian Ratiu wrote: 
>> On Mon, 30 Mar 2020, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> 
>> wrote: 
>> > Hello Fabio, Adrian:   On Mon, 2020-03-30 at 08:49 -0300, 
>> > Fabio Estevam wrote:  
>> > > Hi Adrian,  On Mon, Mar 30, 2020 at 8:34 AM Adrian Ratiu 
>> > > <adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> wrote:  
>> > > > This adds support for the Synopsis DesignWare MIPI DSI 
>> > > > v1.01  host controller which is embedded in i.MX 6 SoCs. 
>> > > > Based on  following patches, but updated/extended to work 
>> > > > with existing  support found in the kernel:  - drm: imx: 
>> > > > Support Synopsys  DesignWare MIPI DSI host controller  
>> > > >   Signed-off-by: Liu Ying <Ying.Liu-KZfg59tc24xl57MIdRCFDg@public.gmane.org>  
>> > > >  - ARM: dtsi: imx6qdl: Add support for MIPI DSI host  
>> > > > controller  
>> > > >   Signed-off-by: Liu Ying <Ying.Liu-KZfg59tc24xl57MIdRCFDg@public.gmane.org>  
>> > >  This one looks like a devicetree patch, but this patch 
>> > >  does  
>> > > not touch devicetree.   
>> > > > +       ret = clk_prepare_enable(dsi->pllref_clk); + 
>> > > > if  (ret) { +               dev_err(dev, "%s: Failed to 
>> > > > enable  pllref_clk\n", __func__); +               return 
>> > > > ret; +  } + +       dsi->mux_sel = 
>> > > > syscon_regmap_lookup_by_phandle(dev->of_node, "fsl,gpr"); 
>> > > > +  if (IS_ERR(dsi->mux_sel)) { +               ret = 
>> > > > PTR_ERR(dsi->mux_sel); +               dev_err(dev, "%s: 
>> > > > Failed to get GPR regmap: %d\n", +  __func__, ret); + 
>> > > > return ret;  
>> > >  You should disable the dsi->pllref_clk clock prior to  
>> > > returning the error.   
>> >  Another approach could be moving the clock on and off to to 
>> > component_ops.{bind,unbind} (as rockhip driver does).    What 
>> > exactly is the PLL clock needed for? Would it make sense to 
>> > move it some of the PHY power on/off? (Maybe not, but it's 
>> > worthing checking).    Also, it seems the other IP blocks 
>> > have this PLL clock, so maybe  it could be moved to the 
>> > dw_mipi_dsi core? This could be  something for a follow-up, 
>> > to avoid creeping this series. 
>>  Hi Ezequiel,  pll is the video reference clock which drives 
>> the data lanes and  yes all drivers have it as it's a basic 
>> requirement, so moving it  to the common bridge is indeed a 
>> good idea, however this kind of  driver refactoring is out of 
>> scope for this specific patch series,  because, for now, I'd 
>> like to get the regmap and the imx6 driver  in, once that is 
>> done we can think how to further abstract away  common logic 
>> and slim down the existing drivers further.   Basically I just 
>> want to avoid feature creep as I expect v6 to be  ~ 8 patches 
>> big and the series is already over 1200 lines.  
> 
> Oh, absolutely: if there's one thing I try to avoid is feature 
> creep -- together with bikeshedding! 
> 
> Do note however, that you could move the PLL clock handling to 
> component_ops.{bind,unbind} and maybe simplify the error 
> handling. 
> 
> (BTW, great work!)

Thanks! I'll do the bind/unbind move for the new imx6 driver which 
I'm
adding in this series to make it resemble the existing rockchip 
driver a bit more, then I'll stop short of further driver 
refactorings.

>
> Cheers,
> Ezequiel

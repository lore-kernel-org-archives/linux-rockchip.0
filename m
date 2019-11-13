From: Adrian Ratiu <adrian.ratiu@collabora.com>
Subject: Re: [PATCH v2 1/4] drm: bridge: dw_mipi_dsi: access registers via a
 regmap
Date: Wed, 13 Nov 2019 18:35:30 +0200
Message-ID: <87r22bhgz1.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
References: <20191106163031.808061-1-adrian.ratiu@collabora.com>
 <20191106163031.808061-2-adrian.ratiu@collabora.com>
 <CACvgo51sNzSHCcix89giYEq=iGJa_-nYbgpOKY-MxPRGCM_cRQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; format=flowed
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CACvgo51sNzSHCcix89giYEq=iGJa_-nYbgpOKY-MxPRGCM_cRQ@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Emil Velikov <emil.l.velikov@gmail.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>, "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>, ML dri-devel <dri-devel@lists.freedesktop.org>, linux-rockchip <linux-rockchip@lists.infradead.org>, Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com, linux-stm32@st-md-mailman.stormreply.com, LAKML <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

On Wed, 13 Nov 2019, Emil Velikov <emil.l.velikov@gmail.com> 
wrote:
> On Wed, 6 Nov 2019 at 16:30, Adrian Ratiu 
> <adrian.ratiu@collabora.com> wrote: 
>> 
>> Convert the common bridge code and the two rockchip & stm 
>> drivers which currently use it to the regmap API in 
>> anticipation for further changes to make it more generic and 
>> add older DSI host controller support as found on i.mx6 based 
>> devices. 
>> 
>> The regmap becomes an internal state of the bridge. No 
>> functional changes other than requiring the platform drivers to 
>> use the pre-configured regmap supplied by the bridge after its 
>> probe() call instead of ioremp'ing the registers themselves. 
>> 
>> In subsequent commits the bridge will become able to detect the 
>> DSI host core version and init the regmap with different 
>> register layouts. The platform drivers will continue to use the 
>> regmap without modifications or worrying about the specific 
>> layout in use (in other words the layout is abstracted away via 
>> the regmap). 
>> 
>> Suggested-by: Boris Brezillon <boris.brezillon@collabora.com> 
>> Reviewed-by: Neil Armstrong <narmstrong@baylibre.com> 
>> Reviewed-by: Emil Velikov <emil.l.velikov@gmail.com> 
> 
> I should have been clearer earlier - I didn't quite review the 
> patch.  Is is now though.  Reviewed-by: Emil Velikov 
> <emil.velikov@collabora.com>

Sorry about that, I got confused and thought you reviewed it all.
 
> 
> Admittedly a couple of nitpicks (DRIVER_NAME, zero initialize of 
> val) could have been left out.  It's not a big deal, there's no 
> need to polish those.

I'll address them in v3 as well as updating your mail address.

Thanks for reviewing!

>
> -Emil
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

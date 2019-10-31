From: Adrian Ratiu <adrian.ratiu@collabora.com>
Subject: Re: [PATCH 0/4] Genericize DW MIPI DSI bridge and add i.MX 6 driver
Date: Thu, 31 Oct 2019 21:10:48 +0200
Message-ID: <87y2x091dz.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
References: <20191031142633.12460-1-adrian.ratiu@collabora.com>
 <CACvgo50NmofJrCvADOTxJqJqKEWDsy8qD-1B6R356vFMcmdbWA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; format=flowed
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CACvgo50NmofJrCvADOTxJqJqKEWDsy8qD-1B6R356vFMcmdbWA@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Emil Velikov <emil.l.velikov@gmail.com>, Adrian Ratiu <adrian.ratiu@collabora.com>
Cc: "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>, ML dri-devel <dri-devel@lists.freedesktop.org>, linux-rockchip <linux-rockchip@lists.infradead.org>, kernel@collabora.com, linux-stm32@st-md-mailman.stormreply.com, LAKML <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

On Thu, 31 Oct 2019, Emil Velikov <emil.l.velikov@gmail.com> 
wrote:
> Hi Adrian, 

Hi Emil!

> 
> On Thu, 31 Oct 2019 at 14:26, Adrian Ratiu 
> <adrian.ratiu@collabora.com> wrote: 
>> 
>> Having a generic Synopsis DesignWare MIPI-DSI host controller 
>> bridge driver is a very good idea, however the current 
>> implementation has hardcoded quite a lot of the register 
>> layouts used by the two supported SoC vendors, STM and 
>> Rockchip, which use IP cores v1.30 and v1.31. 
>> 
>> This makes it hard to support other SoC vendors like the 
>> FSL/NXP i.MX 6 which use older v1.01 cores or future versions 
>> because, based on history, layout changes should also be 
>> expected in new DSI versions / SoCs. 
>> 
>> This patch series converts the bridge and platform drivers to 
>> access registers via generic regmap APIs and allows each 
>> platform driver to configure its register layout via struct 
>> reg_fields, then adds support for the host controller found on 
>> i.MX 6. 
>> 
> Have you considered keeping the difference internal to the 
> dw-mipi-dsi driver?  Say having the iMX6 module "request" the 
> v1.01 regmap from the bridge driver, while rockchip/others doing 
> the equivalent.

No, I haven't. It sounds like a good idea though and I think it's 
doable. Thank you!
 
> 
>>  .../bindings/display/imx/mipi-dsi.txt         |  56 ++ 
>>  drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 518 
>>  +++++++++--------- drivers/gpu/drm/imx/Kconfig 
>>  |   7 + drivers/gpu/drm/imx/Makefile                  |   1 + 
>>  drivers/gpu/drm/imx/dw_mipi_dsi-imx.c         | 502 
>>  +++++++++++++++++ .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c 
>>  | 154 +++++- drivers/gpu/drm/stm/dw_mipi_dsi-stm.c         | 
>>  160 +++++- include/drm/bridge/dw_mipi_dsi.h              |  60 
>>  +- 8 files changed, 1185 insertions(+), 273 deletions(-) 
>>  create mode 100644 
>>  Documentation/devicetree/bindings/display/imx/mipi-dsi.txt 
>>  create mode 100644 drivers/gpu/drm/imx/dw_mipi_dsi-imx.c 
>> 
> 
> This should make the delta a lot smaller, avoiding the 
> unnecessary copy of register fields and regmap.  Plus plugging 
> future users will be dead trivial.

Agreed. I'll do this in v2 unless someone objects or proposes a 
better alternative.

I'll let this series sit a little more on review so others have a 
chance to see and review; will address all feedback in v2.

>
> -Emil
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

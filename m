From: Adrian Ratiu <adrian.ratiu@collabora.com>
Subject: Re: [PATCH v3 3/4] drm: imx: Add i.MX 6 MIPI DSI host driver
Date: Wed, 20 Nov 2019 09:51:56 +0200
Message-ID: <87o8x7dlyb.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
References: <20191118152518.3374263-1-adrian.ratiu@collabora.com>
 <20191118152518.3374263-4-adrian.ratiu@collabora.com>
 <CAOMZO5C5gpW6KF9d-79wd=-7ZGAbXQLAXw3kLi+_5DBW_DYrTw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; format=flowed
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAOMZO5C5gpW6KF9d-79wd=-7ZGAbXQLAXw3kLi+_5DBW_DYrTw@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Fabio Estevam <festevam@gmail.com>, Adrian Ratiu <adrian.ratiu@collabora.com>
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, Martyn Welch <martyn.welch@collabora.com>, Sjoerd Simons <sjoerd.simons@collabora.com>, linux-kernel <linux-kernel@vger.kernel.org>, DRI mailing list <dri-devel@lists.freedesktop.org>, linux-rockchip@lists.infradead.org, NXP Linux Team <linux-imx@nxp.com>, kernel@collabora.com, linux-stm32@st-md-mailman.stormreply.com, "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>, Emil Velikov <emil.velikov@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

On Tue, 19 Nov 2019, Fabio Estevam <festevam@gmail.com> wrote:
> Hi Adrian, 

Hi Fabio,

> 
> On Mon, Nov 18, 2019 at 12:25 PM Adrian Ratiu 
> <adrian.ratiu@collabora.com> wrote: 
> 
> Some nitpicks: 
> 
>> + +config DRM_IMX_MIPI_DSI +       tristate "Freescale i.MX DRM 
>> MIPI DSI" 
> 
> This text seems too generic as there are i.MX SoCs that use 
> different MIPI DSI IP. 
> 
> Maybe "Freescale i.MX6 DRM MIPI DSI" instead? 

Yes, this is a good idea, will update in a newer version to make 
it more specific. I'll let this version sit a little more on 
review so others also have time to review.

Thank you!

> 
>> +module_platform_driver(imx_mipi_dsi_driver); + 
>> +MODULE_DESCRIPTION("i.MX MIPI DSI host controller driver"); 
> 
> i.MX6 MIPI DSI, please.
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

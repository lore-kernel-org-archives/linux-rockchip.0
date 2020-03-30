From: Adrian Ratiu <adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: Re: [PATCH v5 4/5] drm: imx: Add i.MX 6 MIPI DSI host platform driver
Date: Tue, 31 Mar 2020 00:20:42 +0300
Message-ID: <87a73x35g5.fsf@collabora.com>
References: <20200330113542.181752-1-adrian.ratiu@collabora.com>
 <20200330113542.181752-5-adrian.ratiu@collabora.com>
 <CAOMZO5CEZSBfhb9xAdf=sDhUnmSeuWSsnUQArz=a1TPzytLAeQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; format=flowed
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <CAOMZO5CEZSBfhb9xAdf=sDhUnmSeuWSsnUQArz=a1TPzytLAeQ-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Fabio Estevam <festevam-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-stm32-XDFAJ8BFU24N7RejjzZ/Li2xQDfSxrLKVpNB7YpNyf8@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, DRI mailing list <dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, NXP Linux Team <linux-imx-3arQi8VN3Tc@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Andrzej Hajda <a.hajda-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, Laurent Pinchart <Laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Jernej Skrabec <jernej.skrabec-gGgVlfcn5nU@public.gmane.org>, Emil Velikov <emil.velikov-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Sjoerd Simons <sjoerd.simons-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Martyn Welch <martyn.welch-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Mon, 30 Mar 2020, Fabio Estevam <festevam-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> Hi Adrian, 
> 
> On Mon, Mar 30, 2020 at 8:34 AM Adrian Ratiu 
> <adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> wrote: 
>> 
>> This adds support for the Synopsis DesignWare MIPI DSI v1.01 
>> host controller which is embedded in i.MX 6 SoCs. 
>> 
>> Based on following patches, but updated/extended to work with 
>> existing support found in the kernel: 
>> 
>> - drm: imx: Support Synopsys DesignWare MIPI DSI host 
>> controller 
>>   Signed-off-by: Liu Ying <Ying.Liu-KZfg59tc24xl57MIdRCFDg@public.gmane.org> 
>> 
>> - ARM: dtsi: imx6qdl: Add support for MIPI DSI host controller 
>>   Signed-off-by: Liu Ying <Ying.Liu-KZfg59tc24xl57MIdRCFDg@public.gmane.org> 
> 
> This one looks like a devicetree patch, but this patch does not 
> touch devicetree. 
> 
>> +       ret = clk_prepare_enable(dsi->pllref_clk); +       if 
>> (ret) { +               dev_err(dev, "%s: Failed to enable 
>> pllref_clk\n", __func__); +               return ret; +       } 
>> + +       dsi->mux_sel = 
>> syscon_regmap_lookup_by_phandle(dev->of_node, "fsl,gpr"); + 
>> if (IS_ERR(dsi->mux_sel)) { +               ret = 
>> PTR_ERR(dsi->mux_sel); +               dev_err(dev, "%s: Failed 
>> to get GPR regmap: %d\n", +                       __func__, 
>> ret); +               return ret; 
> 
> You should disable the dsi->pllref_clk clock prior to returning 
> the error. 
> 
>> +       dsi->mipi_dsi = dw_mipi_dsi_probe(pdev, pdata); + 
>> if (IS_ERR(dsi->mipi_dsi)) { +               ret = 
>> PTR_ERR(dsi->mipi_dsi); +               dev_dbg(dev, "%s: 
>> Unable to probe DW DSI host device: %d\n", + 
>> __func__, ret); +               return -ENODEV; 
> 
> Same here. You should disable the clock. Shouldn't you return 
> 'ret' here instead of -ENODEV? 
> 
>> +module_platform_driver(imx_mipi_dsi_driver); + 
>> +MODULE_DESCRIPTION("i.MX6 MIPI DSI host controller driver"); 
>> +MODULE_AUTHOR("Liu Ying <Ying.Liu-KZfg59tc24xl57MIdRCFDg@public.gmane.org>"); 
> 
> The freescale.com domain is no longer functional. 
> 
> Ying Liu's NXP address is victor.liu-U2OmzyWs9tc@public.gmane.org You could probably 
> add your entry as well. 

Hi Fabio,

All the issues you pointed out are valid and will be addressed in 
v6 (including the device tree ones).

Thank you, much appreciated,
Adrian

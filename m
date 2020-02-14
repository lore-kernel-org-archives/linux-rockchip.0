From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v2 1/6] dt-bindings: add binding for Rockchip combo phy using an Innosilicon IP
Date: Fri, 14 Feb 2020 10:20:14 +0100
Message-ID: <17396429.PKOFnNSWWW@phil>
References: <1581574091-240890-1-git-send-email-shawn.lin@rock-chips.com> <1581574091-240890-2-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1581574091-240890-2-git-send-email-shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi-5wv7dgnIgG8@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>, Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, Jingoo Han <jingoohan1-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Simon Xue <xxm-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Shawn,

Am Donnerstag, 13. Februar 2020, 07:08:06 CET schrieb Shawn Lin:
> This IP could supports USB3.0 and PCIe.
> 
> Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> 
> ---
> 
> Changes in v2:
> - fix yaml format
> 
>  .../bindings/phy/rockchip,inno-combophy.yaml       | 80 ++++++++++++++++++++++

can we make this rockchip,inno-usb3pciephy or something similar please?
Same for the driver name.

-combophy is completely non-descriptive and looking at the Rockchip
vendor-tree we already have:

- phy-rockchip-inno-combphy.c (this one)
- phy-rockchip-inno-mipi-dphy.c (rk1808 dsi, but should actually fit into combo)
- phy-rockchip-inno-video-combo-phy.c (dsi/lvds/ttl)
- phy-rockchip-inno-video-phy.c (rk3288-lvds)

All of them have quite none-descriptive names

The inno-video-combo-phy already got a somewhat nicer name in
mainline (dsidphy), so I think it would be cool to also do this here
(and for the driver of course).


> +  reset-names:
> +    items:
> +      - const: otg-rst
> +      - const: combphy-por
> +      - const: combphy-apb
> +      - const: combphy-pipe

reset-names are local to the node, so there is no need
for combophy prefixes, so these should probably be:

      - const: otg-rst
      - const: por
      - const: apb
      - const: pipe


> +
> +  rockchip,combphygrf:
> +    enum:
> +      - rockchip,combphygrf

nicer name here? :-)


Thanks
Heiko

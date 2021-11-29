Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F4FAC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Nov 2021 21:10:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6YqwUn9LXpXXKX/mQLRMsgqbByTaxRoEXqExeFBL9p8=; b=YxvdP2YC5twIgw
	ySD/kpm6t9nQ/treHPV373mUe31nrynOG3qA0fYuqTlQNLfslek6tkh2X5fz11mthTP6IUyXofUyo
	UrYsuf6IhbTP+Ve1hm8id3aUpqz85sgr009XgxmFWhZWknHBbWtfUhin+YoWDft0BU3jdv5uTNxU7
	qOFx7zPVmRmZOcCcoQC5VveiN9kiAnOSMXwA5Dz0f0CF0eOKRY0S8iEAjS0W7xNQ1hO62cwQ9pq1r
	uY03NcHqueTflMP7jsEts2puWkBL+HGgyoKmpyv7zWGHsWe6aTsvUnLHidSMoY2Yla7fGTNiMmo+1
	o4wHeRZAxe8VBEGHDAow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mrnuW-002cyw-6o; Mon, 29 Nov 2021 21:10:04 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mrn2B-002Hft-B0; Mon, 29 Nov 2021 20:13:58 +0000
Received: by mail-ed1-x52e.google.com with SMTP id t5so77333568edd.0;
 Mon, 29 Nov 2021 12:13:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fi42U/2jTpx4BPkiel0v3NDRtd9dtjlNx3pYLf3HPek=;
 b=Cp149vpQac3NuayyncHRgVWAufJASCZmcQmiC8wTWF0gcADkg5OetNokGVSlko2U5V
 wu95zs4NSFS4Zef9eezxIxUyrXSwLKbBAQod5t5j8q51tKRtYf+I9C35RQ7He8CjsOGj
 ozkkesanML5s0T/kTEQASrhj+zaxg1f4wLkX3jQMn6XnmzMl8ITbNwUe2xP6Ewk887Bg
 bPoCn8Y9V5lj9fxOnFBtkW/ITEqk0Ng7XMbBVgSAsb8aYsMu85Bt71uJpF1a7A1SuXIp
 1EzEILVjPx8v9ChnM9Gioa5D+yd/pSWgze8wHFEQM7jbT5DHLUkfT5lg1Sw0/K69pveF
 25tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fi42U/2jTpx4BPkiel0v3NDRtd9dtjlNx3pYLf3HPek=;
 b=m0N46UsGlF7zs74lUsP5rsY8V5BUTY22bfEzqXApI76ctMR5YNd7zWN0t2vkZNCYc5
 MDCXyTCVm4SoLGpTXcEaIwlY63csrTOhL9d/3yWNsePxV7aG41yX6U3EeN/1ezY/Zydu
 1KxKFI6Xf757nWW/JP44BOHm9ImRjEwmWOS4kfuU6TOjw2fZxpQyvFOMR74qxVrfp056
 F//6RreC04BC0v7FgfEVogyGBI/sjfsWevN2vM45bS+0wyo4pXs43+PLPEYeQqQoYqDQ
 o8KrdXY3yt/L68/K1dH8UCtMeatl7f10xuAWcNXpq8O/zM0vcRzzCTfWbf/RztywnWS8
 F2ow==
X-Gm-Message-State: AOAM532pAxfBRlBaNLX9jong3kyl/we/HtrFzjoFTdTCCycj41ZIBBh9
 CyB0a9+6iaprObJJ/u5P/StMlky631xEGuY8Qp0=
X-Google-Smtp-Source: ABdhPJxomutnM/GNTZ/jmxeBw2lYvQB2BV61no9JvRS0JnbN0CtivcJkvJEPPqNAW7GUtFRbx/PgSf3ryQizZel12NE=
X-Received: by 2002:a05:6402:3595:: with SMTP id
 y21mr78068428edc.332.1638216832876; 
 Mon, 29 Nov 2021 12:13:52 -0800 (PST)
MIME-Version: 1.0
References: <20210407073534.376722-1-benjamin.gaignard@collabora.com>
 <20210407073534.376722-3-benjamin.gaignard@collabora.com>
In-Reply-To: <20210407073534.376722-3-benjamin.gaignard@collabora.com>
From: Adam Ford <aford173@gmail.com>
Date: Mon, 29 Nov 2021 14:13:41 -0600
Message-ID: <CAHCN7x+HOMoVNq-swqA2p3ddGKft_8QkB2qm00-CN8Dujaw52Q@mail.gmail.com>
Subject: Re: [PATCH v9 02/13] dt-bindings: media: nxp, imx8mq-vpu: Update the
 bindings for G2 support
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
 Lee Jones <lee.jones@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, mripard@kernel.org, 
 paul.kocialkowski@bootlin.com, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@siol.net>, hverkuil-cisco@xs4all.nl, 
 emil.l.velikov@gmail.com, Sascha Hauer <kernel@pengutronix.de>, 
 NXP Linux Team <linux-imx@nxp.com>, linux-media <linux-media@vger.kernel.org>, 
 "open list:HANTRO VPU CODEC DRIVER" <linux-rockchip@lists.infradead.org>, 
 devicetree <devicetree@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 devel@driverdev.osuosl.org, 
 kernel@collabora.com, Chris Healy <cphealy@gmail.com>,
 Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211129_121355_455216_71719119 
X-CRM114-Status: GOOD (  31.33  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Apr 7, 2021 at 2:37 AM Benjamin Gaignard
<benjamin.gaignard@collabora.com> wrote:
>
> Introducing the G2 hevc video decoder requires modifications of the bindings to allow
> one node per VPU.
>
> VPUs share one hardware control block which is provided as a phandle on
> a syscon.
> Each node has now one reg and one interrupt.
> Add a compatible for G2 hardware block: nxp,imx8mq-vpu-g2.
>
> To be compatible with older DT the driver is still capable to use the 'ctrl'
> reg-name even if it is deprecated now.
>
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

I need to edit the yaml file to add support the imx8mm, but it doesn't
appear that this series has gone anywhere.  I know there is still some
waiting on the vpu-blk-ctrl driver, but it seems like the 8mq could
split the codecs out using syscon in place of the blk-ctrl until that
driver is available.  If that doesn't work, I might have to introduce
a separate yaml file for mini which could be somehow merged with the
8mq in the future.  I am just not sure which way to go right now.

adam
> ---
> version 9:
>  - Corrections in commit message
>
> version 7:
>  - Add Rob and Philipp reviewed-by tag
>  - Change syscon phandle name to nxp,imx8m-vpu-ctrl (remove 'q' to be
>    usable for iMX8MM too)
>
> version 5:
> - This version doesn't break the backward compatibilty between kernel
>   and DT.
>
>  .../bindings/media/nxp,imx8mq-vpu.yaml        | 53 ++++++++++++-------
>  1 file changed, 34 insertions(+), 19 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> index 762be3f96ce9..18e7d40a5f24 100644
> --- a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> +++ b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> @@ -15,22 +15,18 @@ description:
>
>  properties:
>    compatible:
> -    const: nxp,imx8mq-vpu
> +    oneOf:
> +      - const: nxp,imx8mq-vpu
> +      - const: nxp,imx8mq-vpu-g2
>
>    reg:
> -    maxItems: 3
> -
> -  reg-names:
> -    items:
> -      - const: g1
> -      - const: g2
> -      - const: ctrl
> +    maxItems: 1
>
>    interrupts:
> -    maxItems: 2
> +    maxItems: 1
>
>    interrupt-names:
> -    items:
> +    oneOf:
>        - const: g1
>        - const: g2
>
> @@ -46,14 +42,18 @@ properties:
>    power-domains:
>      maxItems: 1
>
> +  nxp,imx8m-vpu-ctrl:
> +    description: Specifies a phandle to syscon VPU hardware control block
> +    $ref: "/schemas/types.yaml#/definitions/phandle"
> +
>  required:
>    - compatible
>    - reg
> -  - reg-names
>    - interrupts
>    - interrupt-names
>    - clocks
>    - clock-names
> +  - nxp,imx8m-vpu-ctrl
>
>  additionalProperties: false
>
> @@ -62,18 +62,33 @@ examples:
>          #include <dt-bindings/clock/imx8mq-clock.h>
>          #include <dt-bindings/interrupt-controller/arm-gic.h>
>
> -        vpu: video-codec@38300000 {
> +        vpu_ctrl: syscon@38320000 {
> +                 compatible = "nxp,imx8mq-vpu-ctrl", "syscon";
> +                 reg = <0x38320000 0x10000>;
> +        };
> +
> +        vpu_g1: video-codec@38300000 {
>                  compatible = "nxp,imx8mq-vpu";
> -                reg = <0x38300000 0x10000>,
> -                      <0x38310000 0x10000>,
> -                      <0x38320000 0x10000>;
> -                reg-names = "g1", "g2", "ctrl";
> -                interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>,
> -                             <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
> -                interrupt-names = "g1", "g2";
> +                reg = <0x38300000 0x10000>;
> +                interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
> +                interrupt-names = "g1";
> +                clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>,
> +                         <&clk IMX8MQ_CLK_VPU_G2_ROOT>,
> +                         <&clk IMX8MQ_CLK_VPU_DEC_ROOT>;
> +                clock-names = "g1", "g2", "bus";
> +                power-domains = <&pgc_vpu>;
> +                nxp,imx8m-vpu-ctrl = <&vpu_ctrl>;
> +        };
> +
> +        vpu_g2: video-codec@38310000 {
> +                compatible = "nxp,imx8mq-vpu-g2";
> +                reg = <0x38300000 0x10000>;
> +                interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
> +                interrupt-names = "g2";
>                  clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>,
>                           <&clk IMX8MQ_CLK_VPU_G2_ROOT>,
>                           <&clk IMX8MQ_CLK_VPU_DEC_ROOT>;
>                  clock-names = "g1", "g2", "bus";
>                  power-domains = <&pgc_vpu>;
> +                nxp,imx8m-vpu-ctrl = <&vpu_ctrl>;
>          };
> --
> 2.25.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

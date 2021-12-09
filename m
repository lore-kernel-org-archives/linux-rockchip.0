Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D034BC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Dec 2021 10:26:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dWAn/jMENwKARzV4VJzOw3WyQOH+ciUPWfKFSPA1YM4=; b=eFrFPm32n2K97P
	GANUy/9Fw5l4m84x4f9nw5J8pWbsTYTL001VcajvySvPV9x0AbpmqAkNMrTD2pwf/3rb0lAdPBGxB
	wsTHN4E/KzdLndz3dsm22Clqxtok3qAnxEghNtK7WkVgcBPTYrm6AyuWUSilKsJ9bP/e5R5BpRpnm
	Qqi/y98ZjEhYaAEpj91T/fAEzymobNNVyOzcYO6a9t8KVjUcdYu0Y7LXcrtO6prDc9xcJalNC4wuQ
	EWtk9DSDuW04naPuDSKCLh0w08IX/7wkX/yRk+njk6zj7p4ghfVmOOZ7fhd/8RhvKFS6hxzVsLofP
	EcMOIO6e5syV1XxzUbJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mvGdG-00Fbid-J7; Thu, 09 Dec 2021 10:26:34 +0000
Received: from mail-ua1-x936.google.com ([2607:f8b0:4864:20::936])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mvGd2-00Fbe8-F1
 for linux-rockchip@lists.infradead.org; Thu, 09 Dec 2021 10:26:22 +0000
Received: by mail-ua1-x936.google.com with SMTP id n6so9876992uak.1
 for <linux-rockchip@lists.infradead.org>; Thu, 09 Dec 2021 02:26:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=n1e+HtRg9maQtc2GLxQiCgRrqKPDjfCHzrqnIVz2IyI=;
 b=hIhiw8NfbkDX84PoIgWiuo2LnvGpIzgmT1aR76Z0WPIXHtxQWDaNb1/Q6SbUwXUs77
 7vTvAtsrCiOx5Gb7h8GSvNCGPmca7yXkUZti+RAdqWIWgoC3aHNvoa68hCL5akLSsO6c
 4rIZbaD0hBixRCLygqOA9+BJTGhi1j4IIL1v6uUS1G9sizof0JNtncXfUMjF0d07e8CW
 HCy4BPujk8eQSwQcQbYcU6+aF44t02BlfWGeQfbD9Wl4ywSvDBq7krGRdsHr4KTiJt0L
 rbiEWP6AUbf5kZJwC9/ROPA0gNp22ydzbxkN/l+tMej6/31N9D0rHhgKk5PGfhYfbZx9
 jS0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=n1e+HtRg9maQtc2GLxQiCgRrqKPDjfCHzrqnIVz2IyI=;
 b=yxAbx3E4LO15fcAnsFqsRnFJkpvg+0zkBbRQfCarCtgwXW8FC9CsC0RsPK0eW1HRX7
 vdY1lRNnKBLbZuu1rioq5HhoBRAUOAaxkMnpmf1tAzvaz4g0HIr/DqSudAvFhibWMRWM
 hEELLxtTfaLvZw6B3Oddkm061PB9SkSunNu63Fd3dIJlpiAdIWBQYQu8sNGo0ayPbig1
 k+FmLHZL16wUInXKwa6d8NJKS9AEfsFQ1oM81SxHU/Yspx16fdmNNUC3QUEMm09mJbaq
 5TJuOAOZA1NzHHEUlx/9Meze3++4paWvjWwMniQ2/4InM0bIACF5SwXEBNEBChSvi13Y
 LFBg==
X-Gm-Message-State: AOAM530QKhDOMq+mDXGeN60GgniOIssPyY5UCjht9b68LlipHs7SGmio
 fgWujCiQDsHgU3Ykll92uDz8n4WzSnbdqw==
X-Google-Smtp-Source: ABdhPJwJv3mXRM/g6+dEqNxe+KKZgULXoBaIC5TH7Y0NcdNLGdr+N3FNJpkSYLsYjEsMxvQvMtvoVQ==
X-Received: by 2002:a67:d78c:: with SMTP id q12mr6398800vsj.35.1639045578937; 
 Thu, 09 Dec 2021 02:26:18 -0800 (PST)
Received: from eze-laptop ([186.122.18.54])
 by smtp.gmail.com with ESMTPSA id t132sm3543495vkb.19.2021.12.09.02.26.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Dec 2021 02:26:17 -0800 (PST)
Date: Thu, 9 Dec 2021 07:26:07 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Adam Ford <aford173@gmail.com>
Cc: linux-media@vger.kernel.org, benjamin.gaignard@collabora.com,
 cphealy@gmail.com, aford@beaconembedded.com, nicolas@ndufresne.ca,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lucas Stach <l.stach@pengutronix.de>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-staging@lists.linux.dev
Subject: Re: [PATCH 04/10] dt-bindings: media: nxp,imx8mq-vpu: Support split
 G1 and G2 nodes with vpu-blk-ctrl
Message-ID: <YbHZvysazqYeZ8h3@eze-laptop>
References: <20211208225030.2018923-1-aford173@gmail.com>
 <20211208225030.2018923-5-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211208225030.2018923-5-aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211209_022620_732618_FF4AB12B 
X-CRM114-Status: GOOD (  23.26  )
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

Hi,

Thanks for the patch.

On Wed, Dec 08, 2021 at 04:50:23PM -0600, Adam Ford wrote:
> The G1 and G2 are separate decoder blocks that are enabled by the
> vpu-blk-ctrl power-domain controller, which now has a proper driver.
> Update the bindings to support separate nodes for the G1 and G2
> decoders using the proper driver or the older unified node with
> the legacy controls.
> 
> To be compatible with older DT the driver, mark certain items as
> deprecated and retain the backwards compatible example.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> ---
>  .../bindings/media/nxp,imx8mq-vpu.yaml        | 83 ++++++++++++++-----
>  1 file changed, 64 insertions(+), 19 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> index 762be3f96ce9..eeb7bd6281f9 100644
> --- a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> +++ b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> @@ -15,29 +15,39 @@ description:
>  
>  properties:
>    compatible:
> -    const: nxp,imx8mq-vpu
> +    oneOf:
> +      - const: nxp,imx8mq-vpu
> +        deprecated: true
> +      - const: nxp,imx8mq-vpu-g1
> +      - const: nxp,imx8mq-vpu-g2
>  
>    reg:
> +    minItems: 1
>      maxItems: 3

Is it really useful to keep the deprecated binding nxp,imx8mq-vpu
as something supported by the binding file?

In other words, can we drop the deprecated binding from this file,
while keeping the support in the driver for legacy device-trees?

[..]
> +
> +  # VPU G1 with vpu-blk-ctrl
> +  - |
> +    #include <dt-bindings/clock/imx8mq-clock.h>
> +    #include <dt-bindings/power/imx8mq-power.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    vpu_g1: video-codec@38300000 {
> +        compatible = "nxp,imx8mq-vpu-g1";
> +        reg = <0x38300000 0x10000>;
> +        reg-names "g1";
> +        interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
> +        interrupt-names = "g1";
> +        clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>;
> +        clock-names = "g1";

reg-names, interrupt-names and clock-names should be removed
given for this device there's only one of each.

This will make the binding actually quite easier, but it also
means you need to make some changes to struct hantro_variant imx8mq_vpu_g1_variant
to make it work properly.

See Rob's feedback on the SAMA5 VPU binding:

https://yhbt.net/lore/all/20210324151715.GA3070006@robh.at.kernel.org/

Also, take a look at drivers/staging/media/hantro/sama5d4_vdec_hw.c
for reference.

> +        power-domains = <&vpu_blk_ctrl IMX8MQ_VPUBLK_PD_G1>;
> +    };
> +
> +  # VPU G2 with vpu-blk-ctrl
> +  - |
> +    #include <dt-bindings/clock/imx8mq-clock.h>
> +    #include <dt-bindings/power/imx8mq-power.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    vpu_g2: video-codec@38310000 {
> +        compatible = "nxp,imx8mq-vpu-g2";
> +        reg = <0x38310000 0x10000>;
> +        reg-names "g2";

And same here.

Thanks!
Ezequiel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

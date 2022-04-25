Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3542CC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 19:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VCLexrzm7Jyk2Sx1dY8UYebwjIB4+IxBUyMxK1d3yPM=; b=L0XSAMMAigjWSh
	c1j9WXdiMBx4LmIJnK+qJeCvvHsbrqUuIzndatAYvYAXBSWCIegCZdbz0y24Tr0ttMwXwD3gZWSGp
	UoA9Mp9xAYlhmIgNqtflqNE55gvpqb1YulK7Xl1kTP1cCSjpXB5k3+f9QdhFll2oWx1SbdMTHQs3M
	P7Hd68knloJSegE1bUfARg/+jPKCVDOEb2HMmHBhCDCtnAfV+aQMW2FHDWXN+4eW+FoQq/sJ+IqKu
	IP4gZUvr/Z9FZZHk7+CkLLYFEURqPdBEyGSoi7AFIe0fnMHHsCPzDrFzaBZQHLSVDNJDRqhhu3IHH
	6Q6tp8nigD4y98xj22pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj4d7-00B6Aq-Kk; Mon, 25 Apr 2022 19:44:17 +0000
Received: from mail-oo1-f41.google.com ([209.85.161.41])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj4cv-00B67R-Jn; Mon, 25 Apr 2022 19:44:07 +0000
Received: by mail-oo1-f41.google.com with SMTP id
 f2-20020a4a8f42000000b0035e74942d42so32105ool.13; 
 Mon, 25 Apr 2022 12:44:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=3MgO8upGLQIT7MA1c1wZtenkS69Cr8OOjspSzkPpmss=;
 b=d0HjTrWDPMnQ36mcVvx5q7B600iAoaIsRkVxI+7kXKNGPQXgCGEPituXYoBqsOarwD
 yStMNGiaIHcWJsS+/FKG0e5bLGzBZz9y7k+iTshvadG09CR8IshGjooH4OqvhT5dz8yo
 1k05cUM16iXk/hArhgBZA1YRFNMbko5flzH/e4Mx+UUDxUq2GD5oZaPflkCCPC8QbMUe
 jfCbbac1P7PDvpAvMIYHhwLVwnLPf5PhrGh/CR95etfrCne4cmdMarxvwHM21Ff/5mSQ
 am5hmT+5ch8y+7ZLhFdBy4DFptHZLM6VMOAuz95TFK3seqzMPyFjGqG4JX7wB25c/6/1
 upIQ==
X-Gm-Message-State: AOAM533ChZ0ynGi7Ogl0uNQQI7Z81PvBQ9McPy8NzQn0yNnXa2f+d4t1
 cz5yyWuVkfVhjNSGjCkkQQ==
X-Google-Smtp-Source: ABdhPJwf4Xyx+/VQ5kGcMOPdAcQfh7fvYOnVekrEwwDVyJaLDX2aks6e0Ho5r/lUEmXwJDUSbQPsMg==
X-Received: by 2002:a4a:dfd7:0:b0:35e:499c:7bb5 with SMTP id
 p23-20020a4adfd7000000b0035e499c7bb5mr4695942ood.36.1650915843421; 
 Mon, 25 Apr 2022 12:44:03 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 f63-20020a9d2c45000000b005e973e22081sm4115852otb.37.2022.04.25.12.44.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 12:44:02 -0700 (PDT)
Received: (nullmailer pid 141172 invoked by uid 1000);
 Mon, 25 Apr 2022 19:44:01 -0000
Date: Mon, 25 Apr 2022 14:44:01 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Adrian Hunter <adrian.hunter@intel.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 linux-clk@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@lists.collabora.co.uk,
 Kever Yang <kever.yang@rock-chips.com>, kernel@collabora.com
Subject: Re: [PATCHv1 19/19] arm64: dts: rockchip: Add rk3588-evb1 board
Message-ID: <Ymb6AWcLkUnqsslp@robh.at.kernel.org>
References: <20220422170920.401914-1-sebastian.reichel@collabora.com>
 <20220422170920.401914-20-sebastian.reichel@collabora.com>
 <46e72600-b96a-03a9-134d-28a0cb4bc078@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <46e72600-b96a-03a9-134d-28a0cb4bc078@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_124405_733148_7229E35E 
X-CRM114-Status: GOOD (  23.54  )
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

On Sat, Apr 23, 2022 at 12:09:21PM +0200, Krzysztof Kozlowski wrote:
> On 22/04/2022 19:09, Sebastian Reichel wrote:
> > From: Kever Yang <kever.yang@rock-chips.com>
> > 
> > Add board file for the RK3588 evaluation board. While the hardware
> > offers plenty of peripherals and connectivity this basic implementation
> > just handles things required to successfully boot Linux from eMMC
> > and connect via UART.
> > 
> > Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> > [rebase, update commit message, use EVB1 for SoC bringup]
> > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > ---
> >  .../devicetree/bindings/arm/rockchip.yaml     |  5 +++
> >  arch/arm64/boot/dts/rockchip/Makefile         |  1 +
> >  .../boot/dts/rockchip/rk3588-evb1-v10.dts     | 34 +++++++++++++++++++
> >  3 files changed, 40 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
> > 
> > diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > index eece92f83a2d..b14d0c84c69b 100644
> > --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> > +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > @@ -664,6 +664,11 @@ properties:
> >            - const: rockchip,rk3568-bpi-r2pro
> >            - const: rockchip,rk3568
> >  
> > +      - description: Rockchip RK3588 Evaluation board
> > +        items:
> > +          - const: rockchip,rk3588-evb1-v10
> > +          - const: rockchip,rk3588
> > +
> >  additionalProperties: true
> >  
> >  ...
> > diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> > index 4ae9f35434b8..8a53ab6d37a1 100644
> > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > @@ -61,3 +61,4 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.2.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-evb1-v10.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-bpi-r2-pro.dtb
> > +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
> > new file mode 100644
> > index 000000000000..68b19acb1550
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
> > @@ -0,0 +1,34 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +/*
> > + * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
> > + *
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include "rk3588.dtsi"
> > +
> > +/ {
> > +	model = "Rockchip RK3588 EVB1 V10 Board";
> > +	compatible = "rockchip,rk3588-evb1-v10", "rockchip,rk3588";
> > +
> > +	chosen {
> > +		stdout-path = "serial2:1500000n8";
> > +	};
> > +};
> > +
> > +&sdhci {
> > +	bus-width = <8>;
> > +	no-sdio;
> > +	no-sd;
> > +	non-removable;
> > +	max-frequency = <200000000>;
> > +	mmc-hs400-1_8v;
> > +	mmc-hs400-enhanced-strobe;
> > +	status = "ok";
> > +};
> > +
> > +&uart2 {
> > +	status = "ok";
> 
> Usually status goes at the end of properties and rockchip sources use
> "okay" instead of "ok".

"okay" is what's documented in the spec and in the schemas, so please 
fix. 

No need for reviewers to tell you this though, please run 'make 
dtbs_checks' on the dts file and don't add new warnings.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

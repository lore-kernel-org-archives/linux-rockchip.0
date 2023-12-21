Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C008AC35274
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Dec 2023 12:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x2o5DiRBqI0eaiUAqcSfQckMbvXpiZradlJdmL/PPXo=; b=mR3CLf7hvCLLS3
	pgxlkDjGSE1KLT2liqvrRjWoY+G51EPo1eKW0EFJo+iHnr/3ok2BwjtllpcvuBP2u/rzUTKIFziqT
	qsHF4FU70PJBMdwZs28dd4piSVl1gNFNZsJ6GowQRK2NiV7Qxp97bP4eoVrfnRKATSuj5myLybtWK
	ZsPrdSeq/BtYNKFewtLoruOTAMWbAusR/Nkw2z0r4IrXGc9YLwugu5+eFrILaIo5vJ5u3Totn0oaf
	hknl0FI+P6kO8pGOw2sDDro+vBOC5e89NqmLUnhzrxBG1YRozURRTUIsLNms+llQe/G66mB7qMcJq
	Vd0T0CCmPDSqgoh1XMNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGIM7-002nso-1p;
	Thu, 21 Dec 2023 12:40:51 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGIM4-002nr5-1u;
	Thu, 21 Dec 2023 12:40:49 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-40d2376db79so5814805e9.0;
        Thu, 21 Dec 2023 04:40:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703162445; x=1703767245; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JWmqolZ/s9uaTTG3HahXfBKZE7l3nyr/50HE3h+LaaE=;
        b=g4rgmQ2I0q44fp9/4KwIZb1Jc3jvGgIwj3Xwuhl80fChlgS5eQtZrY0OWLRg3BTdzH
         0M/Tt0fma80tlBtcaLYXjBVclkaSdDaQ1Db0vCCJLCDQextLol+PPdEzHye6s+//8nLz
         8Xa0JMtLyGQqLNNuSqGK3auwbZePcwDvYE1d2m2d/XO5R2xUDedeXHOukCUDrhIzrT7b
         eqmoYe6IA3Se+UwvYMdKQw3ce3ivKXGD2mSCyQaiNTNHXJzvXApK7NVeWFbeaA/P9bjC
         gsFx0adnaQqsBMLXQ2gvhSwsH9na/1CGdU3CJcQqtvj6YBYhMMicAj54ds4yyjrhVxrP
         vnlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703162445; x=1703767245;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JWmqolZ/s9uaTTG3HahXfBKZE7l3nyr/50HE3h+LaaE=;
        b=OsNWD0HPkeTq3DSW5corXfyisgO7EuSNJtjAgnV2ouvy3Ms4vdHlpMx0V4SlDDQ28H
         2ijaTQ6TKS7QAhApIJg4U1hMHt3qjb4LKuHqnm7MsMFoDTwJRN3VAEXsFmQ7ptaa4o/J
         +2Nh/3y902CzV0I2R4dlBSJOP2Lno4lg6lAWhx6VV/ekjTWKAPRnEjIbHhR+STZtzlpu
         GZ1gV3O/p5N+VEisbGA3c3uRBzpy9w3ho5yfdxvoBsOSaOmbCxkpbsb89SkUWcYxbCDL
         bcxp0x9Rx/bbYkHiLhZQzlEMy5LkpoK5wKJhxZjZoct75Lkie0kTH8mLLW063OEtc5h3
         HiqQ==
X-Gm-Message-State: AOJu0YzPp5KgQIUh12zkymfhBpbDD7BomlpqgsvoNMaWCB1QL9VlB6z1
	tYLFhYt1x00bslY0lY96jg==
X-Google-Smtp-Source: AGHT+IGkuybcFimpIs0LvZEOZjwVVUVzLxK10DvFGWw0XP9p/eXP37eHJM8+GsP1AmV508zKWNQi3w==
X-Received: by 2002:a05:600c:4583:b0:40d:177b:c3ac with SMTP id r3-20020a05600c458300b0040d177bc3acmr818914wmo.85.1703162444642;
        Thu, 21 Dec 2023 04:40:44 -0800 (PST)
Received: from ?IPV6:2a02:810b:f40:4300:1c49:5d1e:f6f3:77a0? ([2a02:810b:f40:4300:1c49:5d1e:f6f3:77a0])
        by smtp.gmail.com with ESMTPSA id k13-20020a05600c1c8d00b0040d3dc52665sm2204319wms.21.2023.12.21.04.40.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Dec 2023 04:40:44 -0800 (PST)
Message-ID: <769a1510-f8d2-4095-9879-42f413141dee@gmail.com>
Date: Thu, 21 Dec 2023 13:40:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/5] Add support for video hardware codec of
 STMicroelectronics STM32 SoC series
To: Hugues Fruchet <hugues.fruchet@foss.st.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Marco Felsch <m.felsch@pengutronix.de>, Adam Ford <aford173@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Benjamin Mugnier <benjamin.mugnier@foss.st.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-kernel@vger.kernel.org,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Hans Verkuil <hverkuil@xs4all.nl>,
 Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-media@vger.kernel.org, Alexandre Torgue
 <alexandre.torgue@foss.st.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
References: <20231221084723.2152034-1-hugues.fruchet@foss.st.com>
Content-Language: en-US, de-DE
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <20231221084723.2152034-1-hugues.fruchet@foss.st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_044048_635532_2CC6F75E 
X-CRM114-Status: GOOD (  19.46  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Hugues, Hi Nicolas,

is there any specific reason I'm not understanding / seeing why this is 
added in two seperate vdec* / venc* files and not a single vpu* file? Is 
it only for the seperate clocks (-names) / irqs (-names) / callbacks? 
Those are defined per variant and perfectly fit in a single file holding 
one vdec and one venc variant.

Alex

Am 21.12.23 um 09:47 schrieb Hugues Fruchet:
> This patchset introduces support for VDEC video hardware decoder
> and VENC video hardware encoder of STMicroelectronics STM32MP25
> SoC series.
> 
> This initial support implements H264 decoding, VP8 decoding and
> JPEG encoding.
> 
> This has been tested on STM32MP257F-EV1 evaluation board.
> 
> ===========
> = history =
> ===========
> version 5:
>     - Precise that video decoding as been successfully tested up to full HD
>     - Add Nicolas Dufresne reviewed-by
> 
> version 4:
>     - Fix comments from Nicolas about dropping encoder raw steps
> 
> version 3:
>     - Fix remarks from Krzysztof Kozlowski:
>      - drop "items", we keep simple enum in such case
>      - drop second example - it is the same as the first
>     - Drop unused node labels as suggested by Conor Dooley
>     - Revisit min/max resolutions as suggested by Nicolas Dufresne
> 
> version 2:
>     - Fix remarks from Krzysztof Kozlowski on v1:
>      - single video-codec binding for both VDEC/VENC
>      - get rid of "-names"
>      - use of generic node name "video-codec"
> 
> version 1:
>    - Initial submission
> 
> Hugues Fruchet (5):
>    dt-bindings: media: Document STM32MP25 VDEC & VENC video codecs
>    media: hantro: add support for STM32MP25 VDEC
>    media: hantro: add support for STM32MP25 VENC
>    arm64: dts: st: add video decoder support to stm32mp255
>    arm64: dts: st: add video encoder support to stm32mp255
> 
>   .../media/st,stm32mp25-video-codec.yaml       |  50 ++++++++
>   arch/arm64/boot/dts/st/stm32mp251.dtsi        |  12 ++
>   arch/arm64/boot/dts/st/stm32mp255.dtsi        |  17 +++
>   drivers/media/platform/verisilicon/Kconfig    |  14 ++-
>   drivers/media/platform/verisilicon/Makefile   |   4 +
>   .../media/platform/verisilicon/hantro_drv.c   |   4 +
>   .../media/platform/verisilicon/hantro_hw.h    |   2 +
>   .../platform/verisilicon/stm32mp25_vdec_hw.c  |  92 ++++++++++++++
>   .../platform/verisilicon/stm32mp25_venc_hw.c  | 115 ++++++++++++++++++
>   9 files changed, 307 insertions(+), 3 deletions(-)
>   create mode 100644 Documentation/devicetree/bindings/media/st,stm32mp25-video-codec.yaml
>   create mode 100644 drivers/media/platform/verisilicon/stm32mp25_vdec_hw.c
>   create mode 100644 drivers/media/platform/verisilicon/stm32mp25_venc_hw.c
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

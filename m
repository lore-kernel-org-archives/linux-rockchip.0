Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9095C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Mar 2022 13:45:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QJ1DI5/u9artcAOz1dJHDGWFNmqOt/zSR2T6jmsCIH4=; b=tffzE9wTTPL8W3
	VtMw/gJuFbwg+tk+2t0gsPw/EnVQciyzFFhhVbXMQCrsm7m/kHlo4byaV6x3ub91KD1p/DUlDp50B
	rvZwidO6ZmeVeqHo5P4sjwrHMhzwLpg/qAKFkjBigNht/vV6QAx53sBm2SgqDf3yzFev8Pxu6hCin
	nPpcFKg5erC1lLRNvh1707cTk3fBJEnfnl8fwcycGen69/y2hTqyL9CMSUSyYsMCLw0uVYYH/3zxZ
	9tX+Oj827jQF/v32p/Nudusc9RwH2PE8A63nbsR6k+MUqHzU5PBuK6cbs/ZJ4Ob3mTxhqdDfye5ol
	uFsfn3/qtVwO4f3HRsCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPllJ-006WzU-QL; Thu, 03 Mar 2022 13:44:57 +0000
Received: from mail-oo1-f43.google.com ([209.85.161.43])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPll9-006Wvg-Du; Thu, 03 Mar 2022 13:44:50 +0000
Received: by mail-oo1-f43.google.com with SMTP id
 j7-20020a4ad6c7000000b0031c690e4123so5766291oot.11; 
 Thu, 03 Mar 2022 05:44:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=MWU8DyAQWfBCp/kx00pg2Nk6vyP9a87Eky1nXis5bgw=;
 b=xX5rxEDtgC6fsnKGIEEmhGZt/yLuckyiLaQDrIpVPnGee9YgViWYCxK1BAy4GoCwGs
 83snbosZhwo8RS3bstcdiXCW/TPjoqVrLgOfyellClUZGPLFSU64bpRf0k9ZVQtr13rK
 ysTH+ypwa29VvyzU9vS6bSmz3ByvWa0oiydkOzdN919Y3Bwj5nNMWM8oDefeozGS1DHv
 Ww+01Ix0ehMx2NNa9De4yhOsbqtdVK6evX/SlMrC+6DxaUQfx8gagDLsaKeraDVerIxY
 7A6YoSZB/VlQHElK32uWeDKTbhTnNX8pxr0BAVwBKo7Smj/1YQC85ANtR+CUoZDNitNQ
 HDdA==
X-Gm-Message-State: AOAM530v/GXRheeU1Yla7oJsk+SsKnnoQ7PkcXDM8/mdH24OyYUTYSoJ
 GPYiAoERTqtwUf4KqzKwor0Vn0T5FQ==
X-Google-Smtp-Source: ABdhPJxEjj3zkKGLS+DBVQDv69xIDBRF37rnjyhkcK3WRGVogrbTz8vxAjXBhVtoY28jPMDvlnXutw==
X-Received: by 2002:a05:6870:b62a:b0:d9:a98b:7a24 with SMTP id
 cm42-20020a056870b62a00b000d9a98b7a24mr3983372oab.160.1646315085557; 
 Thu, 03 Mar 2022 05:44:45 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213]) by smtp.gmail.com with ESMTPSA id
 a69-20020a4a4c48000000b0031bec1608fbsm940634oob.17.2022.03.03.05.44.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Mar 2022 05:44:44 -0800 (PST)
Received: (nullmailer pid 1495436 invoked by uid 1000);
 Thu, 03 Mar 2022 13:44:38 -0000
From: Rob Herring <robh@kernel.org>
To: Corentin Labbe <clabbe@baylibre.com>
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-crypto@vger.kernel.org,
 herbert@gondor.apana.org.au, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, john@metanate.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
In-Reply-To: <20220302211113.4003816-18-clabbe@baylibre.com>
References: <20220302211113.4003816-1-clabbe@baylibre.com>
 <20220302211113.4003816-18-clabbe@baylibre.com>
Subject: Re: [PATCH v2 17/18] dt-bindings: crypto: convert rockchip-crypto to
 yaml
Date: Thu, 03 Mar 2022 07:44:38 -0600
Message-Id: <1646315078.991896.1495435.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_054447_497259_0B6AF4C4 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, 02 Mar 2022 21:11:12 +0000, Corentin Labbe wrote:
> convert rockchip-crypto to yaml
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  .../crypto/rockchip,rk3288-crypto.yaml        | 64 +++++++++++++++++++
>  .../bindings/crypto/rockchip-crypto.txt       | 28 --------
>  2 files changed, 64 insertions(+), 28 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
>  delete mode 100644 Documentation/devicetree/bindings/crypto/rockchip-crypto.txt
> 

Running 'make dtbs_check' with the schema in this patch gives the
following warnings. Consider if they are expected or the schema is
incorrect. These may not be new warnings.

Note that it is not yet a requirement to have 0 warnings for dtbs_check.
This will change in the future.

Full log is available here: https://patchwork.ozlabs.org/patch/1600075


cypto-controller@ff8a0000: clock-names: ['aclk', 'hclk', 'sclk', 'apb_pclk'] is too long
	arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml
	arch/arm/boot/dts/rk3288-evb-rk808.dt.yaml
	arch/arm/boot/dts/rk3288-firefly-beta.dt.yaml
	arch/arm/boot/dts/rk3288-firefly.dt.yaml
	arch/arm/boot/dts/rk3288-firefly-reload.dt.yaml
	arch/arm/boot/dts/rk3288-miqi.dt.yaml
	arch/arm/boot/dts/rk3288-phycore-rdk.dt.yaml
	arch/arm/boot/dts/rk3288-popmetal.dt.yaml
	arch/arm/boot/dts/rk3288-r89.dt.yaml
	arch/arm/boot/dts/rk3288-rock2-square.dt.yaml
	arch/arm/boot/dts/rk3288-rock-pi-n8.dt.yaml
	arch/arm/boot/dts/rk3288-tinker.dt.yaml
	arch/arm/boot/dts/rk3288-tinker-s.dt.yaml
	arch/arm/boot/dts/rk3288-veyron-brain.dt.yaml
	arch/arm/boot/dts/rk3288-veyron-fievel.dt.yaml
	arch/arm/boot/dts/rk3288-veyron-jaq.dt.yaml
	arch/arm/boot/dts/rk3288-veyron-jerry.dt.yaml
	arch/arm/boot/dts/rk3288-veyron-mickey.dt.yaml
	arch/arm/boot/dts/rk3288-veyron-mighty.dt.yaml
	arch/arm/boot/dts/rk3288-veyron-minnie.dt.yaml
	arch/arm/boot/dts/rk3288-veyron-pinky.dt.yaml
	arch/arm/boot/dts/rk3288-veyron-speedy.dt.yaml
	arch/arm/boot/dts/rk3288-veyron-tiger.dt.yaml
	arch/arm/boot/dts/rk3288-vyasa.dt.yaml

cypto-controller@ff8a0000: clocks: [[7, 199], [7, 461], [7, 125], [7, 193]] is too long
	arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml
	arch/arm/boot/dts/rk3288-evb-rk808.dt.yaml
	arch/arm/boot/dts/rk3288-firefly-beta.dt.yaml
	arch/arm/boot/dts/rk3288-firefly.dt.yaml
	arch/arm/boot/dts/rk3288-firefly-reload.dt.yaml
	arch/arm/boot/dts/rk3288-miqi.dt.yaml
	arch/arm/boot/dts/rk3288-phycore-rdk.dt.yaml
	arch/arm/boot/dts/rk3288-popmetal.dt.yaml
	arch/arm/boot/dts/rk3288-r89.dt.yaml
	arch/arm/boot/dts/rk3288-rock2-square.dt.yaml
	arch/arm/boot/dts/rk3288-rock-pi-n8.dt.yaml
	arch/arm/boot/dts/rk3288-tinker.dt.yaml
	arch/arm/boot/dts/rk3288-tinker-s.dt.yaml
	arch/arm/boot/dts/rk3288-veyron-brain.dt.yaml
	arch/arm/boot/dts/rk3288-veyron-fievel.dt.yaml
	arch/arm/boot/dts/rk3288-veyron-jaq.dt.yaml
	arch/arm/boot/dts/rk3288-veyron-jerry.dt.yaml
	arch/arm/boot/dts/rk3288-veyron-mickey.dt.yaml
	arch/arm/boot/dts/rk3288-veyron-mighty.dt.yaml
	arch/arm/boot/dts/rk3288-veyron-minnie.dt.yaml
	arch/arm/boot/dts/rk3288-veyron-pinky.dt.yaml
	arch/arm/boot/dts/rk3288-veyron-speedy.dt.yaml
	arch/arm/boot/dts/rk3288-veyron-tiger.dt.yaml
	arch/arm/boot/dts/rk3288-vyasa.dt.yaml


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

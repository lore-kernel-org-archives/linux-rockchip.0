Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D7AEC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Dec 2021 14:32:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fc28zInxZnXGQrwU2QV03n5ZqLvoOXG2zGtsFfCgiGQ=; b=uY67g6lapPrkv7
	K5WoAjgxfzjRS3f8PJH9hNXnXS/k4C/EHuwwMZUjfYcrAikrByAqROkkqnlmsyhWUYefx2Bln2Pyg
	TPKQRqDEF6j8C8rYBy1rI9KR3XFA24HrI0m5xEu2ViAN5mOR8Rje9mFhKNi6WKA2sE072X6lLluUO
	nXDeOuOpcn/YIWRR11DPKJUnIEXSSkMqUJFrqM7Mkjj8yVTHiAZt0KFIJ345Jyxs4D0qIM2eJFgDc
	xc+PhkJ6lxhvE0cgdrWN5fsbbesBXgODFAy22+XzGOXokza5IHsVXZ2yqfhYb26/mQOwrU/AfGCUb
	stAXg12v1XDPLh751fmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mzJhk-002oAG-Rw; Mon, 20 Dec 2021 14:31:56 +0000
Received: from mail-oi1-f174.google.com ([209.85.167.174])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzJdo-002mxG-9n; Mon, 20 Dec 2021 14:27:55 +0000
Received: by mail-oi1-f174.google.com with SMTP id t23so16021942oiw.3;
 Mon, 20 Dec 2021 06:27:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=zDWGu9cBBF+UZjp8vTj9QW+U99MkhuncHEZaTav2MHE=;
 b=qFlujaVy23K2ye2KiA16r2MieAFLHGAAs54dO76poXPQh/M+iLC1SRGEQQdgTdkhEX
 W5iLpMMCs7GEOkIdtpW+2DkjsB+glELZDy7tpHJrPCox5PYpuuD/nT+i7+K6LxNoU5bF
 jnpiEzSMIsV68cKc5Qg0esssq8r3TtJ7ST7sRP7Jc+AXja9j//HfH17P1xnxeN2qzrO0
 WtPHUgbEQbKippL0hhVT/gOJZnaZZTPNDpZI1HfsHn9ShPGn1kqvyhSEp81dVV6bvnDO
 uR4gvqvLzlxa3FfuXDacfT9xyAxPxdiu30O4dl1/Za1kHq0oyUb5ynpCwrbvaUD9bX+9
 /cGg==
X-Gm-Message-State: AOAM533437CaxfUWYpOwG62o1Ay9vdgymOvY58O4dCIZrbQTIcFsYHf9
 fOz75sj2YMlzMa53JLDLhg==
X-Google-Smtp-Source: ABdhPJymnJA4Z6UpMSbt9RnHYH7HHxzlTJRAorVIPXmvkAT2YhfCFGWf8mSZby1/CnTgxJObaa5ggA==
X-Received: by 2002:a54:4401:: with SMTP id k1mr18534287oiw.143.1640010470666; 
 Mon, 20 Dec 2021 06:27:50 -0800 (PST)
Received: from robh.at.kernel.org ([12.252.7.226])
 by smtp.gmail.com with ESMTPSA id g17sm3438953oiy.14.2021.12.20.06.27.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Dec 2021 06:27:50 -0800 (PST)
Received: (nullmailer pid 3388824 invoked by uid 1000);
 Mon, 20 Dec 2021 14:27:43 -0000
From: Rob Herring <robh@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: kernel@pengutronix.de, =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Peter Geis <pgwipeout@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Sandy Huang <hjc@rock-chips.com>, devicetree@vger.kernel.org,
 Andy Yan <andy.yan@rock-chips.com>, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org
In-Reply-To: <20211220110630.3521121-8-s.hauer@pengutronix.de>
References: <20211220110630.3521121-1-s.hauer@pengutronix.de>
 <20211220110630.3521121-8-s.hauer@pengutronix.de>
Subject: Re: [PATCH 07/22] dt-bindings: display: rockchip: dw-hdmi: Make
 unwedge pinctrl optional
Date: Mon, 20 Dec 2021 08:27:43 -0600
Message-Id: <1640010463.872107.3388823.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211220_062752_393454_3023C805 
X-CRM114-Status: GOOD (  11.14  )
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

On Mon, 20 Dec 2021 12:06:15 +0100, Sascha Hauer wrote:
> None of the upstream device tree files has a "unwedge" pinctrl
> specified. Make it optional.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml   | 1 +
>  1 file changed, 1 insertion(+)
> 

Running 'make dtbs_check' with the schema in this patch gives the
following warnings. Consider if they are expected or the schema is
incorrect. These may not be new warnings.

Note that it is not yet a requirement to have 0 warnings for dtbs_check.
This will change in the future.

Full log is available here: https://patchwork.ozlabs.org/patch/1570970


hdmi@200a0000: clock-names:0: 'iahb' was expected
	arch/arm/boot/dts/rk3228-evb.dt.yaml
	arch/arm/boot/dts/rk3229-evb.dt.yaml
	arch/arm/boot/dts/rk3229-xms6.dt.yaml

hdmi@200a0000: clock-names:1: 'isfr' was expected
	arch/arm/boot/dts/rk3228-evb.dt.yaml
	arch/arm/boot/dts/rk3229-evb.dt.yaml
	arch/arm/boot/dts/rk3229-xms6.dt.yaml

hdmi@200a0000: ports:port: 'endpoint@1' is a required property
	arch/arm/boot/dts/rk3229-xms6.dt.yaml

hdmi@200a0000: Unevaluated properties are not allowed ('reg', 'interrupts', 'pinctrl-0', 'resets', 'reset-names', 'ports' were unexpected)
	arch/arm/boot/dts/rk3228-evb.dt.yaml
	arch/arm/boot/dts/rk3229-evb.dt.yaml
	arch/arm/boot/dts/rk3229-xms6.dt.yaml

hdmi@ff3c0000: interrupts: [[0, 35, 4], [0, 71, 4]] is too long
	arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-a1.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-rock64.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-roc-pc.dt.yaml

hdmi@ff3c0000: ports:port: 'endpoint@0' is a required property
	arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-a1.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-rock64.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-roc-pc.dt.yaml

hdmi@ff3c0000: ports:port: 'endpoint@1' is a required property
	arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-a1.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-rock64.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-roc-pc.dt.yaml

hdmi@ff3c0000: Unevaluated properties are not allowed ('reg', 'interrupts', 'pinctrl-0', '#sound-dai-cells', 'ports' were unexpected)
	arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-a1.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-rock64.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3328-roc-pc.dt.yaml

hdmi@ff940000: clock-names:4: 'vpll' was expected
	arch/arm64/boot/dts/rockchip/rk3399-evb.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-ficus.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-firefly.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-dumo.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-inx.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-kd.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-khadas-edge-captain.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-khadas-edge-v.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-nanopi-m4b.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-nanopi-m4.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-nanopi-neo4.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-orangepi.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399pro-rock-pi-n10.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-rock960.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a-plus.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-sapphire.dt.yaml
	arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dt.yaml


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

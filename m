Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 814ACC02194
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Feb 2025 17:20:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=edshSqMVHNlNxCREzR6+5CUIrCFPFT0r522CDvJtIOs=; b=y2XTT2vqS04fwR
	S9j0PzbVDg7/9iFMFhGYxgy0IELcCZjY/+eYWsd70yKVzchfQ7ziCjjo0KT8lr7ReR+5g5MmQo+JV
	t4Q3ylYnc/ktCognkxzZpsQvBWwt23B0chvHu+zBsIxoin9Qf2HOUoy5Y02pJppw+y5MmfRkhIZpU
	sJHc4JE9s6m5Kd67H0Fs1OTPU0jsOUu9dXrHGGhbb0Y4BeERC9rBQykewWlCmtPNXKyUWZPKzVXBK
	xCaDiQNMC1uNxSYERluUGinj5depPETS3aZRu45MDFjc6tXyIZcf84emMj+EmyP8syNGqW+b9vR5n
	ZN2QxlLWx7y9Wlq4GrVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tg5Xw-00000006yXV-3Zso;
	Thu, 06 Feb 2025 17:20:12 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tg5WY-00000006yNF-3Onh;
	Thu, 06 Feb 2025 17:18:48 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1738862280; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=PPCYLM87aFcVCAfMPQQ0yXcTyrsvnyTkKS+eEJWcy9cBCCuvU9Z/z8+pzbkYFtSX/1MtKPTSysfLFbXWsfEn4byj3fWbAOF50Y5tLH18AvdCZkKxLHaumA6PPi+w7cpbrzAW/zHZKRqAzxiN4l2puMicJGcIhAlDALNZ/b9YfU8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1738862280; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=HVIqXYzlOehlZiy0ALlRjz1XQBncBUDd5NT43WUTgZ8=; 
	b=lPCdyF7Zdv6I6M84wss5fyglm2/LO3RG4Et3v4lfGLGQtmGbCACYz2VhVdDLcJWcdkQycgDbkuk4ZGGxHhKk3iAeh8IIV+awP5nEJB6tY9fg6a7T5kzzIZdXZPuU8y+dOu74c75bQ/v04kDe4qTY+pxoFi38JCRIwNMDaaZrC74=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1738862280;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=HVIqXYzlOehlZiy0ALlRjz1XQBncBUDd5NT43WUTgZ8=;
	b=Xnnm+nO0wx4RBQFTK/tSarsm6Bq5OMFkZ+7cIhAlPgfpa8rlnBCfdv+urPIUC2vV
	cVB821xhg1vXmN291QFqArQSM1Jav3BdpYYLbFovhHAs0as6IBcrW3FP/nqYb12ynyh
	Wy1JW0YmE72r82iNQ0hiaJt67LjAQrKfsPFHG18w=
Received: by mx.zohomail.com with SMTPS id 173886227382959.44952550211565;
	Thu, 6 Feb 2025 09:17:53 -0800 (PST)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org, Quentin Schulz <quentin.schulz@cherry.de>
Subject: Re: [PATCH v5 2/3] arm64: dts: rockchip: Add HDMI0 audio output for rk3588
 SoC
Date: Thu, 06 Feb 2025 12:17:51 -0500
Message-ID: <2781606.mvXUDI8C0e@earth>
In-Reply-To: <bfe9cb98-12ba-484c-95af-e5842edaab76@cherry.de>
References: <20250203171925.126309-1-detlev.casanova@collabora.com>
 <20250203171925.126309-3-detlev.casanova@collabora.com>
 <bfe9cb98-12ba-484c-95af-e5842edaab76@cherry.de>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250206_091846_903757_22CA49EC 
X-CRM114-Status: GOOD (  23.38  )
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
Cc: Algea Cao <algea.cao@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>, Kever Yang <kever.yang@rock-chips.com>, dri-devel@lists.freedesktop.org, Niklas Cassel <cassel@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, kernel@collabora.com, David Airlie <airlied@gmail.com>, Dragan Simic <dsimic@manjaro.org>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Robert Foss <rfoss@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, Sugar Zhang <sugar.zhang@rock-chips.com>, linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>, FUKAUMI Naoki <naoki@radxa.com>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Jonas Karlman <jonas@kwiboo.se>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Johan Jonker <jbx6244@gmail.com>, linux-arm-kernel@lists.infradead.org, Neil Armstrong <neil.armstrong@linaro.org>, Jianfeng Liu <liujianfeng1994@gmail.com>, Alexey Charkov <alchark@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tuesday, 4 February 2025 05:14:37 EST Quentin Schulz wrote:
> Hi Detlev,
> 
> On 2/3/25 6:16 PM, Detlev Casanova wrote:
> > Use the simple-audio-card driver with the hdmi0 QP node as CODEC and
> > the i2s5 device as CPU.
> > 
> > The simple-audio-card,mclk-fs value is set to 128 as it is done in
> > the downstream driver.
> > 
> > The #sound-dai-cells value is set to 0 in the hdmi0 node so that it can be
> > used as an audio codec node.
> > 
> > Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> > ---
> > 
> >   arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 17 +++++++++++++++++
> >   1 file changed, 17 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> > b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi index
> > 8cfa30837ce72..767bdfc06b7ec 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> > @@ -1369,6 +1369,22 @@ i2s9_8ch: i2s@fddfc000 {
> > 
> >   		status = "disabled";
> >   	
> >   	};
> > 
> > +	hdmi0_sound: hdmi0-sound {
> > +		compatible = "simple-audio-card";
> > +		simple-audio-card,format = "i2s";
> > +		simple-audio-card,mclk-fs = <128>;
> > +		simple-audio-card,name = "hdmi0";
> > +		status = "disabled";
> > +
> > +		simple-audio-card,codec {
> > +			sound-dai = <&hdmi0>;
> > +		};
> > +
> > +		simple-audio-card,cpu {
> > +			sound-dai = <&i2s5_8ch>;
> > +		};
> > +	};
> > +
> 
> This is an address/bus-less device, so I believe it needs to be put
> among other address/bus-less devices, which for Rockchip SoCs is at the
> top of the DT? c.f.
> https://www.kernel.org/doc/html/latest/devicetree/bindings/dts-coding-style.
> html
> 
> **I** would put it between the firmware and the pmu-a55 nodes.

I wasn't sure about this. It makes sense to move it with address-less devices, 
but the rk3399 device tree has it above the hdmi node, so I wanted to stay 
consistent with that.

> Tested-by: Quentin Schulz <quentin.schulz@cherry.de> # RK3588 Tiger Haikou
> 
> Thanks!
> Quentin





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

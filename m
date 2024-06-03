Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66EDEC25B75
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Jun 2024 13:03:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=niumL5wAKw/G8TJBmMX8sCT4NuBXto+6sRCmtxf3OyQ=; b=Va2rENt/mgY8MH
	RKAozZhtqha/3GAzfCc5jKV9TPwAapX6mBPL/22oRrsPAZPQ3HdR+EdlDcjnemlzSWYvgc0GOJCcL
	XWWIE9oFXWLYR9KRskosFdDhSi1qDpI4hF4wA5UhkyqPQXlrc0RrFOFkAVNSbcmRtLUMSsHtqXY7c
	Jo9wwQeEu71+bFmplPu85cfjcR5EUx5h7sakrUi4kUAZv2mhn91YwmlCHp+vMbeoK8/KRCTzpTYDX
	bP8nMQlxwL4DMX+tY/nok4iHbje17dqvFXnXA46X4u0kpOy00abYbquxSRPiVzVdIgD6T50597AKE
	XqWAZy7c3tu1yxq0C4pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sE7Lr-0000000GoG3-1ylg;
	Mon, 03 Jun 2024 13:03:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sE7Lo-0000000GoDg-0RCH;
	Mon, 03 Jun 2024 13:03:49 +0000
Received: from [213.70.33.226] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sE7LG-0007Q6-KA; Mon, 03 Jun 2024 15:03:14 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: neil.armstrong@linaro.org,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Mark Yao <markyao0591@gmail.com>, Andy Yan <andy.yan@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@collabora.com,
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>,
 Algea Cao <algea.cao@rock-chips.com>
Subject: Re: [PATCH 00/14] Add initial support for the Rockchip RK3588 HDMI TX
 Controller
Date: Mon, 03 Jun 2024 15:03:12 +0200
Message-ID: <11359776.NyiUUSuA9g@phil>
In-Reply-To: <ab0a6372-091b-4293-8907-a4b3ff4845c0@rock-chips.com>
References: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
 <a4b22708-e85d-448a-8145-244b49bca053@linaro.org>
 <ab0a6372-091b-4293-8907-a4b3ff4845c0@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240603_060348_176388_C21EFA0C 
X-CRM114-Status: GOOD (  22.69  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Montag, 3. Juni 2024, 14:14:17 CEST schrieb Andy Yan:
> Hi Neil:
> 
> On 6/3/24 16:55, Neil Armstrong wrote:
> > Hi Christian,
> > 
> > On 01/06/2024 15:12, Cristian Ciocaltea wrote:
> >> The RK3588 SoC family integrates a Quad-Pixel (QP) variant of the
> >> Synopsys DesignWare HDMI TX controller used in the previous SoCs.
> >>
> >> It is HDMI 2.1 compliant and supports the following features, among
> >> others:
> >>
> > .
> > 
> > ..
> > 
> >> * SCDC I2C DDC access
> >> * TMDS Scrambler enabling 2160p@60Hz with RGB/YCbCr4:4:4
> >> * YCbCr4:2:0 enabling 2160p@60Hz at lower HDMI link speeds
> >> * Multi-stream audio
> >> * Enhanced Audio Return Channel (EARC)
> > -> Those features were already supported by the HDMI 2.0a compliant HW, just
> > list the _new_ features for HDMI 2.1
> > 
> > I did a quick review of your patchset and I don't understand why you need
> > to add a separate dw-hdmi-qp.c since you only need simple variants of the I2C
> > bus, infoframe and bridge setup.
> > 
> > Can you elaborate further ? isn't this Quad-Pixel (QP) TX controller version
> > detectable at runtime ?
> > 
> > I would prefer to keep a single dw-hdmi driver if possible.
> 
> 
> 
> The QP HDMI controller is a completely different variant with totally different
> registers layout, see PATCH 13/14.
> I think make it a separate driver will be easier for development and maintenance.

I'm with Andy here. Trying to navigate a driver for two IP blocks really
sounds taxing especially when both are so different.

Synopsis also created a new dsi controller for the DSI2 standard, with
a vastly different registers layout.

I guess at some point there is time to say this really is a new IP ;-) .


Though while on that thought, I don't fully understand why both a compiled
under the dw_hdmi kconfig symbol. People going for a minimal kernel might
want one or the other, but not both for their specific board.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

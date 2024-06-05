Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E164C25B76
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 22:17:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=owZbB6b3SXQenXG4vFwLcCcf090AEFDeaVBxsJy7WJI=; b=QH2wnrwVDu897a
	gr+D6lVL3alJlGpkKHkpTFY77PFgh2D9DMiFglDoL1mpNIlTuPCbREKU4j3EvDCD4A6Vuz/1D5Qmk
	0ipl4yybkWISF9pU7K5cDc3VdmUGU8OCE5wRlBb1tcaIaeys4V/kobU/kW86+nfjGpLkm1T8BKr4w
	vX2MQSMQ/cBeCBgYGIp5Qz6vXRiszOOxWVc7+rrBNKeq6RCxQVJvsmKC1qkSii9+Uawc9tSA5+oEq
	f0OMU8CqRx7ePioDQ9xgNnmizOpta3t5WItjk0v8xMyHj49D5PKyi71JbO9b13HpNLgtcd6IApF3+
	/B4sauimus/3oVsWSRrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEywb-00000007jU0-2eRh;
	Wed, 05 Jun 2024 22:17:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEywY-00000007jTB-2GFQ;
	Wed, 05 Jun 2024 22:17:19 +0000
Received: from i53875b65.versanet.de ([83.135.91.101] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sEyvt-0003V2-CY; Thu, 06 Jun 2024 00:16:37 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Luis de Arquer <ldearquer@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@collabora.com,
 Alexandre ARNOUD <aarnoud@me.com>, Algea Cao <algea.cao@rock-chips.com>
Subject: Re: [PATCH 13/14] drm/bridge: synopsys: Add DW HDMI QP TX controller driver
Date: Thu, 06 Jun 2024 00:16:35 +0200
Message-ID: <2827569.XrmoMso0CX@diego>
In-Reply-To: <02e22411-e22e-41f7-8bca-95c8ef5a4346@gmail.com>
References: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
 <2554679.TLnPLrj5Ze@diego> <02e22411-e22e-41f7-8bca-95c8ef5a4346@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_151718_596217_20BAF43D 
X-CRM114-Status: GOOD (  13.80  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Mittwoch, 5. Juni 2024, 21:58:23 CEST schrieb Luis de Arquer:
> On 6/5/24 16:48, Heiko St=FCbner wrote:
> > Without this change, connecting to a DVI display does not work, and
> > reading the EDID ends in the "i2c read error" below.
> =

> I had a lot of problems initially with the vendor driver on my DVI =

> display, and am aware that several changes were required.
> =

> However, I tested Cristian patch and worked fine. All modes were =

> apparently detected from the display and they all worked. But maybe I =

> was just lucky and it was using a somehow cached table, I can't say.
> =

> This is an AOC DVI display from 2011 with a passive adapter.

For me it is an LG IPS235. On its native hdmi input I always get regular
1080p output. But on its DVI input I always ran into the i2c read error
before adding that change.

I guess I should determine which reads actually fail.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

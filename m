Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 869F4C27C55
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Jun 2024 12:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0nvLBdq501YJwY3wnjhOUzsgZfCMOJUswU0iXCyvP7o=; b=ZLKHbTXmIWIJQZ
	AuJOjowqcXLqXSI2iKQkRpCnEY1PsahyOMLRqMPSRfVGFsZCFmbl4ZwFovpzbqYvYYBdcL7o6Mcnl
	eJnPtIQ61tmaPIBKN0duFySON3W9XPTn4DCYM4xnqDOMZHyZER/zn8680w9JcyTdzPcpfvcaBaVxb
	dey4Aei4zSUMKfyHoCWr59l52hr1pwXHVMgVytxGoIeb/aBNJJDpWwVaGWTcIUY0SS09qD57UBMqp
	+ihu91cqY0/VZnpMmhjN0aB0Zwh7rFQSHXg3eX4e23tAQ3ObFNSv+6AUww2E8V+y4x9gC0fRJEFnl
	wmoHCp/HfPLHOmVf330Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGeRU-000000053Tj-0Kxs;
	Mon, 10 Jun 2024 12:48:08 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGeRI-000000053PW-0Ybv;
	Mon, 10 Jun 2024 12:47:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=PDcW4ddFM25iBuaw9WBcfANhoUIp0ZmdMGL6/1A9MuI=; b=VDP7Pa8yRDVENtZ6ort332sPJY
	xENPWswThgWVuIyVeUTSkbi7Ezsnhy50khi5ozA31ty9WeosuTFzKhWrPV8dproajadt+rSqdTm3m
	N/9yNUzJ6Bc5HI+/qO6o49WH1VCEg6cR798YJvB0Ofa032H3OPswNo9MTlvqR8fc76B6dkpT8akMc
	codod0YYw5Jz0K6IJ9CmWk6eQzYjKVDFMbyFo4224hGOcFJBN1ieM4cI/FJIooC1opOEes5JCtrgC
	rsJPv2V1XjdXQbwNz5yAPguw3nsCQ5ow+5iiVwL3rDRoaYABvisBH/wZHa/I1Pml4ZwrNxkpNCAvM
	KdbvUbVA==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGeRB-00000001QTf-2Ju5;
	Mon, 10 Jun 2024 12:47:54 +0000
Received: from i53875b65.versanet.de ([83.135.91.101] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sGeQw-0005xB-GD; Mon, 10 Jun 2024 14:47:34 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andy Yan <andy.yan@rock-chips.com>, Sandy Huang <hjc@rock-chips.com>,
 Jingoo Han <jingoohan1@gmail.com>, Inki Dae <inki.dae@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Lucas Stach <l.stach@pengutronix.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 kernel@pengutronix.de, patchwork-lst@pengutronix.de
Subject: Re: [PATCH 00/14] improve Analogix DP AUX channel handling
Date: Mon, 10 Jun 2024 14:47:33 +0200
Message-ID: <3604253.eFTFzoEnKi@diego>
In-Reply-To: <20240503151129.3901815-1-l.stach@pengutronix.de>
References: <20240503151129.3901815-1-l.stach@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_134753_011320_0A634253 
X-CRM114-Status: GOOD (  17.82  )
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

Am Freitag, 3. Mai 2024, 17:11:15 CEST schrieb Lucas Stach:
> Currently the AUX channel support in the Analogix DP driver is severely
> limited as the AUX block of the bridge is only initialized when the video
> link is to be enabled. This is okay for the purposes of link training,
> but does not allow to detect displays by probing for EDID. This series
> reworks the driver to allow AUX transactions before the video link is
> active.
> 
> As this requires to rework some of the controller initialization and
> also handling of both internal and external clocks, the series includes
> quite a few changes to add better runtime PM handling.
> 
> Lucas Stach (14):
>   drm/bridge: analogix_dp: remove unused platform power_on_end callback
>   drm/rockchip: analogix_dp: add runtime PM handling
>   drm/bridge: analogix_dp: register AUX bus after enabling runtime PM
>   drm/bridge: analogix_dp: handle clock via runtime PM
>   drm/bridge: analogix_dp: remove unused analogix_dp_remove
>   drm/bridge: analogix_dp: remove clk handling from
>     analogix_dp_set_bridge
>   drm/bridge: analogix_dp: move platform and PHY power handling into
>     runtime PM
>   drm/bridge: analogix_dp: move basic controller init into runtime PM
>   drm/bridge: analogix_dp: remove PLL lock check from
>     analogix_dp_config_video
>   drm/bridge: analogix_dp: move macro reset after link bandwidth setting
>   drm/bridge: analogix_dp: don't wait for PLL lock too early
>   drm/bridge: analogix_dp: simplify and correct PLL lock checks
>   drm/bridge: analogix_dp: only read AUX status when an error occured
>   drm/bridge: analogix_dp: handle AUX transfer timeouts

my knowledge of Analgix-dp internals is limited, but at least both
rk3288-veyron and rk3399 gru still had working displays with this series
applied and both device classes using the analogix-dp for their main
display.

So on rk3288-veyron and rk3399-gru
Tested-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

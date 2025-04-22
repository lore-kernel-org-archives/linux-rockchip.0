Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6294CC369C2
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Apr 2025 12:54:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h/9sK+H3eHS1uwwmX4QF9qoaROKerUlI/OhaDWQqkJI=; b=V9M6gc22aueAzd
	RHp+msG5NVF9u1rxNVTHY6pg4IdwppvBmMTwgmNIC2UJj32IKopaIBuJYUyqQaX+gjdR+2cSCMH86
	EGYGLW9cNNibe+FitkoAxjUFdJjhiw9du7z6u7RYGIjostgu4HSmEI29x2/oN7mn296aurex6k4O6
	ODA3Abj+qZyLiKo0LdvO4TnhlDSPPly5UtzFtiSX0opvioetuDUh0vBusD2zCXKZoC4+kebrFiZck
	wlCTS14lYiuoBMEUKtLtrNzYIHDXlks0Du+TxVbG5ldPIi1vR0KODaBaMbFDqIurdDY+pKox/h1++
	lkLWRa/BjgByDg6Titqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7D8n-00000007CNA-2HBr;
	Tue, 22 Apr 2025 12:54:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7C3u-0000000708g-3HTP;
	Tue, 22 Apr 2025 11:45:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=eduKEqp989VtzN3pDbGRSZ0xqVFdb4NEGh4iT4GHVrg=; b=RPdD3O+sR+4EnrNmrEOnEEmUMV
	/yKMQq0LSvT22Ew3S6R3GbyVqT7cYb3nD8Rnf3j/IiK2D1FvASRWsycgcxRiLJuacnp/t1w+kLr1Y
	GCSl/B5pvkyVH/G05Rf9xQdznVPNfqOZ38q+6/CoNxo3CzRs6Lck/RNGlVJx6abaliWuDxRoJATXb
	wDRoF027reZTKxbCGVsTHqttErf+jH8qS9LeyRN94b/3zPEKNMPr96CjCndhE/M9c4MrnY62rTtZd
	yy2vumGQ+j+wCNQGIVeTfKKkMgrWEMKl166XPhV6EgEfRr7HC4sBiDsexAT3898T9/y66GXZYm+rq
	RwpZglGQ==;
Received: from i53875b95.versanet.de ([83.135.91.149] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1u7C3H-0002kK-AM; Tue, 22 Apr 2025 13:44:35 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: (subset) [PATCH v8 00/13] Add eDP support for RK3588
Date: Tue, 22 Apr 2025 13:44:23 +0200
Message-ID: <174532226019.263993.6647221833577832330.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250310104114.2608063-1-damon.ding@rock-chips.com>
References: <20250310104114.2608063-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_044514_818038_80997EF5 
X-CRM114-Status: GOOD (  10.70  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org, dianders@chromium.org, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, maarten.lankhorst@linux.intel.com, mripard@kernel.org, linux-arm-kernel@lists.infradead.org, neil.armstrong@linaro.org, Dmitry Baryshkov <lumag@kernel.org>, hjc@rock-chips.com, linux-kernel@vger.kernel.org, boris.brezillon@collabora.com, tzimmermann@suse.de, andy.yan@rock-chips.com, krzk+dt@kernel.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Mon, 10 Mar 2025 18:41:01 +0800, Damon Ding wrote:
> Picked from:
> https://patchwork.kernel.org/project/linux-rockchip/list/?series=936932
> 
> These patchs have been tested with a 1536x2048p60 eDP panel on
> RK3588S EVB1 board, and HDMI 1080P/4K display also has been verified
> on RK3588 EVB1 board. Furthermore, the eDP display has been rechecked
> on RK3399 sapphire excavator board.
> 
> [...]

Applied, thanks!

[12/13] arm64: dts: rockchip: Add eDP0 node for RK3588
        commit: dc79d3d5e7c7b2c177b4a4ca84d20d271fb68da0
[13/13] arm64: dts: rockchip: Enable eDP0 display on RK3588S EVB1 board
        commit: 53862b991e79d8816d5ff54b5954d6a0fe1dcd4c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

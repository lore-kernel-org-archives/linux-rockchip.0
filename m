Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB129C52D7C
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Aug 2024 13:19:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zr3qopvmY5IOltoQtIn/KE/h6l+k6V9akfEKfYKP2CU=; b=tuKKcGS+CBHCI4
	CjvpW1sCxsQtdiO8afDAvPlSry75/ngCxdWfTNLtH+W+OArZcAcPnpBleOZMZPHrfCk0g1+EHTOJJ
	hbpQcxeVogGFDMg7NEp0WinEtGC1ZzyrPO7C2gkZp6wpJsE6GTB6O5Rv3BK3Vl7RV+dxB55ZjWi32
	6y8FDaIgFmUPLp4e3I/c6Oi4D0HBgwS1z9p05F2wCZOfW91Z6ZkHl4XRyP+Rqm/Zfb9a1FWGu6i9V
	s8zHc0c6zVln1wfieUHM4Wy03AFQjyVbvhgIM9ntrFBthWBOdUok44QqLnlvtcIojAS4nQuWSL68H
	jS+5tHsiyFGKPNbK0dlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdrQP-00000003q3l-38Sd;
	Tue, 13 Aug 2024 13:18:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdrPm-00000003puY-0MET;
	Tue, 13 Aug 2024 13:18:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=u74mvDQoeCXxOK3A7GukZyX7dsdADP3JWCfmDGUIEGM=; b=G244lL1ngDJeW4mSEkMPunTGgZ
	/ehrSjWm/ejw43wPeicvWorefz2lc/yZzFO9V++8XJA6BHY004sOLTnhHx1rJz5cY04Ckd6u0jRNx
	h/tJKWztwZmdKL4/33O0V+WL1HurI2lCZG1XhgieX+sUc/iNNE+ofdzPsqOktTecwwOZVbzrMS4IS
	GASCXYL8nNBHR47cVUG0wLVEjNVWuBI2x7+vFhxpsYOEfoZo4D9O8G6w2TWxYt8JLaQnuUijHWBfE
	YDJ/GX8SZ/s+tJ+SS4CobMFdwEkcfGiLetiny2/HOprCClkNqU/ZF+oXVsaZ9kkwAjC+7jGL6a4u8
	nxzQdBYQ==;
Received: from i53875b02.versanet.de ([83.135.91.2] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sdrP9-0001iC-Ii; Tue, 13 Aug 2024 15:17:39 +0200
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
 Sascha Hauer <s.hauer@pengutronix.de>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@collabora.com,
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>,
 Algea Cao <algea.cao@rock-chips.com>
Subject: Re: [PATCH v3 0/5] Add initial support for the Rockchip RK3588 HDMI TX
 Controller
Date: Tue, 13 Aug 2024 15:17:37 +0200
Message-ID: <2006431.fxN4lLDhpz@diego>
In-Reply-To: <20240807-b4-rk3588-bridge-upstream-v3-0-60d6bab0dc7c@collabora.com>
References: <20240807-b4-rk3588-bridge-upstream-v3-0-60d6bab0dc7c@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240813_061818_180564_3B289F8B 
X-CRM114-Status: GOOD (  25.83  )
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

Am Mittwoch, 7. August 2024, 13:07:22 CEST schrieb Cristian Ciocaltea:
> The Rockchip RK3588 SoC family integrates the Synopsys DesignWare HDMI
> 2.1 Quad-Pixel (QP) TX controller, which is a new IP block, quite
> different from those used in the previous generations of Rockchip SoCs.
> 
> The controller supports the following features, among others:
> 
> * Fixed Rate Link (FRL)
> * Display Stream Compression (DSC)
> * 4K@120Hz and 8K@60Hz video modes
> * Variable Refresh Rate (VRR) including Quick Media Switching (QMS)
> * Fast Vactive (FVA)
> * SCDC I2C DDC access
> * Multi-stream audio
> * Enhanced Audio Return Channel (EARC)
> 
> This is the last component that needs to be supported in order to enable
> the HDMI output functionality on the RK3588 based SBCs, such as the
> RADXA Rock 5B.  The other components are the Video Output Processor
> (VOP2) and the Samsung IP based HDMI/eDP TX Combo PHY, for which basic
> support has been already made available via [1] and [2], respectively.
> 
> Please note this is a reworked version of the original series, which
> relied on a commonized dw-hdmi approach.  Since the general consensus
> was to handle it as an entirely new IP, I dropped all patches related to
> the old dw-hdmi and Rockchip glue code - a few of them might still make
> sense as general improvements and will be submitted separately.
> 
> It's worth mentioning the HDMI output support is currently limited to
> RGB output up to 4K@60Hz, without audio, CEC or any of the HDMI 2.1
> specific features.  Moreover, the VOP2 driver is not able to properly
> handle all display modes supported by the connected screens, e.g. it
> doesn't cope with non-integer refresh rates.
> 
> A possible workaround consists of enabling the display controller to
> make use of the clock provided by the HDMI PHY PLL.  This is still work
> in progress and will be submitted later, as well as the required DTS
> updates.
> 
> To facilitate testing and experimentation, all HDMI output related
> patches, including those part of this series, are available at [3].
> 
> So far I could only verify this on the RADXA Rock 5B board.

On a rk3588-tiger-haikou (including its DSI hat and my preliminary DSI
driver) it also works.

Even with both DSI and HDMI at the same time. Both hdmi plugged in on
boot and also plugging it in during runtime of the board, generates a
clean image on my 1080p display.

So, series
Tested-by: Heiko Stuebner <heiko@sntech.de>




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

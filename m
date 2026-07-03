Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9389AC43458
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Jul 2026 18:33:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A/7g46rnJtg8W2gZXCfZnWxRSgXOV7JTz7rGZiBTc4s=; b=BjRq2zU9Wl1jiY
	jtgksF5ZGHvA+xM70X7g8k1n3VHLO0xzZmBaK1qcTAe3luFC9d2zJyCrxLY+n6ZnYkai8yjBAkvST
	MsbqYTx56iFhbjilI+tJ13NtboktM3CZTd5hMGRMeJpg355HVNxZwlQAG9VteGJ/eGRD5K69SC/IJ
	lrjv8xkKrFmKCdLxBpB0Klkv/+1UE6Nv5gWLW8O9499eP8/0rhTruKiISnzXYbW0SHzXK3Pq/IMd4
	zelLQfh3QfCZwUbWmAGu7/9TtOwkqD5oGpKYgCULxxbkTV9rC0vrH9wRyZXLEprxpEBrJd35qggxb
	Fan1OGyzT1ZgEjojKY7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfihW-00000007iGi-0sHO;
	Fri, 03 Jul 2026 18:33:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfihT-00000007iG3-1DvK;
	Fri, 03 Jul 2026 18:33:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=00oEUKbXqblY98GY99IjBpABdrFGvC9SalkPe3rfYJY=; b=JaiJG4NCQrh7UOwml5H8y1y6s4
	yqDBRMXUxAZMydcriv+Mcawda0XeZpT6vUQ/HEDJClr46CID+61qicGWPdiUYWGEnyxxUQ0HF3G6b
	YEMR8BFpzIccfcE0rxI5FrCgOxkWN94baj2bnZBDDNoTg/GhjsuXaVTibH2FDr+lQNUbOOpDcEEhw
	ZjkGbnIwd0UTi2sheyaxQxW7jcdRQDxIR1EXfOQ3JSJ0jNqG3kyShUW+1SU7zWeMvuCgtcePJ7AV8
	/Rdk8/hBWTJM1jAujFciN/H/cOd9+6X/MnYFdfJ+Mh621yA+5X1cW0jQ57vAYy3tu9rc5Os2DFST4
	jl1e6F7g==;
From: Heiko Stuebner <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com
Subject: Re: [PATCH v2] MAINTAINERS: Track dw-hdmi-qp under Rockchip DRM drivers
Date: Fri,  3 Jul 2026 20:33:00 +0200
Message-ID: <178310357191.42647.16730078751010845257.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260612-maintainers-rk-drm-upd-v2-1-3ff65fc41a93@collabora.com>
References: <20260612-maintainers-rk-drm-upd-v2-1-3ff65fc41a93@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260703_113319_332317_DF1A0296 
X-CRM114-Status: GOOD (  11.00  )
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


On Fri, 12 Jun 2026 13:01:29 +0300, Cristian Ciocaltea wrote:
> The DW HDMI QP TX library was developed for and is currently only used
> by Rockchip platforms.  Add it to the Rockchip DRM drivers section to
> ensure all relevant parties are kept in the loop on any changes.
> 
> As its file paths fall outside the generic wildcard patterns defined in
> the ARM/Rockchip SoC support section, also add the
> linux-rockchip@lists.infradead.org mailing list to avoid any
> notification gaps.
> 
> [...]

Applied, thanks!

[1/1] MAINTAINERS: Track dw-hdmi-qp under Rockchip DRM drivers
      commit: 01d082bbbd60c4468e88a97bc07052678339f9f6

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

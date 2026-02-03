Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 527B7E7FDD6
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Feb 2026 11:53:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hLkY7xEukyvYysdduUwHNiNaOvo7cuaC06afZSJfESE=; b=nOGuaM0/K7Hr5a
	B9HVgpxH8uwcoPP9puX5xcDoGYahkwb89axH6trBXEl79Fo0L126RiDqkio/3O/Z0iTn97F2hm/o4
	bPuD7u5d/fIWK4UeSTo2BEkIJpQAsOCO5+CBaXu/CdpRdxgO+GAqcWgqjdTw2plrQxidXicyzXLA3
	4+A9rcmQjI6m92i+HHwuUCh2pfaK/X7omaACq/oahfSJeuTWOcKNgnWU4niG5whgKfov3SarswcVQ
	gocnZYWl7ABbwbn8wlpgsfd8aBa2S577XISORq6rUJHzxhs4v9eA8+GzrCNG9i2zApNJWlu7o76iP
	4pYulzU/HYWLAtdx06iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnEyX-00000006ZIP-2WjF;
	Tue, 03 Feb 2026 11:53:45 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnEyT-00000006ZHX-3Y5v;
	Tue, 03 Feb 2026 11:53:43 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 4B3024E423DB;
	Tue,  3 Feb 2026 11:53:38 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id EED3760728;
	Tue,  3 Feb 2026 11:53:37 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 42835119A8888;
	Tue,  3 Feb 2026 12:53:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1770119615; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=czGxAqtWlC7CiVBQnNcTBd7QV+mqCq2IlCe+hizwtH0=;
	b=pGLrDq0FDlC6TZPzDwz+Q/LbCPms3wDALSsrNFAGRXrrJUMWn/+VlSWQN2QR1wDRN5t7R/
	4dzoNl826W3u5sMZpiUnAdxPkKb84cPrxTMxNDLahXGpiwPNmn9eS5238/Jp+bC+ex8+vX
	vbDhkjVeUStK9q7btu0T2fx76OX81Ua0754MhEjiyODMlnM/R7O8S56hvlNuX01P0qZM+G
	nlwC3jJMJKjoHhH2sq8CMgGpUNdNEwPZhhN6u26MXXTEcHuZ+OoKdCgPnRYERLalsXIgXs
	ne+a7qepIg13lOceMckrlU+BJr2gXQ4vfi5Pi4HuB/tssJGozFElfoz4tOiY2A==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org, 
 Damon Ding <damon.ding@rock-chips.com>
Cc: Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, 
 jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com, 
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, 
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
 festevam@gmail.com, inki.dae@samsung.com, sw0312.kim@samsung.com, 
 kyungmin.park@samsung.com, krzk@kernel.org, alim.akhtar@samsung.com, 
 jingoohan1@gmail.com, p.zabel@pengutronix.de, hjc@rock-chips.com, 
 heiko@sntech.de, andy.yan@rock-chips.com, dmitry.baryshkov@oss.qualcomm.com, 
 dianders@chromium.org, m.szyprowski@samsung.com, jani.nikula@intel.com, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
In-Reply-To: <20251217093321.3108939-1-damon.ding@rock-chips.com>
References: <20251217093321.3108939-1-damon.ding@rock-chips.com>
Subject: Re: (subset) [PATCH v8 00/18] Apply drm_bridge_connector and
 panel_bridge helper for the Analogix DP driver
Message-Id: <177011960346.1855144.4866699055858398856.b4-ty@bootlin.com>
Date: Tue, 03 Feb 2026 12:53:23 +0100
MIME-Version: 1.0
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260203_035342_042701_B10AA5C2 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
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


On Wed, 17 Dec 2025 17:33:03 +0800, Damon Ding wrote:
> PATCH 1 is to ensure the last bridge declares OP_EDID or OP_MODES or both.
> PATCH 2 is a small format optimization for struct analogid_dp_device.
> PATCH 3 is to perform mode setting in &drm_bridge_funcs.atomic_enable.
> PATCH 4 is to add a new parameter to store the point of next bridge.
> PATCH 5 is to make legacy bridge driver more universal.
> PATCH 6-11 are preparations for apply drm_bridge_connector helper.
> PATCH 12 is to apply the drm_bridge_connector helper.
> PATCH 13-15 are to move the panel/bridge parsing to the Analogix side.
> PATCH 16 is to attach the next bridge on Analogix side uniformly.
> PATCH 17-18 are to apply the panel_bridge helper.
> 
> [...]

Applied, thanks!

[01/18] drm/display: bridge_connector: Ensure last bridge determines EDID/modes detection capabilities
        commit: 3c05e956b85e70cbd5042e03f615b23ca4635385
[02/18] drm/bridge: analogix_dp: Formalize the struct analogix_dp_device
        commit: 10a2694fde68ba214eca7d24229094fc2427fddd
[03/18] drm/bridge: analogix_dp: Move &drm_bridge_funcs.mode_set to &drm_bridge_funcs.atomic_enable
        commit: cff3f89ffbdd4b6c43a117c01aaf5b290ff80803

Best regards,
-- 
Luca Ceresoli <luca.ceresoli@bootlin.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

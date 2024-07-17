Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7714C3DA4B
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jul 2024 06:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KLexVdPlfhEBNWbNEkVZIasoMa1M7jP3DTNIlKjvpxQ=; b=aJle94PTz3Um3F
	oQg2+tlogkMhctdUHCW8aRT/sZFybv7rBSVPl1RS5cvInLUe6OkpD03h2STdSYAi0dhlTXXQ7VU5U
	HY5QzwFrPUYDeV0+rcl3dLXYPa+i+nOGnpjqkofuEPXm1NXEqTeV9XEQdzcJu/RVA3mjq5vOlW31R
	Ck+iIjNtXAHmPWcZXtKNH2gXeLWqV8XfhTI2+qnu7SVqhSmhXevMr4hEpIiTMdg7D14mqntZ9KX4R
	Agr/HCu4ZGWzOFEaybk+hO6dt3oB+YG8gNQJzkn/QlMTLHlnPDcJQbXRzrjd5H1cAwiqfD8rMWYcb
	vHwRZjU/rbAwoxVvbBEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTyAo-0000000CqXF-3zNq;
	Wed, 17 Jul 2024 06:29:58 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTyAS-0000000CqRY-3gDW;
	Wed, 17 Jul 2024 06:29:38 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1721197774;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=XcMogaAUaZ3MeH9Rz27kLYrZiPWISfiW31C8HrmU3oc=;
	b=qikMfKZqXWx8jVfMM0XqFrblNKG6yB0RbQORKkwSHifzQBHyLNdKNN/ysn41q9OYaCNFfx
	DlDMCcM097yOduIVvMqMe8PSinsYCdC8UDsxXXhk+t/UYDKz1r6SW+Xv38ooC0y6nGDx9R
	eLWX/Tg/lFE5rkmZVwqffK2PM32RSCSygFFy1X0F5vx5C6cmEegd77rWHXw5T46PPqoQ7x
	mGgztZcM/p10Xhv5dBX45N2DCjqqklwdGWE39NgYIXkKARS/G5jTXOB6SUunPY7q2lnmtx
	fhvjIRNMk6YdbpKDtJ8wH0vJH2iAYphRXLpxY4d1TFcBCZ2NCA07hIfTeYJqEw==
To: linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org
Cc: heiko@sntech.de,
	hjc@rock-chips.com,
	andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	daniel@ffwll.ch,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Ondrej Jirman <megi@xff.cz>
Subject: [PATCH] drm/rockchip: dsi: Reset ISP1 DPHY before powering it on
Date: Wed, 17 Jul 2024 08:29:14 +0200
Message-Id: <6e0ce232acfe952970e9b37402fe08a3678aa43a.1721196758.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_232937_385689_8FDD452D 
X-CRM114-Status: UNSURE (   8.59  )
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

From: Ondrej Jirman <megi@xff.cz>

After a suspend and resume cycle, ISP1 stops receiving data, as observed
on the Pine64 PinePhone Pro, which is based on the Rockchip RK3399 SoC.
Re-initializing DPHY during the PHY power-on, if the SoC variant supports
initialization, fixes this issue.

[ dsimic: Added more details to the commit summary and description ]

Signed-off-by: Ondrej Jirman <megi@xff.cz>
Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index 4cc8ed8f4fbd..9ad48c6dfac3 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -1240,6 +1240,14 @@ static int dw_mipi_dsi_dphy_power_on(struct phy *phy)
 		goto err_phy_cfg_clk;
 	}
 
+	if (dsi->cdata->dphy_rx_init) {
+		ret = dsi->cdata->dphy_rx_init(phy);
+		if (ret < 0) {
+			DRM_DEV_ERROR(dsi->dev, "hardware-specific phy init failed: %d\n", ret);
+			goto err_pwr_on;
+		}
+	}
+
 	/* do soc-variant specific init */
 	if (dsi->cdata->dphy_rx_power_on) {
 		ret = dsi->cdata->dphy_rx_power_on(phy);

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

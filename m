Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68549C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Feb 2022 15:35:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZoyWYQzWgS9CCbN9jLApO3+zBzcpf4vz3KcJhZLpYo4=; b=fsbBMP3sFdds1O
	ym1SuEjE/kclxndMn0Z1Z6DBj6FUztlxMZf/QzeUfWEYoMYxhWsf1jUcOtF5/I/LhgfrRlY+vYMHb
	8b0BTXqwFjRdFstR2s+GuC8f/QIo2OD1SyA7K4zE3aZ8y0cXcyBO8Q1Isn4gUyB4ms1YW21VtGRI3
	D+LWp5yMhWdGFSFzyeaB0rtz74eyz7884E2zRw1lmdBjDZh7LBB57H7dByCOVvOQVoaL41kjGgB4X
	2tMrPy7+3/arZ7uKACWKNh5xJQwbCst2s374WCBMykQ+LDX5QmLVBeWL3rqZmZpFhAQEeRKGws2Ey
	yPF5m7hr4O8JbtHpGv7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJzrN-003KIN-0S; Tue, 15 Feb 2022 15:35:21 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJzk5-003GEz-FW; Tue, 15 Feb 2022 15:27:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 02C47615FD;
 Tue, 15 Feb 2022 15:27:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA093C36AE7;
 Tue, 15 Feb 2022 15:27:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1644938868;
 bh=BOnIhtOxhnn7VldcjnILH2G5d8hO49/zPZe3pqe3v6o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TQoQAqSkwYqJEcQdnK7DyqG/Z7mUzgn8esmBUoDC7kcirtLTIwLPhw+Z5NG6wW56Q
 x4QWigq1H724Y7HduJ7qPZ0A+IOT7ZS3gJHRZ5IWUDHbtFHWjyZhjrIlfAU8gFvS0x
 U1/xLjNN3xRwtCNKWQq9/y708fgpqksfcpYnH8ei5ff+KaC3z7mxR+ZF7cOqxL4PCF
 kbmS5/0RQAcow90TyQVYBaEC10d8O2K0zuqmRMfZLSaq6q1CgRuD1bgn3rnH8ezTEQ
 LtUljugxhDpMVX/YShdUrRJrOUPD4o9JdOddcJgNXclI3mwZyIu5/PrM9gBxsnF3me
 UJNgcToLu+vxQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Sascha Hauer <s.hauer@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>,
 Sasha Levin <sashal@kernel.org>, hjc@rock-chips.com, airlied@linux.ie,
 daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.16 25/34] drm/rockchip: dw_hdmi: Do not leave clock
 enabled in error case
Date: Tue, 15 Feb 2022 10:26:48 -0500
Message-Id: <20220215152657.580200-25-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220215152657.580200-1-sashal@kernel.org>
References: <20220215152657.580200-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220215_072749_607433_4088A2C9 
X-CRM114-Status: GOOD (  13.24  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

[ Upstream commit c0cfbb122275da1b726481de5a8cffeb24e6322b ]

The driver returns an error when devm_phy_optional_get() fails leaving
the previously enabled clock turned on. Change order and enable the
clock only after the phy has been acquired.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Link: https://patchwork.freedesktop.org/patch/msgid/20220126145549.617165-3-s.hauer@pengutronix.de
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 830bdd5e9b7ce..8677c82716784 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -529,13 +529,6 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
 		return ret;
 	}
 
-	ret = clk_prepare_enable(hdmi->vpll_clk);
-	if (ret) {
-		DRM_DEV_ERROR(hdmi->dev, "Failed to enable HDMI vpll: %d\n",
-			      ret);
-		return ret;
-	}
-
 	hdmi->phy = devm_phy_optional_get(dev, "hdmi");
 	if (IS_ERR(hdmi->phy)) {
 		ret = PTR_ERR(hdmi->phy);
@@ -544,6 +537,13 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
 		return ret;
 	}
 
+	ret = clk_prepare_enable(hdmi->vpll_clk);
+	if (ret) {
+		DRM_DEV_ERROR(hdmi->dev, "Failed to enable HDMI vpll: %d\n",
+			      ret);
+		return ret;
+	}
+
 	drm_encoder_helper_add(encoder, &dw_hdmi_rockchip_encoder_helper_funcs);
 	drm_simple_encoder_init(drm, encoder, DRM_MODE_ENCODER_TMDS);
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

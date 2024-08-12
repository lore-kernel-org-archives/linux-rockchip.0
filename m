Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F8B5C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Aug 2024 21:16:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IXgwTWa2/P9uUKDrgInVgIePt930dkUR5K7y2BuGyUI=; b=rkeE22gW+zp8ry
	Ai7Z8WkeG+1HXRzd+rs+FXLYPSCuZwWTseuMk9Q1GLs3OjRrr25zIb+3p35kScgbk4YpGbp7iYsI2
	jz2XJNZETUjwmu6kirNUDYF3hTw6qnzVSRXlAC9OZ4I01I/ngmw44uYP0fh1YcHGeqYqbz0L+3lWf
	RrCWL8e7hM73I1nH7wMtN+kklO5GbzYp5mKUeA6jjkOMUE5IuiDleR+lZj+i2IgXqWUxpgOiKT6KY
	NhF21E7kh/raSqXJq8WgNzc/hNNPzZXNK37U1Sawk7Rdc6InQsFNkuOsxRB5zzJtoCpXXSKsmWUoX
	hO0gDijIlMiBhJtPhkjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdcOw-00000001b0d-3ux8;
	Mon, 12 Aug 2024 21:16:26 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdcOa-00000001atQ-3pb4;
	Mon, 12 Aug 2024 21:16:26 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1723497354; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Fe5ghwtv51cemKxyVgRl/vXMQod2fpTHlKYIKERrxurZ40OzRQ2i1dozxhBnorzV+3CWGGe3lUPlUz3UZ4xYiWJlV3mKATMZ0A/igzbTmTTglzW58Flo/qSxwNB1c75n/KzWmtDL0JgrNnh33JLqcKLRHVpYtxHYaNIuANlIf+w=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1723497354; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=aHF9Tj4CypcAqmtUd6j+cQ8jXeZOh8MZ6KG/LdEOBBI=; 
	b=N/m+8J6AsoIV84VpjSuoFqO3XAut/yMuJjL3xpd0063WMl5idiaD1zmZRZxpCYSVmyM15WaxpJ6M+g3IxkYIzNMSMcdfqLjCCewhg6+g8FVchE4szLh0lfoNJG85hwZx+WQ9GjJ9kZx4VsH0sikIxMlViRMtRKxf5/KGO/vrCjI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=cristian.ciocaltea@collabora.com;
	dmarc=pass header.from=<cristian.ciocaltea@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1723497354;
	s=zohomail; d=collabora.com; i=cristian.ciocaltea@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=aHF9Tj4CypcAqmtUd6j+cQ8jXeZOh8MZ6KG/LdEOBBI=;
	b=cJTtPUPnMHFf3/R339ty5HqgZ8C3EuT4TxFeO7Dv9NDG78Sf5szz8LtZrs/3tu17
	3DaOYvz75UzyAqW5FhbYlhO9EvfsTDEj1dz0ILg3a/8SdmUaDunGOdzsZuNp7+qX2Ud
	fZucVdRGwySMbU+8Qn3yDas9hbpX54uZ/ewOx8dM=
Received: by mx.zohomail.com with SMTPS id 1723497352899890.4271470818969;
	Mon, 12 Aug 2024 14:15:52 -0700 (PDT)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 13 Aug 2024 00:15:10 +0300
Subject: [PATCH 3/4] drm/rockchip: dw_hdmi: Use devm_regulator_get_enable()
MIME-Version: 1.0
Message-Id: <20240813-dw-hdmi-rockchip-cleanup-v1-3-b3e73b5f4fd6@collabora.com>
References: <20240813-dw-hdmi-rockchip-cleanup-v1-0-b3e73b5f4fd6@collabora.com>
In-Reply-To: <20240813-dw-hdmi-rockchip-cleanup-v1-0-b3e73b5f4fd6@collabora.com>
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.1
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_141605_087981_154AF497 
X-CRM114-Status: GOOD (  12.55  )
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

The regulators are only enabled at bind() and disabled at unbind(),
hence replace the boilerplate code by making use of
devm_regulator_get_enable() helper.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 34 +++++------------------------
 1 file changed, 6 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 7d07039ef096..edfd877c98fc 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -77,8 +77,6 @@ struct rockchip_hdmi {
 	struct clk *ref_clk;
 	struct clk *grf_clk;
 	struct dw_hdmi *hdmi;
-	struct regulator *avdd_0v9;
-	struct regulator *avdd_1v8;
 	struct phy *phy;
 };
 
@@ -236,15 +234,13 @@ static int rockchip_hdmi_parse_dt(struct rockchip_hdmi *hdmi)
 		return ret;
 	}
 
-	hdmi->avdd_0v9 = devm_regulator_get(hdmi->dev, "avdd-0v9");
-	if (IS_ERR(hdmi->avdd_0v9))
-		return PTR_ERR(hdmi->avdd_0v9);
+	ret = devm_regulator_get_enable(hdmi->dev, "avdd-0v9");
+	if (ret)
+		return ret;
 
-	hdmi->avdd_1v8 = devm_regulator_get(hdmi->dev, "avdd-1v8");
-	if (IS_ERR(hdmi->avdd_1v8))
-		return PTR_ERR(hdmi->avdd_1v8);
+	ret = devm_regulator_get_enable(hdmi->dev, "avdd-1v8");
 
-	return 0;
+	return ret;
 }
 
 static enum drm_mode_status
@@ -602,18 +598,6 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
 		return ret;
 	}
 
-	ret = regulator_enable(hdmi->avdd_0v9);
-	if (ret) {
-		drm_err(hdmi, "failed to enable avdd0v9: %d\n", ret);
-		goto err_avdd_0v9;
-	}
-
-	ret = regulator_enable(hdmi->avdd_1v8);
-	if (ret) {
-		drm_err(hdmi, "failed to enable avdd1v8: %d\n", ret);
-		goto err_avdd_1v8;
-	}
-
 	if (hdmi->chip_data == &rk3568_chip_data) {
 		regmap_write(hdmi->regmap, RK3568_GRF_VO_CON1,
 			     HIWORD_UPDATE(RK3568_HDMI_SDAIN_MSK |
@@ -642,10 +626,7 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
 
 err_bind:
 	drm_encoder_cleanup(encoder);
-	regulator_disable(hdmi->avdd_1v8);
-err_avdd_1v8:
-	regulator_disable(hdmi->avdd_0v9);
-err_avdd_0v9:
+
 	return ret;
 }
 
@@ -656,9 +637,6 @@ static void dw_hdmi_rockchip_unbind(struct device *dev, struct device *master,
 
 	dw_hdmi_unbind(hdmi->hdmi);
 	drm_encoder_cleanup(&hdmi->encoder.encoder);
-
-	regulator_disable(hdmi->avdd_1v8);
-	regulator_disable(hdmi->avdd_0v9);
 }
 
 static const struct component_ops dw_hdmi_rockchip_ops = {

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

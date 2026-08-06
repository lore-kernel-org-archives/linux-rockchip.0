Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDE33C56205
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 00:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OWPfw9yfv1vyo36wLxss8QP1opa+nnt+h6/Zl4hTnEo=; b=lkMYJLFYsfu3Sg
	gRqohE2MmP4RofxvXhj5YA15ovdqWSOkwx6ghPClvtgWRu33Uj/kbmWVH+jg/NEyscZ9Cut9/acHy
	ZLsJ8K7yRmVqs/TX7+CHYcV6Af7HGX19zPM9uY7hlo/qh2kSk1csWsgbuyC5CZ+P71PzRgESeRHec
	XDxz5KUQUK9v4uIdWCLRwLzRHVOmf81qyreiXfBV9LiClpmxbY7f0ta2amzSxFME+SY1Y/NWaRf6j
	1TaR3rvxIDZ8UDA3AEvInJhwEMJwy7nAQWr2+yTQhm3YyOcQppwF6/lR5zbMUOlyYyGnBOPNDcXg1
	C2fDjEZ0UjUEMtBPkOwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrm8m-00000004gg8-1v3x;
	Thu, 06 Aug 2026 00:39:20 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrm8h-00000004gZx-2uHf;
	Thu, 06 Aug 2026 00:39:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1785976751;
	bh=AP7eZHdio4vr1je90N8ZUEV+jwBf45eOCcTIFRIldAQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=i0HgLfHCRm7qYesBa3vPxul0ZC8HHSXHfQbJGnHP2v3n7KmbYsjquR0nj8+GcXmwg
	 pnrjl64R7KH7zjskpP0VIvFi+tQbpV4O31oSddeVN6gS/G9KRNJdZBo7OAZVJTZOSf
	 0/vxvMORqygzSEdSHoN2dJgRXGZbGg2T5qcnjD/nkQUukZ0onmEU36AAxdvDBx3FpW
	 gpu9c2TJFd7W+UmNWOA5KTcha9QX8lTJsiwGDHlBgMNYCoXMihVY1WNA7AsbqXKuwC
	 WRf9enJW+xcyGCCUJy0Gq2AVGFT8Hyr9eDQgc+ccj7JpmloKAFupUqwCN4ngZZaCKa
	 qc5y9o74XGrdw==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id D682017E07B2;
	Thu, 06 Aug 2026 02:39:10 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 8A08D48002F; Thu, 06 Aug 2026 02:39:10 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Thu, 06 Aug 2026 02:39:09 +0200
Subject: [PATCH v10 03/21] drm/bridge: synopsys: dw-dp: Fix error handling
 for DP link enablement
MIME-Version: 1.0
Message-Id: <20260806-synopsys-dw-dp-improvements-v10-3-d84a26c303d6@collabora.com>
References: <20260806-synopsys-dw-dp-improvements-v10-0-d84a26c303d6@collabora.com>
In-Reply-To: <20260806-synopsys-dw-dp-improvements-v10-0-d84a26c303d6@collabora.com>
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2267;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=AP7eZHdio4vr1je90N8ZUEV+jwBf45eOCcTIFRIldAQ=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGpz161UODfVa+7Q+fOqoYnv8CPLiO/f3EaSA
 88OV5aDIwyRTYkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqc9etAAoJENju1/PI
 O/qa/LUP/AjRSyKo+9xZHWecuS69Qf0FQqlO9W4NU0R7iNDWwVvwkfMsSM9xFtqj+1ZZrHMpAem
 yQSd15+PUeKtoo49aVJZ3KMAWFuoCxChdrCchd5/QW6gjDNJV+xKIG0Ikhp+/MCfXR9hEboPgjd
 Nji0lljpQ5Nny/+Vp/Syvwls0FqIThV0GUVWroICEGk8V14bl1ji2okDlQHdKXlTRnFofuNihhk
 GqMIfcb0EjdezOMUf8BqANOh3RnQU3DmoXiR0LQKi/B8N/K4oqEra0O+4aqtDBp1SsrsEBxlrvb
 o8L6t8E4d+Y7YNpLQ2Olntd/yhMJmWCG3NxBqbBt3xdZatul+UCeAMcqINwk7h8Zk9GUy2kgWDX
 y+AKEC4xI2iEyM9CHGV591T9y8zItU8IvG/Udf6dRwatXwWxouvaTvmhHELMi1pOYyZW8JaJtf6
 z1jllC0NMRXX0yIVurAYoBYHQxSF82Ovh9tpuHNAKWh9kXDCiz6Z2A9k2Wjv3YYJpK5OqGPQrWX
 foWjCrNpxB5BhRkNPoVfoTEAKFI/veWTfA+N3ZjAg690jlJ36mAZ7zWYGnVhvi/3BkRrId0X9fl
 QiXRa7uuAgtFHUxvBIyoZJ7LN8lBVyL19VTmJaHFkZlObR8+VFrQa/YlITboGfgAhNeGS4b6qCT
 c6zzL/0kgEkavkN33aYwugw==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_173915_888898_83D22712 
X-CRM114-Status: GOOD (  15.20  )
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
Cc: devicetree@vger.kernel.org, Dmitry Baryshkov <lumag@kernel.org>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Sebastian Reichel <sebastian.reichel@collabora.com>, Alexey Charkov <alchark@flipper.net>, linux-rockchip@lists.infradead.org, Damon Ding <damon.ding@rock-chips.com>, Sashiko <sashiko-bot@kernel.org>, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

dw_dp_link_disable() may be called in atomic mode disable even when
dw_dp_link_enable() (or an earlier step) failed during atomic mode
enable as there is no error tracking. This would result in broken PHY
power state.

This is fixed by introducing a new enabled state in the link structure
to ensure the link disabling only happens if it has been properly
enabled in the first place.

The patch also adds missing error handling in dw_dp_link_enable()
itself to ensure the link enablement becomes an atomic operation.

Fixes: 86eecc3a9c2e ("drm/bridge: synopsys: Add DW DPTX Controller support library")
Reported-by: Sashiko <sashiko-bot@kernel.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-dp.c | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-dp.c b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
index 9ed335244442..9d46927ead4d 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-dp.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
@@ -280,6 +280,7 @@ struct dw_dp_link {
 	unsigned char revision;
 	unsigned int rate;
 	unsigned int lanes;
+	bool enabled;
 	u8 sink_count;
 	u8 vsc_sdp_supported;
 	struct dw_dp_link_caps caps;
@@ -1615,6 +1616,9 @@ static void dw_dp_link_disable(struct dw_dp *dp)
 {
 	struct dw_dp_link *link = &dp->link;
 
+	if (!link->enabled)
+		return;
+
 	if (dw_dp_hpd_detect(dp))
 		drm_dp_link_power_down(&dp->aux, dp->link.revision);
 
@@ -1624,6 +1628,7 @@ static void dw_dp_link_disable(struct dw_dp *dp)
 
 	link->train.clock_recovered = false;
 	link->train.channel_equalized = false;
+	link->enabled = false;
 }
 
 static int dw_dp_link_enable(struct dw_dp *dp)
@@ -1636,10 +1641,21 @@ static int dw_dp_link_enable(struct dw_dp *dp)
 
 	ret = drm_dp_link_power_up(&dp->aux, dp->link.revision);
 	if (ret < 0)
-		return ret;
+		goto err_phy_power_off;
 
 	ret = dw_dp_link_train(dp);
+	if (ret < 0)
+		goto err_link_power_down;
+
+	dp->link.enabled = true;
 
+	return 0;
+
+err_link_power_down:
+	drm_dp_link_power_down(&dp->aux, dp->link.revision);
+
+err_phy_power_off:
+	phy_power_off(dp->phy);
 	return ret;
 }
 

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

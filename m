Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAE0BC25B7E
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Jun 2024 13:14:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qLPUBlemdgqB3p94hs/QcmSSKaxBCBtXYsm1TRu3e9A=; b=0wJjjCBwyC2PsK
	AEu55bPj0c4swUP36yfDnXYrZsGtH3hv1ITGoza1oliDoYkwfdxal9mf+ucqrussxr/iNxRALts0b
	Ji27fiL5wBmE+kT5Hpc0/VdJMwe5DcxDgrIwsaayRFDEGOwlFPHlYiuFXUUx2yG9OWilVcQaCbeLo
	RvNumH6F+FhBs9Iuot6xv32eHVnuggQHXp3uZipou2Q3+RPvR9vt/DAlIu/OZ4+4T73JEYA4tYHrm
	602UE5BqFKuAxQNPT1HxZ2vZgPS1wM9V63ElxYHXYYqK1+ivFWamNesekUUj8k3ybv0GXwyUENAVO
	smcw6QzT9aWLZ4j5+2oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sDOYd-0000000Cew4-1ZAF;
	Sat, 01 Jun 2024 13:14:03 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sDOXo-0000000CeCb-1drG;
	Sat, 01 Jun 2024 13:13:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1717247591;
	bh=HWApbGy8pFS7Vsa2ZQei9h62S5jglttPFVuJl0Mc/wg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=agtYFt5DDg3nO7lz5aQBZfcHt7ybFymt5RNZ8V7F1OQviNjofhYujBm8El3xXarUR
	 nnoJjhRiL9BbHth0ks5MQStvyNpG1cSJ5aHsYfHHdRSHRO1lvwHniruBA1LQVAtS4t
	 B6U+BiF9dkmsrjN280u+545b2oeL5BWEuuJdvVJslEW31t5FPUuDMfDERbJCmK+cDv
	 ph6OW9gH/fz0eb/Ev2lkmqwLNsIqgpS9Kyg/ErRyg3/oRWuzZ8xcnA1pduFCW4Cf7q
	 FO3qTzNfU5mxfT3X/ijTSFBbavcSXKmB80T4D2U+KuNLB/+rGBT/B3pl3inSXp2pXG
	 l34MxYSQ8dW1w==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id B37BB37821AE;
	Sat,  1 Jun 2024 13:13:10 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Sat, 01 Jun 2024 16:12:32 +0300
Subject: [PATCH 10/14] drm/rockchip: dw_hdmi: Use
 devm_regulator_get_enable()
MIME-Version: 1.0
Message-Id: <20240601-b4-rk3588-bridge-upstream-v1-10-f6203753232b@collabora.com>
References: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
In-Reply-To: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, kernel@collabora.com, 
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>
X-Mailer: b4 0.14-dev-f7c49
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240601_061312_737613_692E2BA6 
X-CRM114-Status: GOOD (  12.26  )
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
2.45.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

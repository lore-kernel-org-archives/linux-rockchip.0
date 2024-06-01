Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DED0C25B7E
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Jun 2024 13:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U4IIdImBnYABSxRRDqsEfVpn2Z61babtzyktVf0ghQU=; b=Yp5majoszBZ50t
	DN48m2iGrtzVR768Ejio4dHhhPHAAsciOIdK05/XWp5K/TGqJhfuDyZK27EwIGjhXnqBl2uLAHdAz
	1FdiCglgx9lxOgHFnJMnB1cZuedIFJpz2cW3W5/TxhDVqEHkat301tKDn1CIyFL5cxZNfJaEvoIg+
	3P7h7j4jg/cCVTkXmu5uxjB9Bmx03cwADtvTrEYcq15Qz1mkKzPyhewmNArHefHHWh03Dvpg9Lsiy
	Pvgbc3k1kz0T125RDnMXQer/dvOzlKKMuHG4HrQmBJgR+QHIJxpl9AwcieuAwmZcQXyOJaNteD3e+
	Znc8B6d0gIQK1a20n83w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sDOYT-0000000Cent-1OPT;
	Sat, 01 Jun 2024 13:13:53 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sDOXl-0000000CeAg-2uhz;
	Sat, 01 Jun 2024 13:13:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1717247588;
	bh=0mW6zv2jpAmRuypZFslsUiSyUNREn50t/X59nw2jtlk=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=cf/VMEc21qNfU/WJBTBmLHBqbcmqRVYS3RqH/qBXMu/Jd0qvqOzr6B4CR/J60+wqo
	 a1iMFSndDV25HVl8B1DS0yV6D450GHob8ZEy/zlWCJBOQDkPAo+26fDQV/iVlFwVmc
	 8iHoW2KwxhZb/rSET3hnj5mC3xliStZ5NwcT9R+9YLj9uDfUd8bzctJjIYCr1j5wda
	 EdmjQ8Y1JF88WJtLC+ZMwj4HZYkR0C6WW67L6OHirk1+Elp2buheqDSdl4ZcztUIY2
	 92Hu+CBXNxDUve2tBZseTjUCwFtc1e10LSGTddV1tuhUAsIKUlNYXW8s0GWAUpC6By
	 iav1evuE2BqNQ==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 2E73637821F0;
	Sat,  1 Jun 2024 13:13:08 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Sat, 01 Jun 2024 16:12:30 +0300
Subject: [PATCH 08/14] drm/rockchip: dw_hdmi: Use modern drm_device based
 logging
MIME-Version: 1.0
Message-Id: <20240601-b4-rk3588-bridge-upstream-v1-8-f6203753232b@collabora.com>
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
X-CRM114-CacheID: sfid-20240601_061310_062911_2777FC9E 
X-CRM114-Status: GOOD (  11.65  )
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

Prefer drm_{err|info|dbg}() over deprecated DRM_DEV_{ERROR|INFO|DEBUG}()
logging macros.

Conversion done with the help of the following semantic patch, followed
by a few minor indentation adjustments:

@@
identifier T;
@@

(
-DRM_DEV_ERROR(T->dev,
+drm_err(T,
...)
|
-DRM_DEV_INFO(T->dev,
+drm_info(T,
...)
|
-DRM_DEV_DEBUG(T->dev,
+drm_dbg(T,
...)
)

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 24 +++++++++++-------------
 1 file changed, 11 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index fe33092abbe7..2509ce19313f 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -212,7 +212,7 @@ static int rockchip_hdmi_parse_dt(struct rockchip_hdmi *hdmi)
 
 	hdmi->regmap = syscon_regmap_lookup_by_phandle(np, "rockchip,grf");
 	if (IS_ERR(hdmi->regmap)) {
-		DRM_DEV_ERROR(hdmi->dev, "Unable to get rockchip,grf\n");
+		drm_err(hdmi, "Unable to get rockchip,grf\n");
 		return PTR_ERR(hdmi->regmap);
 	}
 
@@ -223,7 +223,7 @@ static int rockchip_hdmi_parse_dt(struct rockchip_hdmi *hdmi)
 	if (PTR_ERR(hdmi->ref_clk) == -EPROBE_DEFER) {
 		return -EPROBE_DEFER;
 	} else if (IS_ERR(hdmi->ref_clk)) {
-		DRM_DEV_ERROR(hdmi->dev, "failed to get reference clock\n");
+		drm_err(hdmi, "failed to get reference clock\n");
 		return PTR_ERR(hdmi->ref_clk);
 	}
 
@@ -233,7 +233,7 @@ static int rockchip_hdmi_parse_dt(struct rockchip_hdmi *hdmi)
 	} else if (PTR_ERR(hdmi->grf_clk) == -EPROBE_DEFER) {
 		return -EPROBE_DEFER;
 	} else if (IS_ERR(hdmi->grf_clk)) {
-		DRM_DEV_ERROR(hdmi->dev, "failed to get grf clock\n");
+		drm_err(hdmi, "failed to get grf clock\n");
 		return PTR_ERR(hdmi->grf_clk);
 	}
 
@@ -322,17 +322,16 @@ static void dw_hdmi_rockchip_encoder_enable(struct drm_encoder *encoder)
 
 	ret = clk_prepare_enable(hdmi->grf_clk);
 	if (ret < 0) {
-		DRM_DEV_ERROR(hdmi->dev, "failed to enable grfclk %d\n", ret);
+		drm_err(hdmi, "failed to enable grfclk %d\n", ret);
 		return;
 	}
 
 	ret = regmap_write(hdmi->regmap, hdmi->chip_data->lcdsel_grf_reg, val);
 	if (ret != 0)
-		DRM_DEV_ERROR(hdmi->dev, "Could not write to GRF: %d\n", ret);
+		drm_err(hdmi, "Could not write to GRF: %d\n", ret);
 
 	clk_disable_unprepare(hdmi->grf_clk);
-	DRM_DEV_DEBUG(hdmi->dev, "vop %s output to hdmi\n",
-		      ret ? "LIT" : "BIG");
+	drm_dbg(hdmi, "vop %s output to hdmi\n", ret ? "LIT" : "BIG");
 }
 
 static int
@@ -592,7 +591,7 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
 	ret = rockchip_hdmi_parse_dt(hdmi);
 	if (ret) {
 		if (ret != -EPROBE_DEFER)
-			DRM_DEV_ERROR(hdmi->dev, "Unable to parse OF data\n");
+			drm_err(hdmi, "Unable to parse OF data\n");
 		return ret;
 	}
 
@@ -600,26 +599,25 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
 	if (IS_ERR(hdmi->phy)) {
 		ret = PTR_ERR(hdmi->phy);
 		if (ret != -EPROBE_DEFER)
-			DRM_DEV_ERROR(hdmi->dev, "failed to get phy\n");
+			drm_err(hdmi, "failed to get phy\n");
 		return ret;
 	}
 
 	ret = regulator_enable(hdmi->avdd_0v9);
 	if (ret) {
-		DRM_DEV_ERROR(hdmi->dev, "failed to enable avdd0v9: %d\n", ret);
+		drm_err(hdmi, "failed to enable avdd0v9: %d\n", ret);
 		goto err_avdd_0v9;
 	}
 
 	ret = regulator_enable(hdmi->avdd_1v8);
 	if (ret) {
-		DRM_DEV_ERROR(hdmi->dev, "failed to enable avdd1v8: %d\n", ret);
+		drm_err(hdmi, "failed to enable avdd1v8: %d\n", ret);
 		goto err_avdd_1v8;
 	}
 
 	ret = clk_prepare_enable(hdmi->ref_clk);
 	if (ret) {
-		DRM_DEV_ERROR(hdmi->dev, "Failed to enable HDMI reference clock: %d\n",
-			      ret);
+		drm_err(hdmi, "Failed to enable HDMI reference clock: %d\n", ret);
 		goto err_clk;
 	}
 

-- 
2.45.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

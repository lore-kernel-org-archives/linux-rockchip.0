Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FDD9CD4F4A
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 May 2026 19:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xGLmZspgzEWM3R/DLAulyIFxhFJCXsmENTRzgnVyKM0=; b=FJMF0pyVvhzLIX
	bfmSjPco0yHkQ23gc2JfAyC/HVav6JSJIQsB41sDbmfX3Ax47b3BnPD+5RlB+0+RJ0UUadsJbEmvQ
	lDac36d0x5phmVBj25B3uxSI5GII5Yy9PlwunqTqAoqXbLCIcyRRgMIxi/F9yPkxROdDxkNuGxUKo
	Tv0Y9U/nh4raAedwoLtsxjpnHLISX55O9HnllV7xw0VXzJhZjcfawa5jfMkFcmtq7bDitpsgOyFRC
	bWtbwfpWO6sddEVBx6Z1U6mY+hRI1OthrPjXkcH5Wc/pmPETf1Gx4se/RNmuJBwowkmaYlp8BPBQd
	v+I+/b8B+RD4P49p+giQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP3nM-0000000GiAV-0Qqx;
	Mon, 18 May 2026 19:38:32 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP3n7-0000000Ghuq-1Fd3
	for linux-rockchip@lists.infradead.org;
	Mon, 18 May 2026 19:38:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1779133096; bh=qoxUWyo9gdy2DESJxBXzDzmP4EJJbwI5fCPj+AITnn4=;
 b=EChF0gE3aYWZ2+5GN6AaIz6vB0v2gqhMuuyLyLjeTdAkqo691IOHiKERBYNkoCZGObuO/Ow95
 SJRqB/LucGonwvMUVT8Hb7zGqhxcJ24sBDEXmh3OMhXRFkZrjQE/kta6pFU0h89dHGpNhD/aVTP
 XQSz7rdx6GE7UQEdrJOemJuUHNdJXPDlL2065e43Ek2l3fLQJF0d0eOoDCgibhL+3Zl7Kx+FC06
 k9rc7Yy72Z9SG9nlEOMOAMZlDyLHskPWoxpNYoAyVGP7wWBEMuC8KHFnQw9S1JEMKPmPQcpas1a
 e9enDqRk4WXgxDs5GzQG6x7bDrL+AStZfdfV0AEKVvjw==
X-Forward-Email-ID: 6a0b6aa1486b4b38b826fa0b
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 2.8.12
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 04/11] drm/rockchip: dw_hdmi: Inline resource lookup into bind()
Date: Mon, 18 May 2026 19:37:38 +0000
Message-ID: <20260518193748.2482823-5-jonas@kwiboo.se>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260518193748.2482823-1-jonas@kwiboo.se>
References: <20260518193748.2482823-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_123818_394807_22035545 
X-CRM114-Status: GOOD (  10.95  )
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

Inline rockchip_hdmi_parse_dt() into dw_hdmi_rockchip_bind() so the
probe path is easier to follow in one place. Also ensure failures in
bind() use dev_err_probe() so probe deferrals and errors are reported
consistently.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v2: No change
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 74 +++++++++------------
 1 file changed, 30 insertions(+), 44 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 12a7c989c4ee..8c26223b70b5 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -196,41 +196,6 @@ static const struct dw_hdmi_phy_config rockchip_phy_config[] = {
 	{ ~0UL,	     0x0000, 0x0000, 0x0000}
 };
 
-static int rockchip_hdmi_parse_dt(struct rockchip_hdmi *hdmi)
-{
-	struct device_node *np = hdmi->dev->of_node;
-	int ret;
-
-	hdmi->regmap = syscon_regmap_lookup_by_phandle(np, "rockchip,grf");
-	if (IS_ERR(hdmi->regmap)) {
-		dev_err(hdmi->dev, "Unable to get rockchip,grf\n");
-		return PTR_ERR(hdmi->regmap);
-	}
-
-	hdmi->ref_clk = devm_clk_get_optional_enabled(hdmi->dev, "ref");
-	if (!hdmi->ref_clk)
-		hdmi->ref_clk = devm_clk_get_optional_enabled(hdmi->dev, "vpll");
-
-	if (IS_ERR(hdmi->ref_clk)) {
-		ret = PTR_ERR(hdmi->ref_clk);
-		return dev_err_probe(hdmi->dev, ret, "failed to get reference clock\n");
-	}
-
-	hdmi->grf_clk = devm_clk_get_optional(hdmi->dev, "grf");
-	if (IS_ERR(hdmi->grf_clk)) {
-		ret = PTR_ERR(hdmi->grf_clk);
-		return dev_err_probe(hdmi->dev, ret, "failed to get grf clock\n");
-	}
-
-	ret = devm_regulator_get_enable(hdmi->dev, "avdd-0v9");
-	if (ret)
-		return ret;
-
-	ret = devm_regulator_get_enable(hdmi->dev, "avdd-1v8");
-
-	return ret;
-}
-
 static enum drm_mode_status
 dw_hdmi_rockchip_mode_valid(struct dw_hdmi *dw_hdmi, void *data,
 			    const struct drm_display_info *info,
@@ -578,18 +543,39 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
 	 * the required CRTC is added later.
 	 */
 	if (encoder->possible_crtcs == 0)
-		return -EPROBE_DEFER;
+		return dev_err_probe(dev, -EPROBE_DEFER,
+				     "failed to find possible crtcs\n");
 
-	ret = rockchip_hdmi_parse_dt(hdmi);
-	if (ret) {
-		return dev_err_probe(dev, ret, "Unable to parse OF data\n");
-	}
+	hdmi->regmap = syscon_regmap_lookup_by_phandle(np, "rockchip,grf");
+	if (IS_ERR(hdmi->regmap))
+		return dev_err_probe(dev, PTR_ERR(hdmi->regmap),
+				     "failed to get rockchip,grf\n");
+
+	hdmi->ref_clk = devm_clk_get_optional_enabled(dev, "ref");
+	if (!hdmi->ref_clk)
+		hdmi->ref_clk = devm_clk_get_optional_enabled(dev, "vpll");
+
+	if (IS_ERR(hdmi->ref_clk))
+		return dev_err_probe(dev, PTR_ERR(hdmi->ref_clk),
+				     "failed to get reference clock\n");
+
+	hdmi->grf_clk = devm_clk_get_optional(dev, "grf");
+	if (IS_ERR(hdmi->grf_clk))
+		return dev_err_probe(dev, PTR_ERR(hdmi->grf_clk),
+				     "failed to get grf clock\n");
+
+	ret = devm_regulator_get_enable(dev, "avdd-0v9");
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to enable avdd-0v9\n");
+
+	ret = devm_regulator_get_enable(dev, "avdd-1v8");
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to enable avdd-1v8\n");
 
 	hdmi->phy = devm_phy_optional_get(dev, "hdmi");
-	if (IS_ERR(hdmi->phy)) {
-		ret = PTR_ERR(hdmi->phy);
-		return dev_err_probe(dev, ret, "failed to get phy\n");
-	}
+	if (IS_ERR(hdmi->phy))
+		return dev_err_probe(dev, PTR_ERR(hdmi->phy),
+				     "failed to get phy\n");
 
 	index = of_property_match_string(np, "phy-names", "hdmi");
 	if (index >= 0) {
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

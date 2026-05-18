Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31A6CCD4F57
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 May 2026 19:38:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L8KrC4YpMbUsF6q5JzNI76SukjFYeXMUQsoE3CuUmyA=; b=iiV/Yi5nHjb57T
	jb4kxupR8HIefU0DagX3QbuX3MM29MBcREhs9aGMUkknAgnQow9WgRwfXc4u2iDihK2gv8V0GtPmk
	sMNnu3RtT8ysVi+2pIzm1/bWHBnvS5oN7k4oev+owdPne4jxs/fF427Q/CFlMTaeGWpcedFA4WUPr
	FhTuq5Q1D2i6SCrJ3W3LOwa9fWcXwbtiOlbyEDjwjNh0eYzXT0HbzXl+IMosd7tdrcPv5D3LEIx01
	jPplv90nMqXyqSYWQDQqRPkNG2HK6QcnYR9nC9QejqKHvngyezcRuMn1fXOZKot7gw0pbY9T+8DSW
	rHyjlYS7NAH/GqU9abJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP3n2-0000000Ghpj-0W41;
	Mon, 18 May 2026 19:38:12 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP3mw-0000000Ghm0-2msn
	for linux-rockchip@lists.infradead.org;
	Mon, 18 May 2026 19:38:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1779133085; bh=pzma+IDa02TNdDXAZyn/iNzxfLzVJhTpHCwYXbJ3+Ac=;
 b=foF8Gw4/kakkhSYI33IAk++ha4e9SNquvlDMGOJhgplsuEZ4/3mRV7eObm1SBVsxxpQs/meMO
 foagEqlzHtxNN3ADVoEoXg4WtrpIOCBAg0NoIOQ6dPkNoPPkyUnoITU6YFi/4q1u0+WaFyI/XtL
 mXu/EfDeB/Ei2JT/Mjm9jsDaVwx7do92c+yjpx6YQRWtYvl67kR8/KtB55htcoZ23V1AsGeStuI
 4Zudya9+amKRWdJe2a4fRf7FuQU9opdA/XkMmHR+pKF0pRQz06iF+KGE3KLNbaO4D7xc0DM5WmX
 q8L094I/gqjNysWvWgDOsNPeWTkRtUIyEKdwqE3kfE8Q==
X-Forward-Email-ID: 6a0b6a9a486b4b38b826f9d5
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
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
Subject: [PATCH v2 02/11] drm/rockchip: dw_hdmi: Use local dev variable consistently in bind()
Date: Mon, 18 May 2026 19:37:36 +0000
Message-ID: <20260518193748.2482823-3-jonas@kwiboo.se>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260518193748.2482823-1-jonas@kwiboo.se>
References: <20260518193748.2482823-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_123806_803539_77482CF1 
X-CRM114-Status: UNSURE (   9.34  )
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

Replace indirect struct device accesses via hdmi->dev and pdev->dev with
the local dev parameter already available in dw_hdmi_rockchip_bind(),
for consistency and readability.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v2: No change
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index fd7cc1572a40..0d5d60c315c6 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -550,16 +550,15 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
 	if (!drv_data)
 		return -ENODEV;
 
-	hdmi = devm_kzalloc(&pdev->dev, sizeof(*hdmi), GFP_KERNEL);
+	hdmi = devm_kzalloc(dev, sizeof(*hdmi), GFP_KERNEL);
 	if (!hdmi)
 		return -ENOMEM;
 
-	plat_data = devm_kmemdup(&pdev->dev, drv_data,
-				 sizeof(*drv_data), GFP_KERNEL);
+	plat_data = devm_kmemdup(dev, drv_data, sizeof(*drv_data), GFP_KERNEL);
 	if (!plat_data)
 		return -ENOMEM;
 
-	hdmi->dev = &pdev->dev;
+	hdmi->dev = dev;
 	hdmi->plat_data = plat_data;
 	hdmi->chip_data = plat_data->phy_data;
 	plat_data->phy_data = hdmi;
@@ -581,13 +580,13 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
 
 	ret = rockchip_hdmi_parse_dt(hdmi);
 	if (ret) {
-		return dev_err_probe(hdmi->dev, ret, "Unable to parse OF data\n");
+		return dev_err_probe(dev, ret, "Unable to parse OF data\n");
 	}
 
 	hdmi->phy = devm_phy_optional_get(dev, "hdmi");
 	if (IS_ERR(hdmi->phy)) {
 		ret = PTR_ERR(hdmi->phy);
-		return dev_err_probe(hdmi->dev, ret, "failed to get phy\n");
+		return dev_err_probe(dev, ret, "failed to get phy\n");
 	}
 
 	index = of_property_match_string(np, "phy-names", "hdmi");
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

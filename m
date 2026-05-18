Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A63E0CD4F59
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 May 2026 19:48:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4JixaRkEom8UXv+FPjkkWTOaJbQy3kvP1OlsYYxAOz8=; b=0LrBQKvJcDoDk4
	WGMc+igmMhaaORRJ806z/IqThOmj6ocxC2k67UKlaoT2z5Aly2kbkRV6guVFTfvTsrnvk0eZ2TE/E
	qFn/JvG7zS36tudFb71ek212d2+A2cGvAFCAopIlATNpCwGv3K3f3tZTqoLFbaQrvXLcxQDYlO7ar
	ZsoVix1U2+emag7QXPkRXgE6D2O83MwUpPZCIRZQGvCMKVoxACa5jECmezBQlBoFgU+LoxtvD2Sr3
	nEBYjRN8+v10TPdZgSZImnwgb6l801lOwmA0vmRexxTlEX6gEfUxgunucW0KeW46D3dJoQGNKkM/i
	IpNB2le/MtAReEOPEjaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP3x8-0000000GlrR-2sj2;
	Mon, 18 May 2026 19:48:38 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP3x3-0000000GleW-2wWP
	for linux-rockchip@lists.infradead.org;
	Mon, 18 May 2026 19:48:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1779133710; bh=7JC4z5SSlIB4qdrFliBTqw3gKNDB+YCBzwjUWTmrrdA=;
 b=dQ6EBiOTvM5agiBBryecJbdr+jYuxPaEqYwUzwvbxaOGcHJzjj4Wsr3bazUgh53o8hBBixQMg
 Qzeg4+6fNGB1h5CaTare6N+4s0ghrHYbf+kM8yNZz61wKuARc36zytS1W4fJrR9d387IjpYExsb
 lXiNjv00sT2RNGLY+ks3LNv1BO1WAJMoWHWCUud+WaqoWtnU3EtfzqymZXYFQEpvkfpGRB9pCWA
 YhS8nx/sr+ibtmBJ4n/yYcuUgHOKIc/oilrX4FeUV2ri0X+Ew6hDDiLF7FZoCP4ioOQI0LaQZJL
 SzHNsYUxWSavwerqA+RVm8uEDNbASQKV1zBTGq8Y1R2g==
X-Forward-Email-ID: 6a0b6d0ab74b0ebd362eeefc
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 2.8.12
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: dri-devel@lists.freedesktop.org,
	linux-amlogic@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 08/13] drm/meson: dw-hdmi: Use local dev variable consistently in bind()
Date: Mon, 18 May 2026 19:47:36 +0000
Message-ID: <20260518194744.2483580-9-jonas@kwiboo.se>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260518194744.2483580-1-jonas@kwiboo.se>
References: <20260518194744.2483580-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_124836_138249_B32E491D 
X-CRM114-Status: UNSURE (   9.24  )
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

Replace indirect struct device accesses via pdev->dev with the local dev
parameter already available in meson_dw_hdmi_bind(), for consistency and
readability.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/gpu/drm/meson/meson_dw_hdmi.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/meson/meson_dw_hdmi.c b/drivers/gpu/drm/meson/meson_dw_hdmi.c
index 30099bf71aad..fcd2426af9fc 100644
--- a/drivers/gpu/drm/meson/meson_dw_hdmi.c
+++ b/drivers/gpu/drm/meson/meson_dw_hdmi.c
@@ -671,9 +671,9 @@ static int meson_dw_hdmi_bind(struct device *dev, struct device *master,
 
 	DRM_DEBUG_DRIVER("\n");
 
-	match = of_device_get_match_data(&pdev->dev);
+	match = of_device_get_match_data(dev);
 	if (!match) {
-		dev_err(&pdev->dev, "failed to get match data\n");
+		dev_err(dev, "failed to get match data\n");
 		return -ENODEV;
 	}
 
@@ -771,7 +771,7 @@ static int meson_dw_hdmi_bind(struct device *dev, struct device *master,
 		return PTR_ERR(meson_dw_hdmi->hdmi);
 	}
 
-	meson_dw_hdmi->bridge = of_drm_find_and_get_bridge(pdev->dev.of_node);
+	meson_dw_hdmi->bridge = of_drm_find_and_get_bridge(dev->of_node);
 	if (!meson_dw_hdmi->bridge) {
 		devm_free_irq(dev, irq, meson_dw_hdmi);
 		dw_hdmi_remove(meson_dw_hdmi->hdmi);
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

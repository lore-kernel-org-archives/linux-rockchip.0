Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79C67CD5BB0
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 May 2026 18:38:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VJh5B52Gn3JiuPCj/M23nscUmfyy1DJVWMwlfrxLaJ8=; b=a7eS65U+yrS/+3
	ADhueFfRUfbxJmDj0BmZLSbnckA/OQ4hlfWr/JoSc38cUGL0jj8fbT6Wzb7Kx3OcmoY5s35hPq0KA
	fGwkY4LS1W+zDtjBk3/NV0Lm1ZeS9c0qBLyuaA6kmjMCzsp7XfWSZdP/DZt82VKoKelqlmx76LdjL
	re/mCj1qZlZe+GJNWweMC12r0shPQdKqSEVcpSFpeJ0sRaUAC/5jcdtUbNdO6S2uDJo6bsKD/YHRu
	abo53gj9c8tbX3/il4rYWSDs7c3B8HIwH2uO69KXdrV5XTwiw+VOLK9nUY56lRI062ImILtYDYUj0
	jQVnVjXgqjoJjSM+99EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPlok-00000005T1g-0est;
	Wed, 20 May 2026 18:38:54 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPloR-00000005ShU-2thy;
	Wed, 20 May 2026 18:38:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1779302313;
	bh=PmbgpZbPE5xAfNkRsAV4jpU2oQf+BxCJwVrQ+NHqNVE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=AdN4NZLXPGN4LnrKEoAwY3AyK0vYPMpXilcPSQ8pFV5k4jFCmM8KSgQSFeLz8c+xl
	 V5Ow3Wnm7PVVHJClqFWQt3YTPuh0ln5elJFVeOm7vBuuvFm4VdymPXgub4BC7n1yHe
	 nwINVMRiuGiHbUE9fnhr1JXcQdsJHC9k2QM0336ysYaeaEI/NLNXvKbt3HHB0gbRm1
	 MhI/eCm3yFasVX6ezk4sUnWsiVk++aOkSacC8AwpfmdnNx+CzqEKCPAQ5kTw9PS7wl
	 6Qr/I6vIyiOoSNVO6LYMT0l7/2RSQcwG5Y82RAVdpAJYmKrFJLFWD5Wp5RcBNlTGj+
	 yBsUdOIrbaW2g==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 4E24217E143E;
	Wed, 20 May 2026 20:38:33 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Wed, 20 May 2026 21:38:14 +0300
Subject: [PATCH v6 03/22] drm/display: scdc_helper: Add macro to simplify
 debugging
MIME-Version: 1.0
Message-Id: <20260520-dw-hdmi-qp-scramb-v6-3-24b74603b782@collabora.com>
References: <20260520-dw-hdmi-qp-scramb-v6-0-24b74603b782@collabora.com>
In-Reply-To: <20260520-dw-hdmi-qp-scramb-v6-0-24b74603b782@collabora.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, 
 Daniel Stone <daniels@collabora.com>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
X-Mailer: b4 0.15.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_113835_882992_3712A9B9 
X-CRM114-Status: UNSURE (   9.42  )
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

Introduce the drm_scdc_dbg() wrapper over drm_dbg_kms() to help getting
rid of the boilerplate around prefixing the debug messages with the
connector information.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/display/drm_scdc_helper.c | 24 +++++++++---------------
 1 file changed, 9 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_scdc_helper.c b/drivers/gpu/drm/display/drm_scdc_helper.c
index df878aad4a36..cb6632346aad 100644
--- a/drivers/gpu/drm/display/drm_scdc_helper.c
+++ b/drivers/gpu/drm/display/drm_scdc_helper.c
@@ -55,6 +55,10 @@
 
 #define SCDC_I2C_SLAVE_ADDRESS 0x54
 
+#define drm_scdc_dbg(connector, fmt, ...)					\
+	drm_dbg_kms((connector)->dev, "[CONNECTOR:%d:%s] " fmt,			\
+		    (connector)->base.id, (connector)->name, ##__VA_ARGS__)
+
 /**
  * drm_scdc_read - read a block of data from SCDC
  * @adapter: I2C controller
@@ -158,9 +162,7 @@ bool drm_scdc_get_scrambling_status(struct drm_connector *connector)
 
 	ret = drm_scdc_readb(connector->ddc, SCDC_SCRAMBLER_STATUS, &status);
 	if (ret < 0) {
-		drm_dbg_kms(connector->dev,
-			    "[CONNECTOR:%d:%s] Failed to read scrambling status: %d\n",
-			    connector->base.id, connector->name, ret);
+		drm_scdc_dbg(connector, "Failed to read scrambling status: %d\n", ret);
 		return false;
 	}
 
@@ -188,9 +190,7 @@ bool drm_scdc_set_scrambling(struct drm_connector *connector,
 
 	ret = drm_scdc_readb(connector->ddc, SCDC_TMDS_CONFIG, &config);
 	if (ret < 0) {
-		drm_dbg_kms(connector->dev,
-			    "[CONNECTOR:%d:%s] Failed to read TMDS config: %d\n",
-			    connector->base.id, connector->name, ret);
+		drm_scdc_dbg(connector, "Failed to read TMDS config: %d\n", ret);
 		return false;
 	}
 
@@ -201,9 +201,7 @@ bool drm_scdc_set_scrambling(struct drm_connector *connector,
 
 	ret = drm_scdc_writeb(connector->ddc, SCDC_TMDS_CONFIG, config);
 	if (ret < 0) {
-		drm_dbg_kms(connector->dev,
-			    "[CONNECTOR:%d:%s] Failed to enable scrambling: %d\n",
-			    connector->base.id, connector->name, ret);
+		drm_scdc_dbg(connector, "Failed to enable scrambling: %d\n", ret);
 		return false;
 	}
 
@@ -248,9 +246,7 @@ bool drm_scdc_set_high_tmds_clock_ratio(struct drm_connector *connector,
 
 	ret = drm_scdc_readb(connector->ddc, SCDC_TMDS_CONFIG, &config);
 	if (ret < 0) {
-		drm_dbg_kms(connector->dev,
-			    "[CONNECTOR:%d:%s] Failed to read TMDS config: %d\n",
-			    connector->base.id, connector->name, ret);
+		drm_scdc_dbg(connector, "Failed to read TMDS config: %d\n", ret);
 		return false;
 	}
 
@@ -261,9 +257,7 @@ bool drm_scdc_set_high_tmds_clock_ratio(struct drm_connector *connector,
 
 	ret = drm_scdc_writeb(connector->ddc, SCDC_TMDS_CONFIG, config);
 	if (ret < 0) {
-		drm_dbg_kms(connector->dev,
-			    "[CONNECTOR:%d:%s] Failed to set TMDS clock ratio: %d\n",
-			    connector->base.id, connector->name, ret);
+		drm_scdc_dbg(connector, "Failed to set TMDS clock ratio: %d\n", ret);
 		return false;
 	}
 

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

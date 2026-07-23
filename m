Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEA7AC53215
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jul 2026 22:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GzDXBW0S6eWuX7rSgMIdgTmgG5ioWXIUPBgIFuR9EUs=; b=AxKtNIxqQ71o3i
	Hacl8feT49c310KM8d9vYn72A/KqGxKbLEqH0YVLESOr9PNL+f6ka0Q2tFyJXS8pb8hopLL5tHj77
	zFhbnanDUjPPElg/0lAtVlNfpTA8npv7RY+3j9ypLjjvDMI5iRglJ2gtb9hot3be+YGcB+yHQHjxf
	YPnQ3pRwlDjNogMC/+Q09ZnIsaCaOkvbFCGuknJPn53JdGnsKicQvWz5oNSnfRbfgxiRM0cYHwjJw
	dJSoBKijJWzkPIag39IqK0VRxkwEwBYq0HhWwwH4/lAtMAWMv2xvsvH3ljexcTh3QCWCn5qBTijbp
	0BANbd6xVU7DSeCkUd5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wn1jd-0000000FAV8-0ZLo;
	Thu, 23 Jul 2026 22:17:45 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wn1jN-0000000FADJ-3qzo;
	Thu, 23 Jul 2026 22:17:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784845042;
	bh=9OEEVTGH6CtYBorsugsyey8Z+5Bz4/YUYRXLfK0S0LI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=iT9Wi0cAWTk0BPVkRYcxlGX3MliTvt/gODTwhFi4S0nfu9V/IBde4G62OY1yd00Kw
	 iJcyaCzuqpPJ1517o0eqJ2qgwPAAfz0sOVrurasLJyilM0UEZxyI6Fa+oElt6nMhxZ
	 LI26p1u/ZznLKxEpI/Q+u/zTWcmwRMEVgtsUpjBsEbLPcFelJsKEpRz/072136dFGG
	 CkHW3J/zZ0AG4lzcGdFp/v7Fw6YkehxjjknVmRgGPMGu5Cl8iRXLDsl1nIpf+Ceddi
	 6t5Z6Wu33kg8P5JxprZm0J/L6CEi5BK4zT75SkVqkZfFTVYIzWu1YqjROKTEWwlWjU
	 7CFqYuqwWr2Ow==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id AC39217E38B5;
	Fri, 24 Jul 2026 00:17:22 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 159B4480038; Fri, 24 Jul 2026 00:17:22 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 24 Jul 2026 00:17:15 +0200
Subject: [PATCH v5 07/15] drm/bridge: Add out-of-band HPD notify handler
MIME-Version: 1.0
Message-Id: <20260724-synopsys-dw-dp-improvements-v5-7-9445c2e87441@collabora.com>
References: <20260724-synopsys-dw-dp-improvements-v5-0-9445c2e87441@collabora.com>
In-Reply-To: <20260724-synopsys-dw-dp-improvements-v5-0-9445c2e87441@collabora.com>
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
 Luca Ceresoli <luca.ceresoli@bootlin.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2377;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=9OEEVTGH6CtYBorsugsyey8Z+5Bz4/YUYRXLfK0S0LI=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGpikvEEFbg1F+E1M6qoMRfvy0KuRci4qdYC6
 V79mAVPRAvWn4kCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqYpLxAAoJENju1/PI
 O/qarzAQAJdojaS8SDGjiYlZdLf0MSDQ65NzfF7jQsJfIDqC+0s7ey9pDH+0dZZGJIqlBr6xblz
 wXU+f+LBaxkYcKbHKC4WFAxiaWim5PeAJJM8hkS9q1YvuO+bHiZJAi39YfopEAxlAfUBF7BDpm9
 hMq/UJD/gvzRC4PgqJDxo29UcRiHqyw/wwFkO1K+J+9wZij09KuwbdSF/tGhbqTVrS0kBfQpzZj
 bMC3OSSBBUQYLfPe0tlVEpMDA6m6xrpsJUnVXCQOBoQupExYhlAWmzsFLcMYVl4o4erhgs7sS8c
 IP5ec8CevrRcb5/wUhAvUHye/K03ptXojnckLqZoMP9Q1Ih9PpDerzH4iX+bYtIPa/es/M19CNC
 osykMeKpI98CToC+F5zA6TBZoXEMkFFbAD25grA+Dt6NsUFrUZT1Fbc9iocYirN0H02kay9+bYm
 cACXoKBq+nijkk5FGZH2ZaA/aMiSK+1pAevN0N/54xw3MXA5yTZ4yVSbqoUoBKYXIGXyERf2YgG
 7qNNWNJ/XlwTVCCeRWqXkWUOkM9TApCvOi/zWM1w3qgbDShW9tZ/zCiP7lkrO4fEozHcN6yIiMD
 1BSsNidIJ58nN9p4Fw+zlTyNN9S+6cdpT6Pb3v69TIUZ4qVZRKxptkSSfpdOM1GOFrju2rDRJ6j
 Ey+bvpCT/H68s4ct3hl8eGA==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260723_151730_151397_D4B0DD54 
X-CRM114-Status: GOOD (  14.12  )
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
Cc: devicetree@vger.kernel.org, Dmitry Baryshkov <lumag@kernel.org>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Sebastian Reichel <sebastian.reichel@collabora.com>, Alexey Charkov <alchark@flipper.net>, linux-rockchip@lists.infradead.org, Damon Ding <damon.ding@rock-chips.com>, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

For DP bridges, that can be used for DP AltMode, it might be necessary
to enforce HPD status. There is an existing ->oob_hotplug_event() on
the DRM connector, but it currently just calls into hpd_notify().

As DP bridge drivers usually also implement .detect and that also
generates calls into hpd_notify, this is a bad place to force the
HPD status as the follow-up detect call might force it off again
resulting in all follow-up calls to the detection routine also
failing.

Avoid this by having a dedicated function for OOB events.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/gpu/drm/display/drm_bridge_connector.c |  6 ++++++
 include/drm/drm_bridge.h                       | 14 ++++++++++++++
 2 files changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/display/drm_bridge_connector.c b/drivers/gpu/drm/display/drm_bridge_connector.c
index 8b54069fa53a..632cc3ae3b54 100644
--- a/drivers/gpu/drm/display/drm_bridge_connector.c
+++ b/drivers/gpu/drm/display/drm_bridge_connector.c
@@ -180,6 +180,12 @@ static void drm_bridge_connector_oob_hotplug_event(struct drm_connector *connect
 	struct drm_bridge_connector *bridge_connector =
 		to_drm_bridge_connector(connector);
 
+	/* Notify all bridges in the pipeline of hotplug events. */
+	drm_for_each_bridge_in_chain(bridge_connector->encoder, bridge) {
+		if (bridge->funcs->oob_notify)
+			bridge->funcs->oob_notify(bridge, connector, status);
+	}
+
 	drm_bridge_connector_handle_hpd(bridge_connector, status);
 }
 
diff --git a/include/drm/drm_bridge.h b/include/drm/drm_bridge.h
index 3ac84ed57ab2..f38010d2edd1 100644
--- a/include/drm/drm_bridge.h
+++ b/include/drm/drm_bridge.h
@@ -540,6 +540,20 @@ struct drm_bridge_funcs {
 	 */
 	void (*hpd_disable)(struct drm_bridge *bridge);
 
+	/**
+	 * @oob_notify:
+	 *
+	 * Notify the bridge of out of band hot plug detection.
+	 *
+	 * This callback is optional, it may be implemented by bridges that
+	 * need to be notified of display connection or disconnection for
+	 * internal reasons. One use case is to force the DP controllers HPD
+	 * signal for USB-C DP AltMode.
+	 */
+	void (*oob_notify)(struct drm_bridge *bridge,
+			   struct drm_connector *connector,
+			   enum drm_connector_status status);
+
 	/**
 	 * @hdmi_tmds_char_rate_valid:
 	 *

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

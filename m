Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5921AC56207
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 18:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bhNhlSR6BtGo1FrfmoqSJzv738eHXN5HHrXva0sNzzg=; b=Qij+x9IcqgUxJS
	F0yxNp1swoggoUWP93cxNCgVdrnVNiHMVYXm5bBx0NU6hQq0toXL+H76iXTwcAkJEGwCFxvJoO+Bk
	OEVb4NCFzvl6vz8n/AcXLxjqHm5lNy0AS51A3nfnuSv+77yX7wAMdcNJ3rdj+Wf1a529GiZBFoyUr
	krbN1fsO0q0jznHTfNk+MCfRfTZP6zXQbI+83eyybEdUAKSQ+gUjsLkCsQNdNFyTiZdcGOdKokN34
	svtSMtwt2yyHfy5vJl3f4ZJAR54kPkgdYQH92Eoadjow5gn63VwcVyZT5HpZB9VK07/4ngnAM0QfZ
	F32NoizmVYXgxmdfbApA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqx2Q-00000000IOW-3LJz;
	Mon, 03 Aug 2026 18:05:22 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqx2G-00000000HyU-1DrX;
	Mon, 03 Aug 2026 18:05:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1785780304;
	bh=rAX8Gkdd0l2SvPThxGwSATdesygL1W5j4bmXRGpe4TM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=S2vhX5pPJZ6qsJ3dRVOK5hHZgtJzfoKxDf5BaktPx2ggykjXmaL66AcvrVoKB63We
	 V74kytV/MNiI1fVkLbMobZbk2xKst3bkS3YvqQ2wVP2CCyhUvIMyKxDHy2bN2qAl6e
	 jJrlxvsShbTYa4bsyYe/FUqA5zBlXHBzO90YRwPh3ej66Ow5X+d8+uUSbQp07UduLF
	 HXhU/7QPt9Rxbm0T7QZas+TUUhaZDcJo5XK4hr57MPjlK6KGgwcNZtuBa6U01aSXEc
	 4Jc4hON6b0jJtnI+SU2NhR8xxC0EJkrwYZ4m/Sz3OD2Z+4T66QLDZHQDMwU/qaDjgE
	 kVze0ae2K2Auw==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3D42D17E11E6;
	Mon, 03 Aug 2026 20:05:04 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 720A448004C; Mon, 03 Aug 2026 20:05:03 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Mon, 03 Aug 2026 20:05:13 +0200
Subject: [PATCH v9 12/22] drm/bridge: Add out-of-band HPD notify handler
MIME-Version: 1.0
Message-Id: <20260803-synopsys-dw-dp-improvements-v9-12-2e6e46135312@collabora.com>
References: <20260803-synopsys-dw-dp-improvements-v9-0-2e6e46135312@collabora.com>
In-Reply-To: <20260803-synopsys-dw-dp-improvements-v9-0-2e6e46135312@collabora.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2377;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=rAX8Gkdd0l2SvPThxGwSATdesygL1W5j4bmXRGpe4TM=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGpw2E7TGTFviK0mQ23q8a18/F3gqxVuSqW3b
 VzN92r3UZUYD4kCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqcNhOAAoJENju1/PI
 O/qaDa4P/2lxII8SdFU+mCdan/NuG2rcTag+x2tacHOZ9vZQKrhFPYEZuSa1X/LSDFUVDuxadIe
 3IyGY24aYpnBFfwcIJ8jNfVraCwWvF0EDZs3jjzWoBs5kjJ7myZJmu9zBvbck14pjCYVH7NkoZb
 47qoYc1CCNR01Xyrh6RN+tAYQACR474rNbms8XROXTPRYu+or2AX0YQ/bb5KtmdWEx0B0zn8d/U
 2hFG9xahJYx2yuvBPUhoZ/6Ig7lSsJT7ePdqh5fIXVv5EWZarX4kgyTXOHJQmvSDLW32iTzIw3P
 356qWIE9mkgep+uwCed0210Nt/3kI/ZtISc6L2Nc2j8ksixK3FDbS+Xybva2nDD9rxMa8a255TQ
 ga0dQIfd1nvQZALi/ZPH2Qor3XnSJ8yxSpqBX7cwbCsciXdHTVlxGnZq59XXR3arbYiIuqhpfCX
 v5p9dXe2O0yc+tM5VR8NWHwxgfO1LjGjpU4ZDQDg7soVxjuL6bi3wyVDoxUYZ2c/JcGObvrTgXo
 +9Q2OObCT0Kqrp38fuG68MEh96MyZ04n1uLSeeK4IryBlWK1LNWPmcrLIf/Ity6E3FUkYx1WcjA
 rOAu+AmaFmAEBdCyjNKAqt7ZZvOoN3xSCQ19FixGc1AnNrfJQq/KU4GMhbJ5Pl6Q/DbsBBST7OO
 ILQceB+kaAS8ut0wAtwosig==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_110512_705505_41B8E5B1 
X-CRM114-Status: GOOD (  14.45  )
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
index 58fff047f43b..713652fca033 100644
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

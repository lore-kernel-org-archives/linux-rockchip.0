Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24596CD4F57
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 May 2026 19:48:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=11evFGElluzb7SM2j46/qLx2ZD1Fs+dqpO6zDejC2wg=; b=pgDdtPJuACgWMf
	wLiSs3O/2nJgZLLEENGbqU3BQ1/2CvhWhSShd7f7JEEXTLa+hsmer2345qYKIf7hpRu6HeuVQ1A8v
	670LXVV9ttH8X00GCsjOBOtHiKMF8m0B0Og27pgKSkMELqakqH+aEQuTVvDgFXqWAIrFQc7Xr75FQ
	E+QCHXqE0NqOaFP3jWXfoPludgzyY6fRTSo+wUWXN1ZCOHMf/cDL8t0tJhz7XabRQiPo0liZPlxKQ
	Xt8P7X/j5l2TZjhW2rL03Mvc6crt3E8lxwJXd/srPj5gz7EA92Jd9Dn8YJ/zjSHCZekScKY98x+3R
	DaCtLTnD0xxoaWe5kwIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP3wo-0000000GlKz-0rg2;
	Mon, 18 May 2026 19:48:18 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP3wl-0000000GlGp-2n35
	for linux-rockchip@lists.infradead.org;
	Mon, 18 May 2026 19:48:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1779133695; bh=FchV9glvh5UhWTEiURTz/glfciz9Vw2jj22qgC9Vt+M=;
 b=XuGCimcC7YLQIicVcGOs7RbIhRWYHLPeVWV3jpZcBSXJMYSKNd7gqd3EkFLZykoATb609F8y6
 5uMFuhYPSCrFmuX6qMIupm7jt9d+2INwjIoBl+cO7aHTQK6hE2+YWWZyg4TqAq+BQtl2WsDhptu
 UdTR0FcpwDPGEse5kFPobmp4iPJog5JA2gQ0+dYgS5zR3jH9MLvxF+7IdP9qAPpqQU8nG9XHlzG
 /uH1R5RBwEh+ogBZ3FR/dg01/kSIlUVE/uNfpaGLYXi1wErA/TcWVgBJyk3t+ZTUr6T4sMpQhta
 4r9LzSbC4wEUv655Iih7bIoMGXSTE3d2fMWUZrcT7lpw==
X-Forward-Email-ID: 6a0b6cf9b74b0ebd362eee90
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
Subject: [PATCH 04/13] drm/meson: dw-hdmi: Drop call to drm_bridge_hpd_notify()
Date: Mon, 18 May 2026 19:47:32 +0000
Message-ID: <20260518194744.2483580-5-jonas@kwiboo.se>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260518194744.2483580-1-jonas@kwiboo.se>
References: <20260518194744.2483580-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_124815_789667_481337EA 
X-CRM114-Status: UNSURE (   9.26  )
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

Calls to both drm_helper_hpd_irq_event() and drm_bridge_hpd_notify() in
the IRQ handler causes multiple hotplug uevents and modesets during an
HPD interrupt.

Change to only call drm_helper_hpd_irq_event() in IRQ handler to ensure
only one hotplug uevent is triggered when the connection status or EDID
has changed.

The bridge connectors detect() func help ensure that any hpd_notify()
func is called for all bridges in the chain.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/gpu/drm/meson/meson_dw_hdmi.c | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/meson/meson_dw_hdmi.c b/drivers/gpu/drm/meson/meson_dw_hdmi.c
index 9aafdc768f2b..30099bf71aad 100644
--- a/drivers/gpu/drm/meson/meson_dw_hdmi.c
+++ b/drivers/gpu/drm/meson/meson_dw_hdmi.c
@@ -521,17 +521,8 @@ static irqreturn_t dw_hdmi_top_thread_irq(int irq, void *dev_id)
 
 	/* HPD Events */
 	if (stat & (HDMITX_TOP_INTR_HPD_RISE | HDMITX_TOP_INTR_HPD_FALL) &&
-	    dw_hdmi->bridge) {
-		bool hpd_connected = false;
-
-		if (stat & HDMITX_TOP_INTR_HPD_RISE)
-			hpd_connected = true;
-
+	    dw_hdmi->bridge)
 		drm_helper_hpd_irq_event(dw_hdmi->bridge->dev);
-		drm_bridge_hpd_notify(dw_hdmi->bridge,
-				      hpd_connected ? connector_status_connected
-						    : connector_status_disconnected);
-	}
 
 	return IRQ_HANDLED;
 }
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

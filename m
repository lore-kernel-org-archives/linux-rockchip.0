Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0E44C43458
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jul 2026 11:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WBMJsP2LnY5kAdqpKAR/NXO3YhcsDBHJbZU3S0Uv2fA=; b=cRRSVj/G9l6Gp5
	P/gEfLmqQEFkVjTIegNdSeg0uMZdyxc4q5uCBMoar/873S2V9zFT1AuGaufElDzWs9DkaIm+fdQMG
	wpqEZZCX99/1xa57KaZ/B9XwrquDv8aKzTMRFmP9+52/Z0nQUZZORoSvmRkgEa1fHUC3zKpTBYjee
	bwZiXjISuw1CoExATJhE9CSnGoRmb6+pnXsOTOceCvYKAA8k8hHoDgeNzxOnOOlIZ43uQUDdOpF+A
	MyAeU2Rrl54dcxS5K3pOr1/DylMRH15Qq0MjN2TU1sRL4gfEd5FUncEjQ9tpMkAX+MjWBuXDqm7LN
	l0FGbSfwG+rJVMfQA9lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjFFG-000000094Dh-370A;
	Mon, 13 Jul 2026 11:54:46 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjFFF-000000094D3-06z4
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Jul 2026 11:54:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1783943684;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=BjConvFAf3rvjYmbBQ7BQe1JT6YMn7Jt40JVrp+oOsg=;
	b=eFVAomPoc/n85k6EA0+TuGGP1DXlHJLWus86w/xGLrkuUktALWbvwoRZpZejEXvEik1oz3
	jEF42q0GMGJVUJKRG2aRyfr9yDHXF9A6mECL3/IK93dDY8BjPAb6Wx5BTbbchji14l9vK2
	FCZLnSIRdH74gC764Vl4SQ2RUOCAVOs=
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-693-Zd5jyL0eOnCciocZgn6XnA-1; Mon,
 13 Jul 2026 07:54:40 -0400
X-MC-Unique: Zd5jyL0eOnCciocZgn6XnA-1
X-Mimecast-MFC-AGG-ID: Zd5jyL0eOnCciocZgn6XnA_1783943675
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E8AC61955E9E;
	Mon, 13 Jul 2026 11:54:34 +0000 (UTC)
Received: from [192.168.1.153] (headnet04.pony-001.prod.iad2.dc.redhat.com [10.2.32.116])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B477C1800586;
	Mon, 13 Jul 2026 11:54:21 +0000 (UTC)
From: Albert Esteve <aesteve@redhat.com>
Date: Mon, 13 Jul 2026 13:53:07 +0200
Subject: [PATCH v2 4/5] drm/panel: find_panel_by_fwnode() return a counted
 reference
MIME-Version: 1.0
Message-Id: <20260713-drm_refcount_wiring-v2-4-d3bb61f4bd4d@redhat.com>
References: <20260713-drm_refcount_wiring-v2-0-d3bb61f4bd4d@redhat.com>
In-Reply-To: <20260713-drm_refcount_wiring-v2-0-d3bb61f4bd4d@redhat.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <jesszhan0024@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, Inki Dae <inki.dae@samsung.com>, 
 Jagan Teki <jagan@amarulasolutions.com>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>, 
 Lucas Stach <l.stach@pengutronix.de>, Frank Li <Frank.Li@nxp.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Paul Cercueil <paul@crapouillou.net>, 
 Linus Walleij <linusw@kernel.org>, Marek Vasut <marex@denx.de>, 
 Stefan Agner <stefan@agner.ch>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, Biju Das <biju.das.jz@bp.renesas.com>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Yannick Fertre <yannick.fertre@foss.st.com>, 
 Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>, 
 Philippe Cornu <philippe.cornu@foss.st.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Chen-Yu Tsai <wens@kernel.org>, Samuel Holland <samuel@sholland.org>, 
 Jyri Sarha <jyri.sarha@iki.fi>, Jingoo Han <jingoohan1@gmail.com>, 
 Seung-Woo Kim <sw0312.kim@samsung.com>, 
 Kyungmin Park <kyungmin.park@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Alison Wang <alison.wang@nxp.com>, 
 Paul Kocialkowski <paulk@sys-base.io>, 
 Alain Volmat <alain.volmat@foss.st.com>, 
 Raphael Gallais-Pou <rgallaispou@gmail.com>, 
 Thierry Reding <thierry.reding@kernel.org>, 
 Mikko Perttunen <mperttunen@nvidia.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-mips@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, 
 linux-stm32@st-md-mailman.stormreply.com, linux-sunxi@lists.linux.dev, 
 linux-samsung-soc@vger.kernel.org, linux-tegra@vger.kernel.org, 
 Albert Esteve <aesteve@redhat.com>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783943594; l=2316;
 i=aesteve@redhat.com; s=20260303; h=from:subject:message-id;
 bh=sbVH6ShKanxtA5W9Xywae/baWgVvRmbdqq4dmgcH2zU=;
 b=P+uXW64NeMeDz+v7ZdK9Rk/p7UzsOiF++6hDBewi6tGE7qdfB+UP54eECes9KOSS7cXXFhGxn
 N80BV1LxXkUCzr74V7G2Teaj6ix2xiKoAkyDXxCzT+PHAEdXFcA/Vq2
X-Developer-Key: i=aesteve@redhat.com; a=ed25519;
 pk=YSFz6sOHd2L45+Fr8DIvHTi6lSIjhLZ5T+rkxspJt1s=
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: RwddaUlpo3XofGSPuKUM4DWU-AVwaotvXe_k_J4g7xw_1783943675
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260713_045445_144606_F9A5BFCB 
X-CRM114-Status: GOOD (  15.80  )
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

find_panel_by_fwnode() is the fwnode-based counterpart to
of_drm_find_panel(), used internally by drm_panel_add_follower().
Like of_drm_find_panel(), it returned an unrefcounted pointer,
leaving a window where the panel could be freed between the lookup
and first use.

drm_panel_add_follower() worked around the missing panel kref by
calling get_device() on the panel's underlying struct device.
However, get_device() only prevents the device kobject from being freed.
It does not prevent the panel's kzalloc()'d container memory from being
released when the kref reaches zero.

Apply the same fix: call drm_panel_get() under panel_lock before
returning. Since find_panel_by_fwnode() now transfers a counted
reference to drm_panel_add_follower(), drm_panel_remove_follower()
must balance it with a matching drm_panel_put().

Signed-off-by: Albert Esteve <aesteve@redhat.com>
---
 drivers/gpu/drm/drm_panel.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
index 72cf86253c0cd..a00ae98ed0956 100644
--- a/drivers/gpu/drm/drm_panel.c
+++ b/drivers/gpu/drm/drm_panel.c
@@ -542,7 +542,13 @@ int of_drm_get_panel_orientation(const struct device_node *np,
 EXPORT_SYMBOL(of_drm_get_panel_orientation);
 #endif
 
-/* Find panel by fwnode. This should be identical to of_drm_find_panel(). */
+/*
+ * Find panel by fwnode, returning a counted reference.
+ *
+ * Behaves identically to of_drm_find_panel(). On success the returned
+ * pointer has been passed through drm_panel_get(); the caller must call
+ * drm_panel_put() when done with it.
+ */
 static struct drm_panel *find_panel_by_fwnode(const struct fwnode_handle *fwnode)
 {
 	struct drm_panel *panel;
@@ -554,6 +560,7 @@ static struct drm_panel *find_panel_by_fwnode(const struct fwnode_handle *fwnode
 
 	list_for_each_entry(panel, &panel_list, list) {
 		if (dev_fwnode(panel->dev) == fwnode) {
+			drm_panel_get(panel);
 			mutex_unlock(&panel_lock);
 			return panel;
 		}
@@ -690,6 +697,7 @@ void drm_panel_remove_follower(struct drm_panel_follower *follower)
 	mutex_unlock(&panel->follower_lock);
 
 	put_device(panel->dev);
+	drm_panel_put(panel);
 }
 EXPORT_SYMBOL(drm_panel_remove_follower);
 

-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

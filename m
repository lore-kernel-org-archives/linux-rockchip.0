Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 345CAC624D6
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2026 18:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GJ+p2jZG+8wLDQe5mGZpM0GhQODUKnXTmgfqGeQwT2Q=; b=SMY4h0pZpwrWpv
	XWQuWEIA0UiBzNYaC7Z89po52DwMQXv9iVlWpwLmI72gbBWyzive5UDMbD05ptc8uGB6U1rZjn8kD
	r3SQGLD5k/2MEVnGtdh4/YZdUFR5eenz5f2ZGh3COvsAM2mpOWqJ50XJWULvJ9Otg9xHwrM3c+wrB
	c9dJDmBpWA++vWG0ZSYw5TrCMwkJE3A92PO8t6Gxn3HRWmkvtTJ1JVNUcshqRdmowqMeV7+Hi/eGJ
	kKW+GsDAmz2K9z1EXTv9MYvyoTHqx5B9AmDAnH73UVnaZ0eghQjijKvRCXL9ijBrauw/tvI/1jG8s
	4XTn0odM65LnWFicqB0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1TZP-0000000D0gr-3osu;
	Tue, 01 Sep 2026 18:50:55 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1TZH-0000000D0ZY-1lT7;
	Tue, 01 Sep 2026 18:50:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1788288642;
	bh=eu1KlSlWXqhbiSpgzVzFIDL33AEwWbq34A898vzWv2U=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=RVeepdB0Bcueu2yR6HxUoRZoMXRJ6Wle8Ow5IFxiJnxIwLz75sII6M0a0TUCrYZ7b
	 bOR8K5WmFYV6wb0TIAmyZhGrTEDaKVpDjYCK5VaaNpwaFqEHhgts7SetkZ5cZb0hjA
	 WFZzDxQkpoE+8BIxH+Guem+EVr6+aO8dfmUWfcyM7Wj62odW40iFHqCYdkStdsK4Wq
	 hXCgWTAoNK8OgoeHtZusz0Ns4lAvfKf12e6WXy5tKTyDGRAh5BPk1t5oORQ0G0h1eZ
	 T/l9T8qtD9uRUJs5oskv5BSW/3NNrJvMhls8bVNzmnRGpBttx9M9i8dIWUfILO6nGt
	 rT+hRBkU4rmrA==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 92CA817E0934;
	Tue, 01 Sep 2026 20:50:42 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 01 Sep 2026 21:50:26 +0300
Subject: [PATCH v11 02/74] drm/connector: hdmi: Handle reset() state
 allocation failure
MIME-Version: 1.0
Message-Id: <20260901-dw-hdmi-qp-scramb-v11-2-bc12954a0688@collabora.com>
References: <20260901-dw-hdmi-qp-scramb-v11-0-bc12954a0688@collabora.com>
In-Reply-To: <20260901-dw-hdmi-qp-scramb-v11-0-bc12954a0688@collabora.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, Chen-Yu Tsai <wens@kernel.org>, 
 Samuel Holland <samuel@sholland.org>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, 
 Raphael Gallais-Pou <rgallaispou@gmail.com>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Algea Cao <algea.cao@rock-chips.com>, 
 Daniel Stone <daniels@collabora.com>, Liu Ying <victor.liu@nxp.com>, 
 Phong LE <ple@baylibre.com>, Helge Deller <deller@gmx.de>
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, linux-rockchip@lists.infradead.org, 
 linux-fbdev@vger.kernel.org, Sashiko <sashiko-bot@kernel.org>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_115047_627859_EF0F0568 
X-CRM114-Status: GOOD (  10.04  )
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

In drmm_connector_hdmi_init(), if the reset callback fails to allocate
memory, e.g. inside drm_atomic_helper_connector_reset(),
connector->state will remain NULL.  This is unconditionally passed to
drm_connector_attach_max_bpc_property(), leading to a NULL pointer
dereference.

Bail out with -ENOMEM if the reset callback leaves connector->state
unset.

Fixes: aadb3e16b8f3 ("drm/connector: hdmi: Add output BPC to the connector state")
Reported-by: Sashiko <sashiko-bot@kernel.org>
Closes: https://lore.kernel.org/all/20260723015306.C94241F000E9@smtp.kernel.org/
Link: https://lore.kernel.org/all/20260723015306.C94241F000E9@smtp.kernel.org/
Reviewed-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/drm_connector.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index 8b4baed060f3..0e39431e85b2 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -628,6 +628,8 @@ int drmm_connector_hdmi_init(struct drm_device *dev,
 		connector->state = state;
 	} else if (connector->funcs->reset) {
 		connector->funcs->reset(connector);
+		if (!connector->state)
+			return -ENOMEM;
 	}
 
 	drm_connector_attach_max_bpc_property(connector, 8, max_bpc);

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D685C4450C
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Jul 2026 14:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tTL8X7AGTqwokBNIlLeAkmxVEyNqoJCY9Y06iTA0ffQ=; b=ACzM13F29xAZY6
	QWmqPyu7B5WpcmVIVYHyHnPZm4U2LLf1v2uw7qwu69yD5mh5dXrfM/hGMc1FLCYcgfUSjm6aX4gx1
	IiagqPOCbj4pVhZ588K+aTngl3ULngwtWHMyLnBqj/51aCPWWvmN4wT0spD/a9LVLHAZgskHYlIf+
	8nggkwSWBqiBgqLT0mX5PDYTx1RLhKfuNH7n3q9M9TZiJfSgAjGimf9jBD5r+O8ayeRMYsDKMBYz+
	vYQXqGJ4npYCIYth7oyQhQriapFtKu9zlbiQVApViuiD/TqVlH7pQg/VCqqASCM6WfDNNah5oj/6c
	ryvmgNLB+fVbmvKFK0gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfIgj-00000004eqF-1lX8;
	Thu, 02 Jul 2026 14:46:49 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfIgc-00000004eZB-1VkZ;
	Thu, 02 Jul 2026 14:46:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783003600;
	bh=QCn0pWH6R490QoGfBT3a1Vn0/GvOOWVICGTR08194MA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=LWYPW9Ww0AbpqzFgzNNEQ9LWXyxHGyREaR3817xNgE68gdxl8yTuccII9hX2HV7fX
	 +5vBHkI7AYAz5+gReN5bLfYx/HZZ/3hlWg5exUXsKN/s8XRliCvyo+shc1ZrhEeH2D
	 Vr/wEV4h4ou0elezTCg6wkSJHrywtC0HrdbUBr6aKzyDJXFRh6mytDhfwN14KIOJBP
	 Ocd9SmEryD6IHjw3Eu3QMP6bUTFudcL8XJdmSxa56SlKO0Dq1+Z4rH2J3gQdrTkQPW
	 6GSYNEbW1XzVuIVvQd3m1cqFbeRgZZ2O7xzogCBliPg0OMFR1pIGV0u+Sy3Hc6qLG/
	 N9SYMXcXEUYrg==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 6EA9117E35CD;
	Thu,  2 Jul 2026 16:46:40 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Thu, 02 Jul 2026 17:46:25 +0300
Subject: [PATCH v8 12/39] drm/bridge: Remove redundant error check in
 drm_bridge_helper_reset_crtc()
MIME-Version: 1.0
Message-Id: <20260702-dw-hdmi-qp-scramb-v8-12-d79890d00b6a@collabora.com>
References: <20260702-dw-hdmi-qp-scramb-v8-0-d79890d00b6a@collabora.com>
In-Reply-To: <20260702-dw-hdmi-qp-scramb-v8-0-d79890d00b6a@collabora.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Daniel Stone <daniels@collabora.com>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_074642_572399_4B602603 
X-CRM114-Status: UNSURE (   9.71  )
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

Remove the no-op error check after drm_atomic_helper_reset_crtc() since
the goto target is the immediately following label and the return value
is already propagated correctly without it.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/drm_bridge_helper.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_bridge_helper.c b/drivers/gpu/drm/drm_bridge_helper.c
index 420f29cf3e54..0a3c8fee66b3 100644
--- a/drivers/gpu/drm/drm_bridge_helper.c
+++ b/drivers/gpu/drm/drm_bridge_helper.c
@@ -50,8 +50,6 @@ int drm_bridge_helper_reset_crtc(struct drm_bridge *bridge,
 
 	crtc = connector->state->crtc;
 	ret = drm_atomic_helper_reset_crtc(crtc, ctx);
-	if (ret)
-		goto out;
 
 out:
 	drm_modeset_unlock(&dev->mode_config.connection_mutex);

-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

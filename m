Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BE8FD4697D
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jan 2026 23:18:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DYOawQH/cDolpXgUz8prDo+DR82nbuLK0MzeczDo3rE=; b=Pxp7FHCNlWeRTW
	UVc4ajXGYkBNnA2Lat0GOv8myq4zPf7QTshXoUDTqjB3v7pFOydbdzsfXd3Q4bz+u/faLa9jJmF20
	1NY+G3Kx9RphKn1O+ndTy19jZLXulFS4SM+IQlObAlGZYVzMT9U2HMqmPiQjLCfl58JZlXo8W7rE2
	vKh11QpOROkKF+YzBnSK9cs/x15lb58utjUhg99INlATsljtZZ93MmPeVFicdYgT1TGAmS7OI9zUX
	qn3eAAQ5Ab7SjUqovbpAbRoNh9eKd3JEHLMgXqjn+Y1p7UHvkCCtzzl6NliXR/vrjIscyjDBSAi9k
	1F18PP8aslxcap0EkR+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vihSy-00000006A1n-4A3E;
	Wed, 21 Jan 2026 23:18:25 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vihSe-000000069cl-1qk3;
	Wed, 21 Jan 2026 23:18:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1769037481;
	bh=QD3lawmiWIE2DGClkQ8wGZNCh9NyDdwVlxJuPugz7gY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=WTZOuz5b6VhUwKTYeBHAjlZGq2tS/FaP3hbdiDBDY497r8aUXw7bJgnOuB74Vuk0s
	 WqIhHoNCyB08C0vknYpd2je+er2JMx4z/2gPnwD9xDs4Ts697xm5MqNWNCHkOCSkDv
	 8EFHat6aaZA4OP2WC76Ml7Hkn8ptlcZ+36KGDnkN7llJS5xlbknzRB6Mwg2A5Xc+GK
	 49RZ195pUIpmym4DXEedMxEdpELjhyiS78uyuJK29tQOJLl7+hA69pna76KhazuKA0
	 H2SpZ+2e7UF5A5xEXtvV5CrCSRqMJu/Pqz5kgHtgLmj6ikjIE/pBKDcnql6eJfTHNU
	 ThjiiAr+SuFSA==
Received: from localhost (unknown [82.79.138.145])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 94BA217E1418;
	Thu, 22 Jan 2026 00:18:01 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Thu, 22 Jan 2026 01:17:38 +0200
Subject: [PATCH 5/6] drm/rockchip: dw_dp: Drop unnecessary #include
MIME-Version: 1.0
Message-Id: <20260122-drm-rk-fixes-v1-5-3942f185750e@collabora.com>
References: <20260122-drm-rk-fixes-v1-0-3942f185750e@collabora.com>
In-Reply-To: <20260122-drm-rk-fixes-v1-0-3942f185750e@collabora.com>
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Dmitry Baryshkov <lumag@kernel.org>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_151804_663712_5B52454D 
X-CRM114-Status: UNSURE (   8.84  )
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

Included header "rockchip_drm_vop.h" is not directly used, drop it.

While at it, ensure #include directives are ordered alphabetically.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/rockchip/dw_dp-rockchip.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
index 785f9727b4e1..6abad24fa9cd 100644
--- a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
@@ -7,8 +7,11 @@
  */
 
 #include <linux/component.h>
+#include <linux/media-bus-format.h>
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
+#include <linux/videodev2.h>
+
 #include <drm/bridge/dw_dp.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_bridge.h>
@@ -19,11 +22,7 @@
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_simple_kms_helper.h>
 
-#include <linux/media-bus-format.h>
-#include <linux/videodev2.h>
-
 #include "rockchip_drm_drv.h"
-#include "rockchip_drm_vop.h"
 
 struct rockchip_dw_dp {
 	struct dw_dp *base;

-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

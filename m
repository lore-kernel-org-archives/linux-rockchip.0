Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4610CE77184
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Dec 2024 08:16:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tOO3Ykrn2dS7OJ3CpJe1dJ46tG6HoKYzi+T3HJE26mY=; b=XaVyF81iVNohyr
	xPP7waw5LCM+iC8m3KjToRHLdT8/v43w3h2IbDDNGjcKLaXH3Z4V21/YAMDmbNh7nrXHON6oOF/o7
	i6NCNDiwI4im/goVlRMx5mK7nY01c6ds0m1Pr/tgQjTmolrYQM6qlMFznjWnty8eN0NmUvoRLaOHa
	SXqGZ7lZRoIk0rpRtbtonOSCD4Z4Yoi6oNJMkKKyUY7piWdoBV16rUNL4bmfsjaGZpOW1UqzRW37l
	cMjFh0juKk8NruVLNWbO0TzIHnApUwT25xzV5HPKoYMeQfO1o0N68IMLgCBq+2EeJGsWhCLI5vRwJ
	4VWodTvi6TFuZZBB6Bjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOBhx-00000001F4h-0Brx;
	Thu, 19 Dec 2024 08:16:33 +0000
Received: from mail-m3280.qiye.163.com ([220.197.32.80])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOBYQ-00000001D4u-0j9d;
	Thu, 19 Dec 2024 08:06:43 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 633dd674;
	Thu, 19 Dec 2024 16:06:37 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v3 09/15] drm/bridge: analogix_dp: Add support to get panel from the DP AUX bus
Date: Thu, 19 Dec 2024 16:05:58 +0800
Message-Id: <20241219080604.1423600-10-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241219080604.1423600-1-damon.ding@rock-chips.com>
References: <20241219080604.1423600-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQk8ZGFZNSUpDTR0eTB1JS0lWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a93ddf454c003a3kunm633dd674
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6K1E6CSo5CTISCBUMTDkeDDoz
	TTUKFB5VSlVKTEhPTkJOTkJCSklKVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJS0pINwY+
DKIM-Signature: a=rsa-sha256;
	b=Dto21BscgW0101JfwaimT5Svfhl2CPBIYvaS6Fky4ktCusr5eblGNzB/q0xXOuzouQdDnqOYyFNK7F55dxp9SOOD9gsnLh/O+NAHxkGCN3rrzWlVUxg7WrrvrRGZHh4zAy57FQCJR6Byv4ixaVHYNcc1cnI/wElgXIuIOcyTFNA=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=ls2SQ381Ul5xwwUhCAde3y5OqsDlvqQOV6lShYVjzW0=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241219_000642_423321_5535E03E 
X-CRM114-Status: GOOD (  12.33  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, vkoul@kernel.org, Damon Ding <damon.ding@rock-chips.com>, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

If the panel can not be found in the beginning of rockchip_dp_probe()
using the platform bus, we can still try to find it in analogix_dp_bind()
through the DP AUX bus after the &analogix_dp_device.aux has been
initialized.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
---
 .../drm/bridge/analogix/analogix_dp_core.c    | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 9429c50cc1bc..eae02819e3bb 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -19,12 +19,14 @@
 #include <linux/platform_device.h>
 
 #include <drm/bridge/analogix_dp.h>
+#include <drm/display/drm_dp_aux_bus.h>
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_bridge.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_device.h>
 #include <drm/drm_edid.h>
+#include <drm/drm_of.h>
 #include <drm/drm_panel.h>
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
@@ -1733,6 +1735,23 @@ int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev)
 		goto err_disable_pm_runtime;
 	}
 
+	if (!dp->plat_data->panel) {
+		/*
+		 * If the edp-panel module has not yet been initialized, the
+		 * devm_of_dp_aux_populate_bus() function will return 0 and
+		 * the done_probing() callback will not be called either.
+		 * Consequently, the panel will never be found.
+		 *
+		 * This is the reason why we do not use the done_probing()
+		 * callback and do not check the reture value here.
+		 */
+		devm_of_dp_aux_populate_bus(&dp->aux, NULL);
+		ret = drm_of_find_panel_or_bridge(dp->dev->of_node, 1, 0,
+						  &dp->plat_data->panel, NULL);
+		if (ret)
+			goto err_unregister_aux;
+	}
+
 	ret = analogix_dp_create_bridge(drm_dev, dp);
 	if (ret) {
 		DRM_ERROR("failed to create bridge (%d)\n", ret);
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

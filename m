Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D08CDC02182
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jan 2025 10:17:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OawOxQWNItfjF4VZXWgY6Iy5t/qZm3w1wdmENXwYHFY=; b=Aba69TO0qHTi1E
	8sqJvH0C3vpASvpm1q5u0m/oqRXmj3kndvcrEd/e1NmJEHkP8BYnkDMCivfj8Mon8nZz3QYd6t+0R
	G5ej26R1/5n810ASYgK+e9JnaaiK0xgEPfJcDQi4jm5iRxZauUMeoJwoPQvGXzExcZcY2uW7x5X3U
	/gwUmnXtY4pRtjy3uSf90YNXka491ltK4t622pE/tzzcs3ZiY0QJpBDE7GV+LYuLWsgqeV8yvwOlS
	EAZbD2j+cv8TTp/1Byx4p5ngeqrH75L8LiIb8ziZ7Z9876AaBD8czN+Y/NCWRmXNrHnoqjlLVsuwO
	d+vdTjjzKVfrzQ4ibzGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tauGy-0000000CBA0-0aFi;
	Thu, 23 Jan 2025 10:17:16 +0000
Received: from mail-m49227.qiye.163.com ([45.254.49.227])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tau8F-0000000C9bh-0w9A;
	Thu, 23 Jan 2025 10:08:16 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 9818ae6e;
	Thu, 23 Jan 2025 18:08:10 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v6 06/14] drm/bridge: analogix_dp: support to get &analogix_dp_device.plat_data and &analogix_dp_device.aux
Date: Thu, 23 Jan 2025 18:07:39 +0800
Message-Id: <20250123100747.1841357-7-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250123100747.1841357-1-damon.ding@rock-chips.com>
References: <20250123100747.1841357-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0tMSFZISB5LTE1OHx5CSBhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a9492a2322a03a3kunm9818ae6e
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6N1E6ORw4LjILHiwYNCkhFD83
	HzgKFD1VSlVKTEhMTUlNQ0JJTk1OVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJSU9LNwY+
DKIM-Signature: a=rsa-sha256;
	b=TP9FV2jzbryy9RokZodKx5k2Ku6qO8J5yX2+NKTkG88lApmu/rE7qJ9Vdg+HBEsLuMUK6nopm1LR//OgQocgD+qP9c+4UB9n4PXmt3ecyYtiAfNi2u2e0te8e6JMpumsxDGAjmZSOe0tSrnT8KMm+GsPlt36jIB6MJgRbBY+y+Q=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=5+N4GZtO2B2otW+fzwXUnqqvhQBl3b+snSyfBarKLiY=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250123_020815_452216_3C81323F 
X-CRM114-Status: UNSURE (   8.24  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, dmitry.baryshkov@linaro.org, vkoul@kernel.org, Damon Ding <damon.ding@rock-chips.com>, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add two new functions: one to find &analogix_dp_device.plat_data via
&drm_dp_aux, and the other to get &analogix_dp_device.aux. Both of them
serve for the function of getting panel from DP AUX bus, which is why
they are included in a single commit.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 14 ++++++++++++++
 include/drm/bridge/analogix_dp.h                   |  4 ++++
 2 files changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index b05f5b9f5258..8251adfce2f9 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1794,6 +1794,20 @@ int analogix_dp_stop_crc(struct drm_connector *connector)
 }
 EXPORT_SYMBOL_GPL(analogix_dp_stop_crc);
 
+struct analogix_dp_plat_data *analogix_dp_aux_to_plat_data(struct drm_dp_aux *aux)
+{
+	struct analogix_dp_device *dp = to_dp(aux);
+
+	return dp->plat_data;
+}
+EXPORT_SYMBOL_GPL(analogix_dp_aux_to_plat_data);
+
+struct drm_dp_aux *analogix_dp_get_aux(struct analogix_dp_device *dp)
+{
+	return &dp->aux;
+}
+EXPORT_SYMBOL_GPL(analogix_dp_get_aux);
+
 MODULE_AUTHOR("Jingoo Han <jg1.han@samsung.com>");
 MODULE_DESCRIPTION("Analogix DP Core Driver");
 MODULE_LICENSE("GPL v2");
diff --git a/include/drm/bridge/analogix_dp.h b/include/drm/bridge/analogix_dp.h
index 6002c5666031..1b119b547988 100644
--- a/include/drm/bridge/analogix_dp.h
+++ b/include/drm/bridge/analogix_dp.h
@@ -7,6 +7,7 @@
 #ifndef _ANALOGIX_DP_H_
 #define _ANALOGIX_DP_H_
 
+#include <drm/display/drm_dp_aux_bus.h>
 #include <drm/drm_crtc.h>
 
 struct analogix_dp_device;
@@ -48,4 +49,7 @@ void analogix_dp_unbind(struct analogix_dp_device *dp);
 int analogix_dp_start_crc(struct drm_connector *connector);
 int analogix_dp_stop_crc(struct drm_connector *connector);
 
+struct analogix_dp_plat_data *analogix_dp_aux_to_plat_data(struct drm_dp_aux *aux);
+struct drm_dp_aux *analogix_dp_get_aux(struct analogix_dp_device *dp);
+
 #endif /* _ANALOGIX_DP_H_ */
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

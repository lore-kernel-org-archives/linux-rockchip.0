Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6B4EC83F09
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Jul 2025 08:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0zrFEYviy1dB3RNFGs5EHJ2FtJfX+zlMEb2DwqwlpN4=; b=wcRxvfs37kW0QI
	yTPc3uhH4KVwB4HzqXLvSSk0tSeboulCrVOTXhiTSbKbaDQI1bd4pFWkGAIiAMi6GF9rbIbo62bqb
	kFxVVl6tlV+VwcOyFItUwDwbj9bS1TFofc9watWxIxxTT7RWEvcpulpPXozBCgQTI7HcfZ0LA76sr
	qp5hiP+KNNdcrNpC+4tKlPwfm0Z6sQE584coa2MtLmaDRBDT9yl+zfBszp3AihtfIsH/wT9yer9OV
	f06LlgSD75PYWNi4vlWFbgFdIpPu6eJ9hNyYDQrh4Dr+k5eSjyGWwrDCl4FI7n7hFiE77AOmvOavi
	QOjpa9BHtwdeSjx3hlMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZPoD-00000007tSd-1nt7;
	Wed, 09 Jul 2025 08:05:41 +0000
Received: from mail-m32123.qiye.163.com ([220.197.32.123])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZOpM-00000007kgZ-35Zu;
	Wed, 09 Jul 2025 07:02:57 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1b69d1c4b;
	Wed, 9 Jul 2025 15:02:42 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	rfoss@kernel.org
Cc: Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	jingoohan1@gmail.com,
	inki.dae@samsung.com,
	sw0312.kim@samsung.com,
	kyungmin.park@samsung.com,
	krzk@kernel.org,
	alim.akhtar@samsung.com,
	hjc@rock-chips.com,
	heiko@sntech.de,
	andy.yan@rock-chips.com,
	dmitry.baryshkov@oss.qualcomm.com,
	l.stach@pengutronix.de,
	dianders@chromium.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Damon Ding <damon.ding@rock-chips.com>
Subject: [PATCH v2 11/12] drm/bridge: analogix_dp: Remove unused APIs for AUX bus
Date: Wed,  9 Jul 2025 15:01:38 +0800
Message-Id: <20250709070139.3130635-12-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250709070139.3130635-1-damon.ding@rock-chips.com>
References: <20250709070139.3130635-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkMdQlZCHx4YThlCGE8aGBlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a97edfe6a1803a3kunm3a7bcd50c83bc0
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Pkk6TRw5UTEzFS8RIxdMIi4J
	IkkwC0hVSlVKTE5JS09PTk1OSkhOVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFISU5LNwY+
DKIM-Signature: a=rsa-sha256;
	b=ZHGcEjNWd8Ny++COiRajpPxJxHQekEehDeGuu9Y4E9O7z8QGdVqEXvkKN1LP1c7k8/Debbz4uRuv6VfLjhx7YEerzTPINgAqhTXYqdJbAvtaas9gPGzCN4U9DgzvElAeKzVVp07yV4an3fkKdbMqyYRg51tG04FzOBwULGPhiHg=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=fqyUN1F8Tzi8KnSDWJShNFEL8g+VnD7YEPfF0DJm4TE=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_000249_406285_5B5B7137 
X-CRM114-Status: UNSURE (   7.63  )
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

Since the panel/bridge parsing has been moved to the Analogix side,
the analogix_dp_aux_to_plat_data() and analogix_dp_get_aux() is
redundant.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
---
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 14 --------------
 include/drm/bridge/analogix_dp.h                   |  2 --
 2 files changed, 16 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 660f95e90490..abc64cc17e4c 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1695,20 +1695,6 @@ int analogix_dp_stop_crc(struct drm_connector *connector)
 }
 EXPORT_SYMBOL_GPL(analogix_dp_stop_crc);
 
-struct analogix_dp_plat_data *analogix_dp_aux_to_plat_data(struct drm_dp_aux *aux)
-{
-	struct analogix_dp_device *dp = to_dp(aux);
-
-	return dp->plat_data;
-}
-EXPORT_SYMBOL_GPL(analogix_dp_aux_to_plat_data);
-
-struct drm_dp_aux *analogix_dp_get_aux(struct analogix_dp_device *dp)
-{
-	return &dp->aux;
-}
-EXPORT_SYMBOL_GPL(analogix_dp_get_aux);
-
 static int analogix_dp_aux_done_probing(struct drm_dp_aux *aux)
 {
 	struct analogix_dp_device *dp = to_dp(aux);
diff --git a/include/drm/bridge/analogix_dp.h b/include/drm/bridge/analogix_dp.h
index 0b6d85f1924e..94854b5949c2 100644
--- a/include/drm/bridge/analogix_dp.h
+++ b/include/drm/bridge/analogix_dp.h
@@ -51,8 +51,6 @@ void analogix_dp_unbind(struct analogix_dp_device *dp);
 int analogix_dp_start_crc(struct drm_connector *connector);
 int analogix_dp_stop_crc(struct drm_connector *connector);
 
-struct analogix_dp_plat_data *analogix_dp_aux_to_plat_data(struct drm_dp_aux *aux);
-struct drm_dp_aux *analogix_dp_get_aux(struct analogix_dp_device *dp);
 int analogix_dp_find_panel_or_bridge(struct analogix_dp_device *dp);
 
 #endif /* _ANALOGIX_DP_H_ */
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

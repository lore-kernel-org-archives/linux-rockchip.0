Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50129CD5BDD
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 May 2026 12:54:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tGBY4GenQGFjTC2053GbMHAVscXYXxu4AVXt7gq0egA=; b=gbKBZppn3weRMv
	ZjLRgzgjuxAzyArLWAB8s9hRnl0doWIo67eJlZdKBaM39a/k4cw5fKIbENLbId8dn5FDEDzZmr5SW
	3pF+vI/rZ/8FmubpgcICjQLxRxx8rCTjeDgNRKCKajmwGrvRgfcbGxu63qyeKvC7pkS8ZJU2TT2pA
	IrFW5ZXIFmpIzMcYLMawp9hSwxgwwBi8N5h/DAjJ03OzTF9cRVW5fguPRkxF+sff7kQgzPY1eR3v3
	t+06iPnJlzwaup4eR3eVJqnjqSpdnvp12x6na4BCUcqi2xBNNkmRJzpJOuLetczO9JF1qJj5QOjmh
	fGaRmF5cZxe5RqeniSvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRUp5-0000000HFC1-0hkZ;
	Mon, 25 May 2026 12:54:23 +0000
Received: from mail-m12818.netease.com ([103.209.128.18])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRUoq-0000000HEv0-2e2y;
	Mon, 25 May 2026 12:54:09 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3fbb28c57;
	Mon, 25 May 2026 20:54:04 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: hjc@rock-chips.com,
	heiko@sntech.de,
	andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	rfoss@kernel.org
Subject: [PATCH v8 09/10] drm/bridge: analogix_dp: Add support for RK3576
Date: Mon, 25 May 2026 20:53:30 +0800
Message-Id: <20260525125331.140059-10-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260525125331.140059-1-damon.ding@rock-chips.com>
References: <20260525125331.140059-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Tid: 0a9e5f3318fe03a8kunm7b8971f5af5ce2
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDGEMfVkofQ0lLSEtPSEJJTFYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=cl2Xj43DghSBtmvqMwE7MYRUxER6hQkaarj/aPV/7IzxM3SXzP1377izBC52k26Pa1HC5lIeZH/gcncfT/sVhMKv2qcoDBJqVta0b9T8DitsqCeU/8G2i8jJL3YujX9e5ATK9OXpkaNDIxMNhJtXJAYDZj3EUgQMAiDEgYKoY8g=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=N7/Kn7Q2/Oe9eNeVqy5zLj4EjgCcXu8JqqWQERIpTXU=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260525_055408_871555_69F0F463 
X-CRM114-Status: UNSURE (   8.38  )
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
Cc: dmitry.baryshkov@oss.qualcomm.com, devicetree@vger.kernel.org, jonas@kwiboo.se, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, dianders@chromium.org, linux-rockchip@lists.infradead.org, Damon Ding <damon.ding@rock-chips.com>, Laurent.pinchart@ideasonboard.com, luca.ceresoli@bootlin.com, nicolas.frattaroli@collabora.com, linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add RK3576_EDP device type entry and extend Rockchip check
to match existing hardware capabilities shared with RK3588.

Set identical maximum link rate and lane count parameters
for RK3576 eDP controller to reuse existing RK3588 config.

Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
Signed-off-by: Damon Ding <damon.ding@rock-chips.com>

---

Changes in v3:
- Add Reviewed-by tag.

Changes in v4:
- Modify the commit msg.
---
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 1 +
 include/drm/bridge/analogix_dp.h                   | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index c2fd5b978fc0..5dc07ff84cd3 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1249,6 +1249,7 @@ static int analogix_dp_dt_parse_pdata(struct analogix_dp_device *dp)
 		video_info->max_link_rate = 0x0A;
 		video_info->max_lane_count = 0x04;
 		break;
+	case RK3576_EDP:
 	case RK3588_EDP:
 		video_info->max_link_rate = 0x14;
 		video_info->max_lane_count = 0x04;
diff --git a/include/drm/bridge/analogix_dp.h b/include/drm/bridge/analogix_dp.h
index 7b670dd769e9..0e0b87abee59 100644
--- a/include/drm/bridge/analogix_dp.h
+++ b/include/drm/bridge/analogix_dp.h
@@ -16,6 +16,7 @@ enum analogix_dp_devtype {
 	EXYNOS_DP,
 	RK3288_DP,
 	RK3399_EDP,
+	RK3576_EDP,
 	RK3588_EDP,
 };
 
@@ -24,6 +25,7 @@ static inline bool analogix_dp_is_rockchip(enum analogix_dp_devtype type)
 	switch (type) {
 	case RK3288_DP:
 	case RK3399_EDP:
+	case RK3576_EDP:
 	case RK3588_EDP:
 		return true;
 	default:
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

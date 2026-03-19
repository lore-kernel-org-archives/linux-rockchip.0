Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BF5E108E1E5
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Mar 2026 10:41:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rw72mc+jN+z+9x3t8iWvzDlm1TXSFbF3+tZ1jHOjz4I=; b=hWLW7+5RiTJmfq
	YxTx+LIDbx6L6JaYIalsZ+DPMdWxLOqfVpPTqrWhKNIm7yfiU6J7qklmJpuL4b0nZ/8lDWxGWFESO
	c2nbjSBE/7QOLcriwNRzJuHRlAHM+nwDbhzJrV9NtKA/ILWxdM9idW6Vw1JuR3thgvrJO4dUTbfBp
	3fVFLTc7hHCKsr8KH5JqS3oK9aoWtuVsM6lAs8ZO50MF3upglgZFUUzFHsqbpPnic1DXQZ2YEUZEr
	VDmPTwu8liPbjaJ/b8tmcwpwtkvvZB9WvXbAFdQ0+yBY29LajGNkRehKCZYbCsDTL66Rfogx4JiVS
	noRQh4wAWcG8eRMgE84g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3AoO-0000000ARIj-2IXc;
	Thu, 19 Mar 2026 10:41:08 +0000
Received: from mail-m19731113.qiye.163.com ([220.197.31.113])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3AoE-0000000AR6L-0NSt;
	Thu, 19 Mar 2026 10:40:59 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3790344e7;
	Thu, 19 Mar 2026 18:40:52 +0800 (GMT+08:00)
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
Subject: [PATCH v2 8/9] drm/bridge: analogix_dp: Add support for RK3576
Date: Thu, 19 Mar 2026 18:40:30 +0800
Message-Id: <20260319104031.1986946-9-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260319104031.1986946-1-damon.ding@rock-chips.com>
References: <20260319104031.1986946-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Tid: 0a9d05af124503a3kunm32a99f093beec1
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkgfGVZNTx5PTxgYSxhIGkJWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=bPLL62824C51knQeLJecJxn2rlS3CxoP79cBWxy6/uxyAUUZocWil+xoEFxDCBZ2OtVkN8Dq/R2BJwppansbnDiXRfI8jc5Zk/tt5SItM6yTB8WY0ylKmnncIJXLL2GsktSk97FpZU0MpJIf029UiD6B4yxqK/lHIt0/BnQaUoU=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=2rUibPvGU5RaGcL0yAn2kiszZxN+IlQQPz638onz4qc=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_034058_327831_731DEE55 
X-CRM114-Status: UNSURE (   8.32  )
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
Cc: kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, amadeus@jmu.edu.cn, Laurent.pinchart@ideasonboard.com, m.szyprowski@samsung.com, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, luca.ceresoli@bootlin.com, devicetree@vger.kernel.org, jonas@kwiboo.se, heiko.stuebner@cherry.de, Damon Ding <damon.ding@rock-chips.com>, linux-arm-kernel@lists.infradead.org, dmitry.baryshkov@oss.qualcomm.com, dianders@chromium.org, alchark@gmail.com, michael.riesch@collabora.com, didi.debian@cknow.org, nicolas.frattaroli@collabora.com, tomeu@tomeuvizoso.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Expand enum analogix_dp_devtype with RK3576_EDP, and add max_link_rate
and max_lane_count configs for it.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
---
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 1 +
 include/drm/bridge/analogix_dp.h                   | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 045fdb77531f..641f37fbea27 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1248,6 +1248,7 @@ static int analogix_dp_dt_parse_pdata(struct analogix_dp_device *dp)
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

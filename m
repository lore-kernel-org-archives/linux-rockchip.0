Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFE26C282DE
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Mar 2025 10:55:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Ge4nrkE3n0Dslgs7FX52d3f0Co0UvW6FA00j05Hhk0=; b=3C2XJobY414K8+
	O3Ju4wvtour2hgze0jFuI9LzQvhHpGvQvSdwAABzgeBk1k46TeHOSj9+9cRf6PsPPpLHm3e41whzM
	ITFTUuX4i+4fTiA433PjGrNs1GIEYu7hcXc7vKaIeqfuUwaF/+GvHEmfNWuuiYBXrHJXmfgaIn/WT
	YSkaQwpHMQ/x63kPCMrg7tqcPypepj1cvApzs9JX+KcwUfUypmjAw6HCWoypM/rD6p94/lYACl9c8
	0+VMD4jGXqHSgEpOmGqV/U0muk7MW7g5Bd/wwz8M+BiusvdD7d7Azj6T/nW6yAwCq9DJKzB02Fnp/
	gZ7pCb8sokYDlxk4TMfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tran8-00000002L2J-2vdi;
	Mon, 10 Mar 2025 10:55:26 +0000
Received: from mail-m3268.qiye.163.com ([220.197.32.68])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1traaR-00000002HlX-33fQ;
	Mon, 10 Mar 2025 10:42:21 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id dc188280;
	Mon, 10 Mar 2025 18:42:15 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v8 07/13] drm/bridge: analogix_dp: Add support for &drm_dp_aux.wait_hpd_asserted()
Date: Mon, 10 Mar 2025 18:41:08 +0800
Message-Id: <20250310104114.2608063-8-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250310104114.2608063-1-damon.ding@rock-chips.com>
References: <20250310104114.2608063-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0IeSVZCQ0IeSU1DS04YH0tWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpPSE
	xVSktLVUpCS0tZBg++
X-HM-Tid: 0a957fa5eccb03a3kunmdc188280
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NSo6ASo*VjJJTSMXIzlIPSM3
	EkwwCzVVSlVKTE9KTUtISEhMT0NCVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKTk9CNwY+
DKIM-Signature: a=rsa-sha256;
	b=Mt07XzW9yyoQKwh7HWb8UUDlKK48215FQ8+zwOAvEjW/6i2X8B7LTNSNDWp2a4oUrRRdd7nRYUE47XZlU2LToe9susyb7WRcMe6vZyMQ1NONQwAwRRVfB6d5TZiNMmmtHsTOAEIl/qP5dTJyuvU2w4WFwA2FV2eWQzqK6ofRiA0=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=C5wB+9893I7lZTyFWnjEKSPI75uW0Q31vE5+3MAp5eA=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_034219_945896_BFDC0FBA 
X-CRM114-Status: UNSURE (   8.88  )
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
Cc: dri-devel@lists.freedesktop.org, dianders@chromium.org, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, maarten.lankhorst@linux.intel.com, mripard@kernel.org, dmitry.baryshkov@linaro.org, Damon Ding <damon.ding@rock-chips.com>, linux-arm-kernel@lists.infradead.org, neil.armstrong@linaro.org, hjc@rock-chips.com, linux-kernel@vger.kernel.org, boris.brezillon@collabora.com, tzimmermann@suse.de, andy.yan@rock-chips.com, krzk+dt@kernel.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add analogix_dpaux_wait_hpd_asserted() to help confirm the HPD state
before doing AUX transfers.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
---
 .../drm/bridge/analogix/analogix_dp_core.c    | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 2b76a9cf3bcb..b7e143b3ff75 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1548,6 +1548,26 @@ static ssize_t analogix_dpaux_transfer(struct drm_dp_aux *aux,
 	return ret;
 }
 
+static int analogix_dpaux_wait_hpd_asserted(struct drm_dp_aux *aux, unsigned long wait_us)
+{
+	struct analogix_dp_device *dp = to_dp(aux);
+	int val;
+	int ret;
+
+	if (dp->force_hpd)
+		return 0;
+
+	pm_runtime_get_sync(dp->dev);
+
+	ret = readx_poll_timeout(analogix_dp_get_plug_in_status, dp, val, !val,
+				 wait_us / 100, wait_us);
+
+	pm_runtime_mark_last_busy(dp->dev);
+	pm_runtime_put_autosuspend(dp->dev);
+
+	return ret;
+}
+
 struct analogix_dp_device *
 analogix_dp_probe(struct device *dev, struct analogix_dp_plat_data *plat_data)
 {
@@ -1652,6 +1672,7 @@ analogix_dp_probe(struct device *dev, struct analogix_dp_plat_data *plat_data)
 
 	dp->aux.name = "DP-AUX";
 	dp->aux.transfer = analogix_dpaux_transfer;
+	dp->aux.wait_hpd_asserted = analogix_dpaux_wait_hpd_asserted;
 	dp->aux.dev = dp->dev;
 	drm_dp_aux_init(&dp->aux);
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

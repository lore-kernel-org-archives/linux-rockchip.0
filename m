Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4EAACD6E4A
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 May 2026 04:06:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xxVjSfZjYNjtgnT6WfOZu7e01g4iQDrphgtt4DwGjSE=; b=mRwqYZUwnLD7T0
	kOdPgMJhCWWqy8MWq7HxgNt7mZzrKTsrdVM6vD/5cV9zS7yyWhjQI1hsVmwO4cSG14F2IE0lv/9VW
	jsRPeb2/iDHhkaLccy+FeBuaVAMZkglDPsOf/5tHv35mZe3iscuDWCnPw9zHz3Zz3CwY4TYpyLr1W
	d6mTucQMC74oQwFPXRofR454iJNzmobdmVSGs2wsru/J10zIdt1i3VdwGV6ppGxyubdyuFRBCbEyo
	gFhO0SBAUGqQqWlR22nHD4qT/msJPLssZvCJBxsc7QVbUmaLZHlGnHhVU6+LscnZb3aci6aVD1hZW
	BXD9zAuWNR+pBAq/+bpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSoTu-00000006icT-3AYs;
	Fri, 29 May 2026 04:05:58 +0000
Received: from mail-m60162.netease.com ([210.79.60.162])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSoTq-00000006iYu-1njc;
	Fri, 29 May 2026 04:05:55 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 404653bc6;
	Fri, 29 May 2026 12:05:50 +0800 (GMT+08:00)
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
Subject: [PATCH v4 2/3] drm/bridge: analogix_dp: Add validation for samsung,lane-count property
Date: Fri, 29 May 2026 12:05:29 +0800
Message-Id: <20260529040530.741336-3-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260529040530.741336-1-damon.ding@rock-chips.com>
References: <20260529040530.741336-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Tid: 0a9e71e8eb0203a8kunmaf9a1d48e6c1d
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDSE9CVkxITklCSh4YGhhDGFYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=DfdPuSR2IE05HJwrYdcrDhvrb3baFXB3hECoW7hXsI7+DxcjIXaD5jhGrwdCL/3jr3hdWhXrjaRR4L3HzG8PKDrX7zpWxn8gMWS1bdKR6cblDWRZd3qxJxWi88l4hPrCEN2QyIVHPn7XP7pddJ+0BICUCFVDlnRZd7rwqN5rlns=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=Syj2RHvx/LpmGjzUXzJU++cXesHP0Q423pMH72UNJp4=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_210554_685900_612AACAE 
X-CRM114-Status: GOOD (  10.64  )
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

Add range check for samsung,lane-count to avoid invalid values.
Validation is only applied when the property exists to maintain
backward compatibility.

Suggested-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
---
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 8cf6b73bceac..699a7f380c56 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1238,6 +1238,7 @@ static int analogix_dp_dt_parse_pdata(struct analogix_dp_device *dp)
 {
 	struct device_node *dp_node = dp->dev->of_node;
 	struct video_info *video_info = &dp->video_info;
+	int ret;
 
 	switch (dp->plat_data->dev_type) {
 	case RK3288_DP:
@@ -1260,8 +1261,16 @@ static int analogix_dp_dt_parse_pdata(struct analogix_dp_device *dp)
 		 */
 		of_property_read_u32(dp_node, "samsung,link-rate",
 				     &video_info->max_link_rate);
-		of_property_read_u32(dp_node, "samsung,lane-count",
-				     &video_info->max_lane_count);
+		ret = of_property_read_u32(dp_node, "samsung,lane-count",
+					   &video_info->max_lane_count);
+		if (!ret) {
+			if (video_info->max_lane_count == 0 ||
+			    video_info->max_lane_count > LANE_COUNT4) {
+				dev_err(dp->dev, "samsung,lane-count = %d is out of range\n",
+					video_info->max_lane_count);
+				return -EINVAL;
+			}
+		}
 		break;
 	}
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

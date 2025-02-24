Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF5B6C021B3
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Feb 2025 08:33:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Yx2Lnv0snXz/0Teh2S/KphP2/kv3uYGFY78FkDcRCw=; b=J4vFARddYzMP0+
	1yi/Hz/PWvP3h+eYE8IPymFyHNjtwKe3qUHfZgovgcFhqJCbzaJ6UPAKMHSIH4QjTHdb/M2mMazyd
	PHru67GC5YJEiUZOZHQWR7jDWd5rvn9NcQcyhOh+grLaqnl299ZdASKzXcEPD1aZGUb+ooIGk8psK
	/ebsmoBmJr2Bu+JULlBmDCrkI1daUAeBnYYyl3BEBuHHyMFcKJpeds3tp2oi804s91iFuHOtlLDtT
	DVxgPwKMOf9eVRZxU7KwUsEVVlzB5D3rCO5H6NIzEMAV9NhF4N9KsGYry8d/crfVXXwh2KKW/zyXi
	hFcPPtlfcAmkErNmKuSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmTuI-0000000Ci3Y-1f6y;
	Mon, 24 Feb 2025 08:33:42 +0000
Received: from mail-m1973183.qiye.163.com ([220.197.31.83])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmTbd-0000000CeDs-2r85;
	Mon, 24 Feb 2025 08:14:27 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id bfd28838;
	Mon, 24 Feb 2025 16:14:20 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v7 12/15] drm/bridge: analogix_dp: Add support for RK3588
Date: Mon, 24 Feb 2025 16:13:22 +0800
Message-Id: <20250224081325.96724-13-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250224081325.96724-1-damon.ding@rock-chips.com>
References: <20250224081325.96724-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGR0fQ1YYH0tNTEpDTxlCQx5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a9537057a0303a3kunmbfd28838
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MC46Mhw6SDIWLxMYCD0hES4Z
	DhdPChBVSlVKTE9LSENPQ01JTUJKVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKTE1KNwY+
DKIM-Signature: a=rsa-sha256;
	b=ksV3oGrJOolUGBIeUvp/AHyHOJ8MLvSyUCMS2jmOTX0Yhb9j1ynlZtoTDLqG6xq9I+rGxJrv+ZFkOJo6efyShIpoBgos61HHFTM9Lr5pmam+qpQZSfH99brOJi+dlQL2RmkVATu61JIK6DlkLU1kg1f5fuKGY49Yn6PpP9iP9iw=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=n9a9Rgpu9DtXmW2lJNTnToZFk8oUbKYLzmjkV8BknHg=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250224_001425_890406_05C96007 
X-CRM114-Status: GOOD (  10.50  )
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
Cc: dianders@chromium.org, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, robh@kernel.org, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, dmitry.baryshkov@linaro.org, Damon Ding <damon.ding@rock-chips.com>, linux-arm-kernel@lists.infradead.org, neil.armstrong@linaro.org, linux-kernel@vger.kernel.org, boris.brezillon@collabora.com, andy.yan@rock-chips.com, krzk+dt@kernel.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Expand enum analogix_dp_devtype with RK3588_EDP, and add max_link_rate
and max_lane_count configs for it.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

---

Changes in v5:
- Add the RK3588_EDP related modification in analogix_dp.h
- Move this commit above related commit on the Rockchip side
---
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 4 ++++
 include/drm/bridge/analogix_dp.h                   | 3 ++-
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index ff81c37dbe1d..49fbff28a8a9 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1513,6 +1513,10 @@ static int analogix_dp_dt_parse_pdata(struct analogix_dp_device *dp)
 		video_info->max_link_rate = 0x0A;
 		video_info->max_lane_count = 0x04;
 		break;
+	case RK3588_EDP:
+		video_info->max_link_rate = 0x14;
+		video_info->max_lane_count = 0x04;
+		break;
 	case EXYNOS_DP:
 		/*
 		 * NOTE: those property parseing code is used for
diff --git a/include/drm/bridge/analogix_dp.h b/include/drm/bridge/analogix_dp.h
index e19b0bbc57d6..cf17646c1310 100644
--- a/include/drm/bridge/analogix_dp.h
+++ b/include/drm/bridge/analogix_dp.h
@@ -16,11 +16,12 @@ enum analogix_dp_devtype {
 	EXYNOS_DP,
 	RK3288_DP,
 	RK3399_EDP,
+	RK3588_EDP,
 };
 
 static inline bool is_rockchip(enum analogix_dp_devtype type)
 {
-	return type == RK3288_DP || type == RK3399_EDP;
+	return type == RK3288_DP || type == RK3399_EDP || type == RK3588_EDP;
 }
 
 struct analogix_dp_plat_data {
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

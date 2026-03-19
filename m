Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04945108E1E4
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Mar 2026 10:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0pgP2Vm9egWIoozm9Ir0awoD6XwIQt6karDEqz5Wnbk=; b=YI9LjEr68qun6b
	vnwZOSFXaCTVQi3G/zo1TAmxHIGub1G8SLZdfORraUPRB0MjGXnenoO0vEvsQ3YoPqgNzgiTayh2M
	q9dBYIM3x5XWTWqu2s6+kyzOSUy1cchYgzCljWk6a80LojIdXiWmzs10tRAKnLjOdLG0IESt6BXHx
	viKuBfZm3hDMVd5LoAUMeoyS8ZfoOLS9UWvq8SoIOQ1fos+jIDN1wBpBBv3bHOjfwGGlfsjj0O+Xr
	zKoYyTqa1xEt/auhCWWzWz3PqENF+C20O7uLeiS5yy2ioxORH+D5zBgsjCKQwnH4AdiWaDbIcr5Hr
	nKthcvsW3NJzEnQcha+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3AoG-0000000ARAu-3sRG;
	Thu, 19 Mar 2026 10:41:00 +0000
Received: from mail-m15578.qiye.163.com ([101.71.155.78])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3Ao5-0000000AQxK-3PCM;
	Thu, 19 Mar 2026 10:40:51 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3790344cf;
	Thu, 19 Mar 2026 18:40:43 +0800 (GMT+08:00)
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
Subject: [PATCH v2 4/9] drm/rockchip: analogix_dp: Enable clock "hclk" for RK3588
Date: Thu, 19 Mar 2026 18:40:26 +0800
Message-Id: <20260319104031.1986946-5-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260319104031.1986946-1-damon.ding@rock-chips.com>
References: <20260319104031.1986946-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Tid: 0a9d05aeecee03a3kunm32a99f093bee8d
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGU1PGVYfSR8ZHUxDS00YHUhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=A167o4bhzpPsG7H9fKNTcsZCfGQ6wEt/NI88uq5Ijla4VOh8z/PuiPt51r5Ft7KBapUKyhRgBKktIcK3OsCXLGOUTyy52HspbTw6GiZDId2yEGkAuhQFuBdY4s9O+MTWf2swiJLiAdyfPixxF2fIcIr342y5OtVFMJOLz15K1DE=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=ZE4V3NtWgbOy1fE2MPgXMnyrBCQ9uphFMwBK7LTMikY=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_034050_049993_A94BAA6C 
X-CRM114-Status: UNSURE (   9.47  )
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

The RK3588 eDP controller needs the video datapath clock "hclk" to work
well. Previously, it works without explicitly adding this clock because
the 'rockchip,vo-grf = <&vo1_grf>' property implicitly enables HCLK_VO1.

Fixes: 729f8eefdcad ("drm/rockchip: analogix_dp: Add support for RK3588")
Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
---
 drivers/gpu/drm/rockchip/analogix_dp-rockchip.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
index 832e9766bef0..aa01ede4945e 100644
--- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
@@ -311,6 +311,7 @@ static int rockchip_dp_of_probe(struct rockchip_dp_device *dp)
 {
 	struct device *dev = dp->dev;
 	struct device_node *np = dev->of_node;
+	struct clk *clk;
 
 	dp->grf = syscon_regmap_lookup_by_phandle(np, "rockchip,grf");
 	if (IS_ERR(dp->grf))
@@ -327,6 +328,11 @@ static int rockchip_dp_of_probe(struct rockchip_dp_device *dp)
 		return dev_err_probe(dev, PTR_ERR(dp->pclk),
 				     "failed to get pclk property\n");
 
+	clk = devm_clk_get_optional_enabled(dev, "hclk");
+	if (IS_ERR(clk))
+		return dev_err_probe(dev, PTR_ERR(clk),
+				     "failed to get hclk property\n");
+
 	dp->rst = devm_reset_control_get(dev, "dp");
 	if (IS_ERR(dp->rst))
 		return dev_err_probe(dev, PTR_ERR(dp->rst),
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6964CCF9C5B
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Sep 2024 22:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MXZ12mTscVCiY9jvGDdDNX4/uDQVK65NeJsF5eV40jQ=; b=S1B1FLHF0kW0Wy
	iVmpr3EYxoN0243gwGGtJTuq7b7mqDGQ7dWpHB4/E1j4YvxfoD/OdfqnnI64HS9GNoy7Skn3vXPGy
	Vo6cPzoJmnP6mWSimwK51OPZC/GQacVeK7i8pIy8+BMQiS98LMQJPJqYSqDrNDS1bKo/M93+QHQ28
	hPjXHxtCQ9WQbJSQliZZtRqe1icGN613VCPsORyi24ThoxVZGsntFiQX+Fn+Ln2u8NT7xQL11vBVa
	66N0f7b+7fiXGfO+IDh2PyuMDAAhcT3EFmKZzix3r1soMACF53I79QGNwoqkFvBwW5mCdT8ATJZ0Z
	cBQRaXB89+TJxi87DWsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ss8Wn-0000000ELvb-3FWP;
	Sat, 21 Sep 2024 22:24:33 +0000
Received: from smtp.forwardemail.net ([207.246.76.47])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ss8TT-0000000ELRp-1NNc
	for linux-rockchip@lists.infradead.org;
	Sat, 21 Sep 2024 22:21:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1726957252; bh=8XVidTJxe1Ijnds0MNBHEWFnH2eEKvVTfDWt1cqAA5Q=;
 b=sX6GAVKnIhbByF5a0w2D3pfJpJS0QMar9ShPqOlepKOoNlTSd9B5t71Is4cLwO49fVp3g9xRl
 8GGOgyCEb+Zmbf5OqPBb3l+YdRH5TufOXIIzuVIV78bdoXSyAHd9e0nKXxMOlxGT6iTE/dwif+w
 yj8eUjOqQlIcO5z1AFytaEQXcSwlakSOSJApJKVv56Y6flGZKZ+jit4hDcNTw+Puc6ihCyh2998
 1BbWEpuS/r0qUrbixizgO3tNR7hyELhUPT6hG5HrCuY62nbiphNTLvKQ8lHkHVxYK1TPIhaBEfT
 Q/4S6d3v+ngk6USufMkTjOdqImE71Efsb9WnTkfgwFOQ==
From: Jonas Karlman <jonas@kwiboo.se>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sandy Huang <hjc@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 3/3] drm/rockchip: vop: Split rk3288-vop into big and lit
Date: Sat, 21 Sep 2024 22:20:03 +0000
Message-ID: <20240921222007.2301868-4-jonas@kwiboo.se>
X-Mailer: git-send-email 2.46.1
In-Reply-To: <20240921222007.2301868-1-jonas@kwiboo.se>
References: <20240921222007.2301868-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 207.246.76.47
X-ForwardEmail-ID: 66ef46c318c10b4d4a165d2b
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240921_152107_677265_0399272A 
X-CRM114-Status: GOOD (  12.80  )
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

The Rockchip RK3288 SoC contain two different Visual Output Processor
(VOP) blocks, VOP_BIG and VOP_LIT. The VOP blocks support different max
output resolution, 3840x2160 and 2560x1600.

Add support for the compatible used to differentiate between VOP_BIG and
VOP_LIT, support for the old compatible is kept for compatibility with
older device tree.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 27 +++++++++++++++------
 1 file changed, 20 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
index e2c6ba26f437..978db93cda33 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
@@ -762,7 +762,7 @@ static const struct vop_intr rk3288_vop_intr = {
 	.clear = VOP_REG(RK3288_INTR_CTRL0, 0xf, 8),
 };
 
-static const struct vop_data rk3288_vop = {
+static const struct vop_data rk3288_vop_big = {
 	.version = VOP_VERSION(3, 1),
 	.feature = VOP_FEATURE_OUTPUT_RGB10,
 	.intr = &rk3288_vop_intr,
@@ -772,14 +772,22 @@ static const struct vop_data rk3288_vop = {
 	.win = rk3288_vop_win_data,
 	.win_size = ARRAY_SIZE(rk3288_vop_win_data),
 	.lut_size = 1024,
-	/*
-	 * This is the maximum resolution for the VOPB, the VOPL can only do
-	 * 2560x1600, but we can't distinguish them as they have the same
-	 * compatible.
-	 */
 	.max_output = { 3840, 2160 },
 };
 
+static const struct vop_data rk3288_vop_lit = {
+	.version = VOP_VERSION(3, 1),
+	.feature = VOP_FEATURE_OUTPUT_RGB10,
+	.intr = &rk3288_vop_intr,
+	.common = &rk3288_common,
+	.modeset = &rk3288_modeset,
+	.output = &rk3288_output,
+	.win = rk3288_vop_win_data,
+	.win_size = ARRAY_SIZE(rk3288_vop_win_data),
+	.lut_size = 1024,
+	.max_output = { 2560, 1600 },
+};
+
 static const int rk3368_vop_intrs[] = {
 	FS_INTR,
 	0, 0,
@@ -1245,8 +1253,13 @@ static const struct of_device_id vop_driver_dt_match[] = {
 	  .data = &rk3066_vop },
 	{ .compatible = "rockchip,rk3188-vop",
 	  .data = &rk3188_vop },
+	{ .compatible = "rockchip,rk3288-vop-big",
+	  .data = &rk3288_vop_big },
+	{ .compatible = "rockchip,rk3288-vop-lit",
+	  .data = &rk3288_vop_lit },
+	/* rockchip,rk3288-vop kept for backward compatibility */
 	{ .compatible = "rockchip,rk3288-vop",
-	  .data = &rk3288_vop },
+	  .data = &rk3288_vop_big },
 	{ .compatible = "rockchip,rk3368-vop",
 	  .data = &rk3368_vop },
 	{ .compatible = "rockchip,rk3366-vop",
-- 
2.46.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

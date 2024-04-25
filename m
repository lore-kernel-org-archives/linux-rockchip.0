Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1B0CC4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Apr 2024 19:55:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Su0XcLq9hvyXkWAjozQQ+cFHJOcpCrhJstqwY+0p0C8=; b=vnE4Jonhr5D22w
	vbkNYFmnhkvq67pUdXeK2DDk16d4tNFPKYJfMUZXSUe4e4hIBn38/hYC/iMp4aRp5Tze+533/Eo6S
	fY1mSNF0QTeKxnkIEKfLbyyrb1JZ2GUEy2UbL3qWatDtNaOs9C+Uq1JCB4/2hcworPZYT/CHmIsNf
	hu/jXsrRKl7T+7sxlczm06yDUjuw5D3JbOM7bu3+ov/e+d4IOziONimA+5Qe9QKR+z20YexrozeKk
	rw5GTOhYUX3NwUf1JaL0Sqr4gd2bGk0uX8F5avSiCk/umIpxnuPiznArrLKPA/F8WeZovgAyJF7Nb
	+KbWlLzn3LlI8sRI5hZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s05C4-00000009wu6-0TZL;
	Thu, 25 Apr 2024 19:55:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s05Bp-00000009wij-39CT;
	Thu, 25 Apr 2024 19:55:31 +0000
Received: from i53875b01.versanet.de ([83.135.91.1] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1s05BY-0005vK-29; Thu, 25 Apr 2024 21:55:12 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: quentin.schulz@theobroma-systems.com,
	hjc@rock-chips.com,
	andy.yan@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH 2/2] drm/rockchip: vop2: configure layers for vp3 on rk3588
Date: Thu, 25 Apr 2024 21:55:06 +0200
Message-Id: <20240425195506.2935955-3-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240425195506.2935955-1-heiko@sntech.de>
References: <20240425195506.2935955-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_125529_811915_E966FF67 
X-CRM114-Status: GOOD (  15.45  )
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

From: Heiko Stuebner <heiko.stuebner@cherry.de>

The rk3588 VOP2 has 4 video-ports, yet the driver currently only
configures the first 3, as used on the rk3568.

Add another block to configure the vp3 as well, if applicable.

Fixes: 5a028e8f062f ("drm/rockchip: vop2: Add support for rk3588")
Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 12 ++++++++++++
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h |  1 +
 2 files changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 523880a4e8e74..1a327a9ed7ee4 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -2303,6 +2303,7 @@ static void vop2_setup_alpha(struct vop2_video_port *vp)
 static void vop2_setup_layer_mixer(struct vop2_video_port *vp)
 {
 	struct vop2 *vop2 = vp->vop2;
+	const struct vop2_data *vop2_data = vop2->data;
 	struct drm_plane *plane;
 	u32 layer_sel = 0;
 	u32 port_sel;
@@ -2344,6 +2345,17 @@ static void vop2_setup_layer_mixer(struct vop2_video_port *vp)
 	else
 		port_sel |= FIELD_PREP(RK3568_OVL_PORT_SET__PORT2_MUX, 8);
 
+	/* configure vp3 */
+	if (vop2_data->soc_id == 3588) {
+		struct vop2_video_port *vp3 = &vop2->vps[3];
+
+		if (vp3->nlayers)
+			port_sel |= FIELD_PREP(RK3588_OVL_PORT_SET__PORT3_MUX,
+				(vp3->nlayers + vp2->nlayers + vp1->nlayers + vp0->nlayers - 1));
+		else
+			port_sel |= FIELD_PREP(RK3588_OVL_PORT_SET__PORT3_MUX, 8);
+	}
+
 	layer_sel = vop2_readl(vop2, RK3568_OVL_LAYER_SEL);
 
 	ofs = 0;
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
index 615a16196aff6..f46fb795414e1 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
@@ -489,6 +489,7 @@ enum dst_factor_mode {
 #define RK3588_OVL_PORT_SEL__CLUSTER2			GENMASK(21, 20)
 #define RK3568_OVL_PORT_SEL__CLUSTER1			GENMASK(19, 18)
 #define RK3568_OVL_PORT_SEL__CLUSTER0			GENMASK(17, 16)
+#define RK3588_OVL_PORT_SET__PORT3_MUX			GENMASK(15, 12)
 #define RK3568_OVL_PORT_SET__PORT2_MUX			GENMASK(11, 8)
 #define RK3568_OVL_PORT_SET__PORT1_MUX			GENMASK(7, 4)
 #define RK3568_OVL_PORT_SET__PORT0_MUX			GENMASK(3, 0)
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

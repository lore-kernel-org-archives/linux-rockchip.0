Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51D33C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Dec 2023 11:59:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MQAkBno/6Y+rCtM27PYrub9ktnLo3aJgMZvW1KTor90=; b=b/dbeQdTz8a8qJ
	ipLPouPi04jqb8eIchPgvAz5aEP3p/EszDHlwzvjATASGzAdkfbKdh5xilk2cvk77rRheXS4FuSfn
	wt9OxgeGHEbZ2tfMrLUlmS0MnpjHEOUGmZv75dQjUqI3Stz/743I1Lc18OyauypsmEbpiCDA+oJyL
	z+UFn6jDuDW8/K1B9vbkdTTsjXyBt6/VMJw2y6N3UXK11vjFDF+RbLdaZx6Hbqj0mIoFggNtEoCSW
	oFKm8i7L7l1GhPOkWk+iBlN0B2VDI92K3IUnmOPavXcOAVbcZoIK1XN6sxlAN3s4Z+Obi0ko47JxJ
	/AziHHl3xaq2B/6302rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCewI-004mC0-1p;
	Mon, 11 Dec 2023 11:59:10 +0000
Received: from m15.mail.163.com ([45.254.50.219])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCew4-004m8b-2U
	for linux-rockchip@lists.infradead.org;
	Mon, 11 Dec 2023 11:59:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=ivYwG
	0i8GvTy5B3DD4RgxIA/V22tX/s2NpyT/lti0eQ=; b=hGpFQL3B1tq2R+3ICxkZ0
	KMxJL1CWx1/tPMaXixkPlMb5fIGiE70fD1kpfXhNanfYfiuKi0Vi6gWfnjxEnzva
	Z4n6d+8JjGsZXbutlJXD6zcrg23w+Wnw6apCldxuvzSfNJEyrqDnvtg7wtNWKlcU
	GBfVVhB3kL8U2wdiNuRuHM=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g1-2 (Coremail) with SMTP id _____wA3Lz5j+XZl9ZkABA--.22432S2;
	Mon, 11 Dec 2023 19:58:30 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	kever.yang@rock-chips.com,
	chris.obbard@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v5 08/16] drm/rockchip: vop2: rename grf to sys_grf
Date: Mon, 11 Dec 2023 19:58:26 +0800
Message-Id: <20231211115826.1785190-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231211115547.1784587-1-andyshrk@163.com>
References: <20231211115547.1784587-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wA3Lz5j+XZl9ZkABA--.22432S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7AFW7tFy3Ww1DKw4DurW5trb_yoW8Zr1fpa
	sxAay2gr4xGrZFqF1vkFs8CFWakws7CayIk3WIk3Wa9ry7tr98KFs8Wa45JrW3trnruF4a
	q3yqyry3CFy7Ar7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jDSdgUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEgpDXmVOA43CoAAAsC
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

From: Andy Yan <andy.yan@rock-chips.com>

The vop2 need to reference more grf(system grf, vop grf, vo0/1 grf,etc)
in the upcoming rk3588.

So we rename the current system grf to sys_grf.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>
---

(no changes since v1)

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index d52395b6aff7..64155b115744 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -190,7 +190,7 @@ struct vop2 {
 	void __iomem *regs;
 	struct regmap *map;
 
-	struct regmap *grf;
+	struct regmap *sys_grf;
 
 	/* physical map length of vop2 register */
 	u32 len;
@@ -1524,9 +1524,9 @@ static void rk3568_set_intf_mux(struct vop2_video_port *vp, int id,
 		dip &= ~RK3568_DSP_IF_POL__RGB_LVDS_PIN_POL;
 		dip |= FIELD_PREP(RK3568_DSP_IF_POL__RGB_LVDS_PIN_POL, polflags);
 		if (polflags & POLFLAG_DCLK_INV)
-			regmap_write(vop2->grf, RK3568_GRF_VO_CON1, BIT(3 + 16) | BIT(3));
+			regmap_write(vop2->sys_grf, RK3568_GRF_VO_CON1, BIT(3 + 16) | BIT(3));
 		else
-			regmap_write(vop2->grf, RK3568_GRF_VO_CON1, BIT(3 + 16));
+			regmap_write(vop2->sys_grf, RK3568_GRF_VO_CON1, BIT(3 + 16));
 		break;
 	case ROCKCHIP_VOP2_EP_HDMI0:
 		die &= ~RK3568_SYS_DSP_INFACE_EN_HDMI_MUX;
@@ -2768,7 +2768,7 @@ static int vop2_bind(struct device *dev, struct device *master, void *data)
 			return PTR_ERR(vop2->lut_regs);
 	}
 
-	vop2->grf = syscon_regmap_lookup_by_phandle(dev->of_node, "rockchip,grf");
+	vop2->sys_grf = syscon_regmap_lookup_by_phandle(dev->of_node, "rockchip,grf");
 
 	vop2->hclk = devm_clk_get(vop2->dev, "hclk");
 	if (IS_ERR(vop2->hclk)) {
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

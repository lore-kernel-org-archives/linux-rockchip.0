Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76E7AC10DC1
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Nov 2023 12:23:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uk6fPbeHNM+yPMmMW0uneCFMwht+Ap+I8+Cb3v1rMa4=; b=HGNtdAoB23Gp2V
	cRmZPAEMiSmssOsXdKjgtzFAsVJcsNN6ZUc9aST3hHvEiCQQZxkf+52AAVQTxh/kvc/4i/7/dH7/z
	vhxpEdVfu0u8rqrK0NG77S+/rmwOvXhA3KGSTcRTp3sKbJB398sYNgPejFRMJmvifCCsYEU5gatUX
	uwEowiq9fwdcWZJXT4kCPAFDjHxxDIsgdCXdnau8eFsGLccCiE6Z8xe/W/if0xHe3VhqKPDydBiTS
	mcbqoGLnKp3AgPJ03yjslqnQ3+sRAIAfu9sRaElCzNoVKlL7Jfj7QriQCu8Rg/dy0O6GzkvnNZFPY
	FSRwV2TSVj4TQFjplTDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8g58-00Aq8s-05;
	Thu, 30 Nov 2023 12:23:50 +0000
Received: from m15.mail.163.com ([45.254.50.220])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8g54-00Aq6p-2d
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Nov 2023 12:23:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=aescF
	38z6fBhd2gmVmB/UL5kxawZRAL0of1bYn6ck7c=; b=ku2fuzpuWNF9/yrNaKf9W
	yM0I68RIFy9k2NQV9Zq71Z8pYr3rdFTflJJvK+ZT9qcBZBhiBj7gPnvMba7zOPMn
	Fth1kwx95wTcsgNoqfHEiGr14Xh+0wjCJDPgET/p2JQVZ3gYdfPT9iGQn4Mebu0l
	w3AcVEiGBIKQ6aM7v0lT5Q=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g1-1 (Coremail) with SMTP id _____wDn77a_fmhlZLiqCQ--.51133S2;
	Thu, 30 Nov 2023 20:23:30 +0800 (CST)
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
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v3 05/14] drm/rockchip: vop2: Add write mask for VP config done
Date: Thu, 30 Nov 2023 20:23:26 +0800
Message-Id: <20231130122326.13014-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231130122001.12474-1-andyshrk@163.com>
References: <20231130122001.12474-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wDn77a_fmhlZLiqCQ--.51133S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7uw4rKw17GrW5WF13XF4fKrg_yoW8Ww1fpF
	yrAay5urs2kF42gr1DKFy5Zr1ayasrAa92yr97Kw13Xas0qr1DZrn0kF1jyr98JFWxZr1a
	ywsrAryrGF4jvrJanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jSzuXUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEgQ4XmVOAqtkeAAAsu
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_042347_233618_55E817FF 
X-CRM114-Status: GOOD (  10.59  )
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

The write mask bit is used to make sure when writing
config done bit for one VP will not overwrite the other.

Unfortunately, the write mask bit is missing on
rk3566/8, that means when we write to these bits,
it will not take any effect.

We need this to make the vop work properly after
rk3566/8 variants.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

Changes in v3:
- split from the vop2 driver patch

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index a019cc9bbd54..25c1f33c5622 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -268,12 +268,23 @@ static bool vop2_cluster_window(const struct vop2_win *win)
 	return win->data->feature & WIN_FEATURE_CLUSTER;
 }
 
+/*
+ * Note:
+ * The write mask function is missing on rk3566/8, write
+ * to this bit has no effect, for the other soc(rk3588 and
+ * the following...), this function works well.
+ *
+ * GLB_CFG_DONE_EN doesn't have a write mask bit
+ *
+ */
 static void vop2_cfg_done(struct vop2_video_port *vp)
 {
 	struct vop2 *vop2 = vp->vop2;
+	u32 val = RK3568_REG_CFG_DONE__GLB_CFG_DONE_EN;
+
+	val |= BIT(vp->id) | (BIT(vp->id) << 16);
 
-	regmap_set_bits(vop2->map, RK3568_REG_CFG_DONE,
-			BIT(vp->id) | RK3568_REG_CFG_DONE__GLB_CFG_DONE_EN);
+	regmap_set_bits(vop2->map, RK3568_REG_CFG_DONE, val);
 }
 
 static void vop2_win_disable(struct vop2_win *win)
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

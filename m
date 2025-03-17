Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2AA2C282EC
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Mar 2025 08:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KDR13UU31A0VvtU/PUNogcU67KUAbaC9Y7L7xPLqZ/E=; b=MWPUilvic04SYx
	JSnZmWRWSiEJQRJBB8hmpdKApfShLZxGzJHxgAa47PsM4W2uUDADtDOvnx+ekcjQRQRGMcRJNburs
	abm12C3Mn9rmnZdzfCb/3UAHTDzvuEhbculmaQyjPEaIYkcnHqchz4S4SBGUU7HhHTW6fVxGDg6E7
	HwY6FGNPxnSk6FFnjXkM79izoRDHDj8axIYlg/2QhrqiJtOrxo6ZsoECrFQKMw8Fw7nysVr6uJKCx
	aWQXcrLtYiYHKZtHE3fJTIHe+ZbxFgPI+OcGiolPFXBAAG+eYWeOvRAUVYmRRGmMvR4TbRNC/POzX
	tJOEJgRcmkTuix7RJXqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tu5kK-00000001iU0-2ynw;
	Mon, 17 Mar 2025 08:22:52 +0000
Received: from m16.mail.163.com ([117.135.210.4])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tu5ic-00000001iB3-3AyY;
	Mon, 17 Mar 2025 08:21:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=xuKzq
	xXQuuudyoZS1yA8FZNGTyjI0RvfS078un9hEUk=; b=Mb9gDgLPOWJMzRTOAwR60
	6lhkA+PBspsGBAcme3DUKgjd5IL5CkuckuTsLw68dzW1tDa0hcT1psbYLCpWPdRp
	Nvv6SEV7YJvoWudVX9sAM8GqU3y4LonngTRtbVrb2L0VVgDHlrhsvGIlr4HhXhkU
	tMbIxgXOciDXAsBPcUElQo=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g1-1 (Coremail) with SMTP id _____wCXg9tg29dn5rCCTQ--.26560S2;
	Mon, 17 Mar 2025 16:20:51 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Subject: [PATCH] drm/rockchip: dw_hdmi_qp: Fix io init for dw_hdmi_qp_rockchip_resume
Date: Mon, 17 Mar 2025 16:20:39 +0800
Message-ID: <20250317082047.564404-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CM-TRANSID: _____wCXg9tg29dn5rCCTQ--.26560S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7Zw48Kw17JF48CFy3Xr1UWrg_yoW8CF43p3
	y3AryjkrWkGr4UXwn5A3Z2yFW2y3ZrJw4SqFWxKas2y3W09r1fGr93ua1rXrZxXF9rZF4a
	krZ3t34fJa1UXaUanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jIyxiUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0hkTXmfX1jmrPQAAsP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_012107_119876_8340A5C1 
X-CRM114-Status: UNSURE (   7.88  )
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
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Andy Yan <andy.yan@rock-chips.com>

Use cfg->ctrl_ops->io_init callback make it work for all platform.

Fixes: 3f60dbd40d3f ("drm/rockchip: dw_hdmi_qp: Add platform ctrl callback")
Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

 .../gpu/drm/rockchip/dw_hdmi_qp-rockchip.c    | 23 +++----------------
 1 file changed, 3 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
index 3d1dddb34603..631a7080862b 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
@@ -600,27 +600,10 @@ static void dw_hdmi_qp_rockchip_remove(struct platform_device *pdev)
 static int __maybe_unused dw_hdmi_qp_rockchip_resume(struct device *dev)
 {
 	struct rockchip_hdmi_qp *hdmi = dev_get_drvdata(dev);
-	u32 val;
-
-	val = HIWORD_UPDATE(RK3588_SCLIN_MASK, RK3588_SCLIN_MASK) |
-	      HIWORD_UPDATE(RK3588_SDAIN_MASK, RK3588_SDAIN_MASK) |
-	      HIWORD_UPDATE(RK3588_MODE_MASK, RK3588_MODE_MASK) |
-	      HIWORD_UPDATE(RK3588_I2S_SEL_MASK, RK3588_I2S_SEL_MASK);
-	regmap_write(hdmi->vo_regmap,
-		     hdmi->port_id ? RK3588_GRF_VO1_CON6 : RK3588_GRF_VO1_CON3,
-		     val);
-
-	val = HIWORD_UPDATE(RK3588_SET_HPD_PATH_MASK,
-			    RK3588_SET_HPD_PATH_MASK);
-	regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON7, val);
+	const struct rockchip_hdmi_qp_cfg *cfg;
 
-	if (hdmi->port_id)
-		val = HIWORD_UPDATE(RK3588_HDMI1_GRANT_SEL,
-				    RK3588_HDMI1_GRANT_SEL);
-	else
-		val = HIWORD_UPDATE(RK3588_HDMI0_GRANT_SEL,
-				    RK3588_HDMI0_GRANT_SEL);
-	regmap_write(hdmi->vo_regmap, RK3588_GRF_VO1_CON9, val);
+	cfg = of_device_get_match_data(dev);
+	cfg->ctrl_ops->io_init(hdmi);
 
 	dw_hdmi_qp_resume(dev, hdmi->hdmi);
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

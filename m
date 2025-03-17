Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D72EC282EC
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Mar 2025 10:32:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AsxgOfQCQ6u941PWbQWths47tovJmwFSVoei61m1hDg=; b=oggNTzMGUP3EWK
	iyEtUfkvb1FkX1/BGLKRkjUMGYp+RdztHknpVC7lzzcIoo5lSxxmBrtJVSiCFDS8h0puvTIhJAauw
	D7YV2O1ujFcjt1A/XF5j+M2TrvetnLbUSk1MKInCcmQRNS6vnfVMqPDaE5IOMhBMimGMAr0hzj8Fh
	beJytqcFUjn6FqJhaNtP43jHnPPPk55iA+Dw77BxsmMfZ4lerzb7ye8R5EdpyyvoauEL+GWq365LX
	6Iex3V7u4JERK4yIObmHuCYi9zg61j6SdwsNGLZ9JH2SBhf9H+e5Nv0jY0YDpcGM2k3jUu58glBtL
	foHz//bTVKlb8vMkrG4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tu7lD-00000002ATE-1YaV;
	Mon, 17 Mar 2025 10:31:55 +0000
Received: from m16.mail.163.com ([117.135.210.3])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tu7hp-000000029Xm-0D8D;
	Mon, 17 Mar 2025 10:28:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=fmWIS
	0wLHvOfDdrgbj8ORSE1eJQwOVhMX/zX7anGKW4=; b=SqekagC72tCKT25KHSmS4
	/+b/w+C575D1N98h4BDUoxjOxnTCMxhJz4/JPOgO//WZqLyL2LezzhFK4lhH9+ng
	XzK09N4vXHxDZpHOogN3tAa/TN2/mpv3caiedJldEyp/q8pNoY4wuUXTccxfdjKu
	Ci4hDKUATluwrmqbDmq0dk=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g1-3 (Coremail) with SMTP id _____wBnuTwy+ddnhLtwTQ--.47861S2;
	Mon, 17 Mar 2025 18:28:06 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Subject: [PATCH v2] drm/rockchip: dw_hdmi_qp: Fix io init for dw_hdmi_qp_rockchip_resume
Date: Mon, 17 Mar 2025 18:27:53 +0800
Message-ID: <20250317102757.565679-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CM-TRANSID: _____wBnuTwy+ddnhLtwTQ--.47861S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7ZFWfXFWrGr45XFWxGrWUtwb_yoW8Kw45pw
	4UAa4jkrWkGr47Xrn8ZFnrArW2k3W7Jw4SqFWxKa4vv3W0qrn3KF93Wa1rXr43ZF9xuF4a
	krWvy34fJF4UXFUanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07j7uc_UUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0h4TXmfX95EooAAAsf
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_032825_502541_8464344A 
X-CRM114-Status: GOOD (  10.07  )
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
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Andy Yan <andy.yan@rock-chips.com>

Use cfg->ctrl_ops->io_init callback make it work for all platform.
And it's also gets rid of code duplication

Fixes: 3f60dbd40d3f ("drm/rockchip: dw_hdmi_qp: Add platform ctrl callback")
Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

---

Changes in v2:
- Store the ctrl_ops in struct rockchip_hdmi_qp

 .../gpu/drm/rockchip/dw_hdmi_qp-rockchip.c    | 23 +++----------------
 1 file changed, 3 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
index 3d1dddb34603..7d531b6f4c09 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
@@ -94,6 +94,7 @@ struct rockchip_hdmi_qp {
 	struct gpio_desc *enable_gpio;
 	struct delayed_work hpd_work;
 	int port_id;
+	const struct rockchip_hdmi_qp_ctrl_ops *ctrl_ops;
 };
 
 struct rockchip_hdmi_qp_ctrl_ops {
@@ -461,6 +462,7 @@ static int dw_hdmi_qp_rockchip_bind(struct device *dev, struct device *master,
 		return -ENODEV;
 	}
 
+	hdmi->ctrl_ops = cfg->ctrl_ops;
 	hdmi->dev = &pdev->dev;
 	hdmi->port_id = -ENODEV;
 
@@ -600,27 +602,8 @@ static void dw_hdmi_qp_rockchip_remove(struct platform_device *pdev)
 static int __maybe_unused dw_hdmi_qp_rockchip_resume(struct device *dev)
 {
 	struct rockchip_hdmi_qp *hdmi = dev_get_drvdata(dev);
-	u32 val;
 
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
-
-	if (hdmi->port_id)
-		val = HIWORD_UPDATE(RK3588_HDMI1_GRANT_SEL,
-				    RK3588_HDMI1_GRANT_SEL);
-	else
-		val = HIWORD_UPDATE(RK3588_HDMI0_GRANT_SEL,
-				    RK3588_HDMI0_GRANT_SEL);
-	regmap_write(hdmi->vo_regmap, RK3588_GRF_VO1_CON9, val);
+	hdmi->ctrl_ops->io_init(hdmi);
 
 	dw_hdmi_qp_resume(dev, hdmi->hdmi);
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

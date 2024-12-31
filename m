Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 806A0E77188
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Dec 2024 16:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6NoKhTrSgYNWHmmO9FxMODBp2rdHrFT7O/bGCUnMAVo=; b=p1XuVIk6BGf6C+
	ZHACpk/8UiSz5B7VruKw4lx8UD7Yswy1gnmAxSN55VdiT/yOPGPO7JKxl7mItONAmL6zRpnxxJ0Bf
	B0ZbRUEy91hcYaTklKmSPG/+a/UsbxuQ4S8JOBoHhOPtEf/u4uPTJs9Q57wFk6NccBffSiFJJXOTr
	mLCGtXP7I2PG8KaoYoJK2v6Oqhmy1MD9mvPwKUoMn+qA/obWqD5D11pCW+VNHp02ruMyB/CUr3Lw+
	FWcjnoAogJo2HqFHCpImzeSr0jiLTEx8W+gaknznZQtwgSPzO61eyaGARMWPIYAkWOdHwJtWjtHfz
	Mas9s/orw5NQVxG5EjKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tSfBu-00000007TqH-2Z0h;
	Tue, 31 Dec 2024 16:33:58 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tSfAk-00000007Tgo-3CkQ;
	Tue, 31 Dec 2024 16:32:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 823A7A40A91;
	Tue, 31 Dec 2024 16:30:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C16F8C4CED2;
	Tue, 31 Dec 2024 16:32:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735662765;
	bh=OjfLAGmHkWtgKweoyUxQQFG2s2A/m0vcSE7kkcaRedo=;
	h=From:To:Cc:Subject:Date:From;
	b=FAoc79KjudMbrLRJmA/ELEDNWqQoOumJ90lc00KwGoOhj0tV4HX+5saWXCoOLjiBf
	 ROapW+3/q1Rbj59ZbcWDx4IO1Sjg+YVcFHcOuA/t06lMnMYndlDRnuxl0LPWN74x2p
	 wRKxQ/0dEJHXu0IFYR4JeSHHBf9WMsEjM6691PMpDPKD99LCDU35Ob1QWOWpqyVlsj
	 TZ1ZNDkfMJvC3KERmj7bmY27zeNcfiwsvK852febDqH45D3DbYuk5IUQ7gXzRSxhvN
	 fU99cMGEGGFSIt1IJ/FXQpjFe6q7HD1FMCxG8s2SCk7nQSZrDpG+MJOjz/JoRoZmDE
	 Aq7OCwYUPFV+Q==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] phy: Use (of|device)_property_present() for non-boolean properties
Date: Tue, 31 Dec 2024 10:31:20 -0600
Message-ID: <20241231163121.241543-1-robh@kernel.org>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241231_083246_926920_C3793F02 
X-CRM114-Status: GOOD (  10.76  )
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

The use of (of|device)_property_read_bool() for non-boolean properties
is deprecated in favor of (of|device)_property_present() when testing
for property presence.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 drivers/phy/mediatek/phy-mtk-tphy.c           | 4 ++--
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-tphy.c b/drivers/phy/mediatek/phy-mtk-tphy.c
index 3f7095ec5978..d36f68dd622e 100644
--- a/drivers/phy/mediatek/phy-mtk-tphy.c
+++ b/drivers/phy/mediatek/phy-mtk-tphy.c
@@ -1215,7 +1215,7 @@ static int phy_type_syscon_get(struct mtk_phy_instance *instance,
 	int ret;
 
 	/* type switch function is optional */
-	if (!of_property_read_bool(dn, "mediatek,syscon-type"))
+	if (!of_property_present(dn, "mediatek,syscon-type"))
 		return 0;
 
 	ret = of_parse_phandle_with_fixed_args(dn, "mediatek,syscon-type",
@@ -1278,7 +1278,7 @@ static int phy_efuse_get(struct mtk_tphy *tphy, struct mtk_phy_instance *instanc
 	}
 
 	/* software efuse is optional */
-	instance->efuse_sw_en = device_property_read_bool(dev, "nvmem-cells");
+	instance->efuse_sw_en = device_property_present(dev, "nvmem-cells");
 	if (!instance->efuse_sw_en)
 		return 0;
 
diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 96f3d868a526..b5e6a864deeb 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -440,7 +440,7 @@ static int rockchip_usb2phy_extcon_register(struct rockchip_usb2phy *rphy)
 	struct extcon_dev *edev;
 	int ret;
 
-	if (of_property_read_bool(node, "extcon")) {
+	if (of_property_present(node, "extcon")) {
 		edev = extcon_get_edev_by_phandle(rphy->dev, 0);
 		if (IS_ERR(edev))
 			return dev_err_probe(rphy->dev, PTR_ERR(edev),
@@ -1323,7 +1323,7 @@ static int rockchip_usb2phy_otg_port_init(struct rockchip_usb2phy *rphy,
 			goto out;
 		}
 
-		if (!of_property_read_bool(rphy->dev->of_node, "extcon")) {
+		if (!of_property_present(rphy->dev->of_node, "extcon")) {
 			/* do initial sync of usb state */
 			id = property_enabled(rphy->grf, &rport->port_cfg->utmi_id);
 			extcon_set_state_sync(rphy->edev, EXTCON_USB_HOST, !id);
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

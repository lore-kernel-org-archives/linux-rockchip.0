Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52742E7491C
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Dec 2025 07:11:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SkFUbKxHrVs483Yq6MywUXano5Ho40HQqXn7wWmapLU=; b=jYYDvoPG1/NWK2
	85tu+aaOg6MFzx75m+m2m2IoaQbZQrQWl1ecNm/JstQzvGD6TBTwbikSN0i54mttNVr1d6J9XyBGI
	imAcxL8F9PxLQQbomeoQYj1RrtIXuimGUjhbHh/Znz5IcgmBNroOd/R8/PMBwFtaw2H+Zj3b/EPqZ
	9IfQc37h6ZtGe0bWl1EZ6giDssYzv/AvszrKBz+wSOSI6XLBlT1DAx5mTkO9/YiEmj4/se6JTP01J
	vFSO7FZjlQJgdPpVxKN2uTLddDng1Rs3r/roADyqBRnqaCZhJx5MyoaXRjZlEysjlLrNm31tKPVSC
	t40/PuoSgdinBsPdxHJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYJ1p-0000000GWgO-2z9A;
	Wed, 24 Dec 2025 07:11:25 +0000
Received: from mail-m49203.qiye.163.com ([45.254.49.203])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYJ1m-0000000GWfV-3Ywj;
	Wed, 24 Dec 2025 07:11:24 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2e63ea82c;
	Wed, 24 Dec 2025 15:11:17 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 2/5] phy: rockchip-snps-pcie3: Add phy_calibrate() support
Date: Wed, 24 Dec 2025 15:10:07 +0800
Message-Id: <1766560210-100883-3-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1766560210-100883-1-git-send-email-shawn.lin@rock-chips.com>
References: <1766560210-100883-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9b4f32a5b809cckunm34e2a83f3c2be2
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0kaS1YZHk9KH05DSR8aGUtWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=Tv3tSZaxMHEy9BOFvIFMxzUDWyTJ64TcHJ8vgBsz8fFxpnFgARWslNOBshhY9P/F35yKvHF3lko8xu3DvViIhdESRLQDUk83dv2qv94z1NDPHS4QWy5mMMcY8dq+fMBTMgbU6I8pfjAKYsdBvzZAyxWmCDWQag+VkoLf/WCaI98=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=vWydjYAjyArRvwPuW57TVayxZhgNNvCwYu5K9yYelnw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_231123_105398_65D15707 
X-CRM114-Status: GOOD (  12.63  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Move calibration from phy_init() to phy_calibrate().

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/phy/rockchip/phy-rockchip-snps-pcie3.c | 39 ++++++++++++++++++++++----
 1 file changed, 34 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c b/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
index 4e8ffd1..9933cda 100644
--- a/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
+++ b/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
@@ -71,6 +71,7 @@ struct rockchip_p3phy_priv {
 
 struct rockchip_p3phy_ops {
 	int (*phy_init)(struct rockchip_p3phy_priv *priv);
+	int (*phy_calibrate)(struct rockchip_p3phy_priv *priv);
 };
 
 static int rockchip_p3phy_set_mode(struct phy *phy, enum phy_mode mode, int submode)
@@ -97,8 +98,6 @@ static int rockchip_p3phy_rk3568_init(struct rockchip_p3phy_priv *priv)
 {
 	struct phy *phy = priv->phy;
 	bool bifurcation = false;
-	int ret;
-	u32 reg;
 
 	/* Deassert PCIe PMA output clamp mode */
 	regmap_write(priv->phy_grf, GRF_PCIE30PHY_CON9, GRF_PCIE30PHY_DA_OCM);
@@ -124,25 +123,34 @@ static int rockchip_p3phy_rk3568_init(struct rockchip_p3phy_priv *priv)
 
 	reset_control_deassert(priv->p30phy);
 
+	return 0;
+}
+
+static int rockchip_p3phy_rk3568_calibrate(struct rockchip_p3phy_priv *priv)
+{
+	int ret;
+	u32 reg;
+
 	ret = regmap_read_poll_timeout(priv->phy_grf,
 				       GRF_PCIE30PHY_STATUS0,
 				       reg, SRAM_INIT_DONE(reg),
 				       0, 500);
 	if (ret)
-		dev_err(&priv->phy->dev, "%s: lock failed 0x%x, check input refclk and power supply\n",
-		       __func__, reg);
+		dev_err(&priv->phy->dev, "lock failed 0x%x, check input refclk and power supply\n",
+			reg);
+
 	return ret;
 }
 
 static const struct rockchip_p3phy_ops rk3568_ops = {
 	.phy_init = rockchip_p3phy_rk3568_init,
+	.phy_calibrate = rockchip_p3phy_rk3568_calibrate,
 };
 
 static int rockchip_p3phy_rk3588_init(struct rockchip_p3phy_priv *priv)
 {
 	u32 reg = 0;
 	u8 mode = RK3588_LANE_AGGREGATION; /* default */
-	int ret;
 
 	regmap_write(priv->phy_grf, RK3588_PCIE3PHY_GRF_PHY0_LN0_CON1,
 		     priv->rx_cmn_refclk_mode[0] ? RK3588_RX_CMN_REFCLK_MODE_EN :
@@ -184,6 +192,14 @@ static int rockchip_p3phy_rk3588_init(struct rockchip_p3phy_priv *priv)
 
 	reset_control_deassert(priv->p30phy);
 
+	return 0;
+}
+
+static int rockchip_p3phy_rk3588_calibrate(struct rockchip_p3phy_priv *priv)
+{
+	int ret;
+	u32 reg;
+
 	ret = regmap_read_poll_timeout(priv->phy_grf,
 				       RK3588_PCIE3PHY_GRF_PHY0_STATUS1,
 				       reg, RK3588_SRAM_INIT_DONE(reg),
@@ -200,6 +216,7 @@ static int rockchip_p3phy_rk3588_init(struct rockchip_p3phy_priv *priv)
 
 static const struct rockchip_p3phy_ops rk3588_ops = {
 	.phy_init = rockchip_p3phy_rk3588_init,
+	.phy_calibrate = rockchip_p3phy_rk3588_calibrate,
 };
 
 static int rockchip_p3phy_init(struct phy *phy)
@@ -234,10 +251,22 @@ static int rockchip_p3phy_exit(struct phy *phy)
 	return 0;
 }
 
+static int rockchip_p3phy_calibrate(struct phy *phy)
+{
+	struct rockchip_p3phy_priv *priv = phy_get_drvdata(phy);
+	int ret = 0;
+
+	if (priv->ops->phy_calibrate)
+		ret = priv->ops->phy_calibrate(priv);
+
+	return ret;
+}
+
 static const struct phy_ops rockchip_p3phy_ops = {
 	.init = rockchip_p3phy_init,
 	.exit = rockchip_p3phy_exit,
 	.set_mode = rockchip_p3phy_set_mode,
+	.calibrate = rockchip_p3phy_calibrate,
 	.owner = THIS_MODULE,
 };
 
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

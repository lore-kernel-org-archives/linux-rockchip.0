Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53F02C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Dec 2021 19:10:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5uFUb3AHzTDLK+ji3SDw3ZsQswf94TasPTl2AiTDYKw=; b=e92UmKd9IrLt2l
	CXZOPiPLu04rcYC1jg/eeEbx7NtEp7NKXWXp9PyA+uyn1kddK3BI17Oi3DaPwJdV2dMC/JoBVL7o3
	JB5f6L6Dd4stGjfP7+CRyEV0rHGlRNRd+UxQbEcj8oEghJD0NE7xQ25oESss5x4io/6uO5CT/gMV8
	+kWdEGFLrQeQGF/HGdQaolvxIgNYaWsQ1XizEMQlsDw+sBZjM/CC1umrqkYlbSy8rLWEhtqw/HlO8
	D8tH5QToES/ZIzqM7Vmh0z4yG5MaQaRw7ECXWV4MiN8FkaC24G0t0TU7xyhvaGPw5Toubqr+9xHyz
	CvCMvRX22VWDk3a3sl2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxDC7-00FWDZ-Et; Tue, 14 Dec 2021 19:10:35 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxDC4-00FWBo-Sk; Tue, 14 Dec 2021 19:10:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=metanate.com; s=stronger; h=Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Content-Type:Reply-To:Content-ID:Content-Description:
 In-Reply-To:References; bh=XsmCqJao1bqLigheUsyxqJhjt/PPR1l+mc8RxY9x2iQ=; b=H0
 CFCxlxGEzAFTR6neO9QTDh6LY+bZ1Zc7fFXBjm1KanTVI4Vwn6ktU/hcyHxL9NvgTYrPcKz/sYKSR
 OazQuw4/rE5cV3f8OYGEDQISIMpCct0yYpP7uS0jKsxtEauLKDEHVaK9BjLTW0M35OjNrVtS9qbvk
 7u2PZzj+jkj1CmrzlNKb7Y3+YHUc0wvjbDSo5zguKAID9Tlnnp7Sg15DDnOIKLjveFybXPR01q6Ay
 P0FSgEnI5zyK2trbI9b92QCFjq/kKFsOrV/1JvfrSAnSHJcpudVl2qxLQPc1wcfkZxmwQC6a95L4m
 AH1ILmzIJ4n6cYcmY21A0pQDiPwyWftQ==;
Received: from [81.174.171.191] (helo=donbot.metanate.com)
 by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <john@metanate.com>)
 id 1mxDBt-0000nB-0n; Tue, 14 Dec 2021 19:10:21 +0000
From: John Keeping <john@metanate.com>
To: netdev@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, John Keeping <john@metanate.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 David Wu <david.wu@rock-chips.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] net: stmmac: dwmac-rk: fix oob read in rk_gmac_setup
Date: Tue, 14 Dec 2021 19:10:09 +0000
Message-Id: <20211214191009.2454599-1-john@metanate.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211214_111033_081932_F52BA8C0 
X-CRM114-Status: GOOD (  14.62  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

KASAN reports an out-of-bounds read in rk_gmac_setup on the line:

	while (ops->regs[i]) {

This happens for most platforms since the regs flexible array member is
empty, so the memory after the ops structure is being read here.  It
seems that mostly this happens to contain zero anyway, so we get lucky
and everything still works.

To avoid adding redundant data to nearly all the ops structures, add a
new flag to indicate whether the regs field is valid and avoid this loop
when it is not.

Fixes: 3bb3d6b1c195 ("net: stmmac: Add RK3566/RK3568 SoC support")
Signed-off-by: John Keeping <john@metanate.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index 6924a6aacbd5..c469abc91fa1 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -33,6 +33,7 @@ struct rk_gmac_ops {
 	void (*set_rgmii_speed)(struct rk_priv_data *bsp_priv, int speed);
 	void (*set_rmii_speed)(struct rk_priv_data *bsp_priv, int speed);
 	void (*integrated_phy_powerup)(struct rk_priv_data *bsp_priv);
+	bool regs_valid;
 	u32 regs[];
 };
 
@@ -1092,6 +1093,7 @@ static const struct rk_gmac_ops rk3568_ops = {
 	.set_to_rmii = rk3568_set_to_rmii,
 	.set_rgmii_speed = rk3568_set_gmac_speed,
 	.set_rmii_speed = rk3568_set_gmac_speed,
+	.regs_valid = true,
 	.regs = {
 		0xfe2a0000, /* gmac0 */
 		0xfe010000, /* gmac1 */
@@ -1383,7 +1385,7 @@ static struct rk_priv_data *rk_gmac_setup(struct platform_device *pdev,
 	 * to be distinguished.
 	 */
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	if (res) {
+	if (res && ops->regs_valid) {
 		int i = 0;
 
 		while (ops->regs[i]) {
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

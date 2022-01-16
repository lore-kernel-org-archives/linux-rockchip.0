Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 517E1C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Jan 2022 12:50:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i7Fi3KAcA3UYA814qqnp3//zp/QD9+CJ3k2JHqD86W8=; b=GtjpEg6ZcKJDNz
	6LJyrURh+R5AA16uLjkdjsm/vrOgTwI8AiPq1GPcQl1Xn7Orq3PxWqo9CDZMQrCWT9NK71Ukrd+/K
	TdQbVtDVMMWCgYLLZIqvWC5AJh9rdYD879NGotF+bPy7a95TC9S8ge7nvoPa5GBLt8jbChefJFPIU
	ZRdcSeGowoTy+juTmlRp++bla5NoPvvKaXuecFbIoa4UQR30vPJYqOhfp0lmiy8BWQ2pAAjSj1EJ8
	5288VVv7rIcZd83QGo/MpuVukZYEBaAJpP5H0a3IYoPq54EyiDZWFrTyAfMGSImk6ucq38ykj342A
	AKrFmo2OL7hc5qLSQSKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n94yq-00CQqp-Fz; Sun, 16 Jan 2022 12:49:56 +0000
Received: from mxout4.routing.net ([2a03:2900:1:a::9])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n94yK-00CQjP-4Y; Sun, 16 Jan 2022 12:49:26 +0000
Received: from mxbox3.masterlogin.de (unknown [192.168.10.78])
 by mxout4.routing.net (Postfix) with ESMTP id 19374100831;
 Sun, 16 Jan 2022 12:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1642337362;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WiQVaK3pUcDZG2qVFe1jh3LhY+kB3zA5MYcwhdW6fWg=;
 b=MmAlMulOCJ8bwHyI6kNRiGOANqjqGCebTixbrsgoqligP9FWlr53II7pAwtWgUAmb1/e0A
 9uB9e9iJyjiqUj/iDIiZz80YAD+s01eM31Y+V+ZvJ0zTY/TFp5JoQ4OX81mh5RDi7zeyWn
 OHnk2NvX0xG/J+4hEY30VGQ+OnQC7fA=
Received: from localhost.localdomain (fttx-pool-80.245.74.150.bambit.de
 [80.245.74.150])
 by mxbox3.masterlogin.de (Postfix) with ESMTPSA id 8640336014D;
 Sun, 16 Jan 2022 12:49:21 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Johan Jonker <jbx6244@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/3] dts64: rk3568: drop pclk_xpcs from gmac0
Date: Sun, 16 Jan 2022 13:49:09 +0100
Message-Id: <20220116124911.65203-2-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220116124911.65203-1-linux@fw-web.de>
References: <20220116124911.65203-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: b8095039-615f-4c07-8ac2-bd24ddf50522
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220116_044924_349480_C23F6DFF 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
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

From: Frank Wunderlich <frank-w@public-files.de>

pclk_xpcs is not supported and breaks dtbs_check, so remove it

following warnings occour, and many more

rk3568-evb1-v10.dt.yaml: ethernet@fe2a0000: clocks:
    [[15, 386], [15, 389], [15, 389], [15, 184], [15, 180], [15, 181],
    [15, 389], [15, 185], [15, 172]] is too long
	From schema: Documentation/devicetree/bindings/net/snps,dwmac.yaml
rk3568-evb1-v10.dt.yaml: ethernet@fe2a0000: clock-names:
    ['stmmaceth', 'mac_clk_rx', 'mac_clk_tx', 'clk_mac_refout', 'aclk_mac',
    'pclk_mac', 'clk_mac_speed', 'ptp_ref', 'pclk_xpcs'] is too long
	From schema: Documentation/devicetree/bindings/net/snps,dwmac.yaml

after removing the clock the other warnings are also gone.

Co-developed-by: Peter Geis <pgwipeout@gmail.com>
Signed-off-by: Peter Geis <pgwipeout@gmail.com>
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 arch/arm64/boot/dts/rockchip/rk3568.dtsi | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
index 2fd313a295f8..d91df1cde736 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -32,13 +32,11 @@ gmac0: ethernet@fe2a0000 {
 		clocks = <&cru SCLK_GMAC0>, <&cru SCLK_GMAC0_RX_TX>,
 			 <&cru SCLK_GMAC0_RX_TX>, <&cru CLK_MAC0_REFOUT>,
 			 <&cru ACLK_GMAC0>, <&cru PCLK_GMAC0>,
-			 <&cru SCLK_GMAC0_RX_TX>, <&cru CLK_GMAC0_PTP_REF>,
-			 <&cru PCLK_XPCS>;
+			 <&cru SCLK_GMAC0_RX_TX>, <&cru CLK_GMAC0_PTP_REF>;
 		clock-names = "stmmaceth", "mac_clk_rx",
 			      "mac_clk_tx", "clk_mac_refout",
 			      "aclk_mac", "pclk_mac",
-			      "clk_mac_speed", "ptp_ref",
-			      "pclk_xpcs";
+			      "clk_mac_speed", "ptp_ref";
 		resets = <&cru SRST_A_GMAC0>;
 		reset-names = "stmmaceth";
 		rockchip,grf = <&grf>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

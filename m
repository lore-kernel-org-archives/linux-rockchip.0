Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3071C3DA49
	for <linux-rockchip@archiver.kernel.org>; Sat, 20 Jul 2024 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=46EpZ2XyMSgR8pVRYSXmExMcZ+6/YGx2kHnqGYb+U0w=; b=GszPSAvcwxfJSk
	o29LM45EA7zIWSDW9JEewOJuxUa1tH+hiw7cZMK9gWyzB636cESrVhP3BRfo/new5fdjTqTX5mJDP
	wUTe7bRtKlKgMsy+soL4BOoPxoM1zwZTngA6B0VxvENoarjR/Ig8ukAiqwQ0FOoigewi20hkylQzX
	tciNkv1m+qeMyeaHNRTE9ejVnC7qEN+cnZW3ZyBXPckbqsB/nxVEnb7s3uAd28RjQu1d0gAlZUh9n
	FeGL8veDdoBeSNlbHFu/aiePztwP1V3z0i1cAxXzqBrgDSBREoWN2Si1Du8pK0D97DOc1XajA75yj
	lu3HbZU6iC42VKw/I36w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVHLu-00000005fnD-3Lf9;
	Sat, 20 Jul 2024 21:10:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVHKD-00000005f1V-0M6p;
	Sat, 20 Jul 2024 21:09:07 +0000
Received: from i5e860cd3.versanet.de ([94.134.12.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sVHKB-00061D-QE; Sat, 20 Jul 2024 23:09:03 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: ukleinek@debian.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/8] arm64: dts: rockchip: enable second PCIe controller on the Qnap-TS433
Date: Sat, 20 Jul 2024 23:08:48 +0200
Message-Id: <20240720210856.778014-3-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240720210856.778014-1-heiko@sntech.de>
References: <20240720210856.778014-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240720_140905_143529_3EE47F4B 
X-CRM114-Status: GOOD (  11.91  )
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

The TS433 uses both pcie controllers for sata and the 2nd network
interface. Set the needed data-lanes in the pcie3 phy and enable
the second pcie controller, as well as remove the bifurcation comment.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
index 889838b4079ae..0636a08986572 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
@@ -78,16 +78,23 @@ rgmii_phy0: ethernet-phy@0 {
 };
 
 &pcie30phy {
+	data-lanes = <1 2>;
 	status = "okay";
 };
 
 &pcie3x1 {
-	/* The downstream dts has: rockchip,bifurcation, XXX: find out what this is about */
 	reset-gpios = <&gpio0 RK_PC7 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_pcie>;
 	status = "okay";
 };
 
+&pcie3x2 {
+	num-lanes = <1>;
+	reset-gpios = <&gpio2 RK_PD6 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pcie>;
+	status = "okay";
+};
+
 &sdhci {
 	bus-width = <8>;
 	max-frequency = <200000000>;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

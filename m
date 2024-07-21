Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5856FC3DA61
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Jul 2024 17:38:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t4NyCL3fuOTJ6SqOboFGbj/FW9eFAe/92b3fFs14X/A=; b=PyddbTMS7vrdtv
	S+IcsFBlibIneVVnHPu3uyXpVWZcl/V/aX/MyroA1rcv6CcF1YC4T30EjQdoWggZAcM0pv50mLj/7
	/e4FBAUuOejPOStM7xUCt9bXTuA9QLpTLjrxbjk3ENbCnkWzW2dwro94mJTr/Jyt1k7k6V95c//xr
	wLLDSh+0ahwzwGgDR2Saife0z5QVaf5ErYRSoo0hiR7GHkgPads2q67VqmMNwcIVrAu4UKtn/ajaR
	s18abNG+CTQpVuXSbsnilMDZMMm3A8HVsrQICynfcrh7J7ck4NQPK6Rr6LTkrwEi+/BogNNVI4n/8
	YSCiVXZd49VhF9cRtBBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVaW6-00000007FR9-1qmr;
	Sun, 21 Jul 2024 17:38:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVaV1-00000007F0Y-2whk;
	Sun, 21 Jul 2024 17:37:34 +0000
Received: from i5e860cd3.versanet.de ([94.134.12.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sVaUz-00075D-HE; Sun, 21 Jul 2024 19:37:29 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: ukleinek@debian.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 01/14] arm64: dts: rockchip: add PCIe supply regulator to Qnap-TS433
Date: Sun, 21 Jul 2024 19:37:10 +0200
Message-Id: <20240721173723.919961-2-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240721173723.919961-1-heiko@sntech.de>
References: <20240721173723.919961-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240721_103731_773859_D0254CD8 
X-CRM114-Status: GOOD (  11.30  )
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

Add the vcc3v3-supply regulator and its link to the pcie controllers.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 .../boot/dts/rockchip/rk3568-qnap-ts433.dts   | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
index 6a998166003c9..889838b4079ae 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
@@ -12,6 +12,25 @@
 / {
 	model = "Qnap TS-433-4G NAS System 4-Bay";
 	compatible = "qnap,ts433", "rockchip,rk3568";
+
+	dc_12v: regulator-dc-12v {
+		compatible = "regulator-fixed";
+		regulator-name = "dc_12v";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+	};
+
+	vcc3v3_pcie: regulator-vcc3v3-pcie {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_pcie";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		enable-active-high;
+		gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
+		vin-supply = <&dc_12v>;
+	};
 };
 
 &gmac0 {
@@ -65,6 +84,7 @@ &pcie30phy {
 &pcie3x1 {
 	/* The downstream dts has: rockchip,bifurcation, XXX: find out what this is about */
 	reset-gpios = <&gpio0 RK_PC7 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pcie>;
 	status = "okay";
 };
 
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

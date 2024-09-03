Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87F14CD3420
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L35b6Ru7NHFQttTcLPtwRzIei6Kv28H5cmba+6VADIo=; b=04BSzK1xdIlXtx
	X4jIXlUMtbckgLqdoMWB4f99FMRmuplI1L4J29sh8UGhLGJCqXw7WQv++GJjkX3EyatESQSWGeZX5
	Ua8FeTSenQbn0+oTGcpuxTolzTB/QgR5jNxZ2buTL8cvsKpDXdhLSm9RPzhsOh+4xCaLrldJjcLPy
	IS+0wxxoeGsAspb+A2xomyx1WpKbwLjX+qq5X2gsxjN7qZV5xcFZh6ZNi3wrdUg1YCTcIIn+V3xRo
	jKkkxCfrd7/n2So9ZImdPuL8rsJtPUiJ6xsGVU8iwn5VcxTuPHabCL7MYSUg6vrLZQqyRBeLBeCVc
	xfpnTkqEvNJ8bzpgH4OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slRBS-0000000HQbi-06tI;
	Tue, 03 Sep 2024 10:54:50 +0000
Received: from omta36.uswest2.a.cloudfilter.net ([35.89.44.35])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slR9z-0000000HQ84-248P
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Sep 2024 10:53:22 +0000
Received: from eig-obgw-6010a.ext.cloudfilter.net ([10.0.30.248])
	by cmsmtp with ESMTPS
	id lJPwsuKdtqvuolR9lsFU5v; Tue, 03 Sep 2024 10:53:05 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id lR9hsJ7CU2GFYlR9isRlv5; Tue, 03 Sep 2024 10:53:03 +0000
X-Authority-Analysis: v=2.4 cv=GKAOEPNK c=1 sm=1 tr=0 ts=66d6ea8f
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=EaEq8P2WXUwA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8 a=IUsOfeiScPouXSuZ-WoA:9
 a=rsP06fVo5MYu2ilr0aT5:22 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=RDY88ra94JBb+IuiAIyKiYCW1DH2SA5E50yh/vMkXuw=; b=EiUcFSm2grXFwHQyuGWeu/Ntmy
	Pci/WR+to7JAHf38OpkLoY9kHBkuT3PMLqhcr0ewOi/zZDBNl1urlDqsnbUEU5WhQ3XfTtqukp55H
	o6NOCXT/rD6NyqkbWU5Yodf5iHHZrsaL5h/o0zB4vdSdHI5SKr9ObL/djqxh5q0F1VkiHT76tYIUn
	GWSlDT+uV0RoaLhqCmXp8CP1wI5RpCIfyhcbDPQe6P1r9Dg1JrA1zBVf75jwGKqpg1sBkDxYGpt/w
	/T5uQlQTDWpMWHvLG+pgp9qGt8uXUhs/IrgmqZdhFSEuy4AjISFyB/kAtcKdncLnXKgFjH+dYYXMn
	y1RFBmBg==;
Received: from [122.165.245.213] (port=41440 helo=localhost.localdomain)
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1slR9e-000Elu-1q;
	Tue, 03 Sep 2024 16:22:58 +0530
From: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	alexandre.belloni@bootlin.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
Subject: [PATCH v2 1/8] ARM: dts: rockchip: Add i2c3 node for RV1126
Date: Tue,  3 Sep 2024 16:22:38 +0530
Message-Id: <20240903105245.715899-2-karthikeyan@linumiz.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240903105245.715899-1-karthikeyan@linumiz.com>
References: <20240903105245.715899-1-karthikeyan@linumiz.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1slR9e-000Elu-1q
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (localhost.localdomain) [122.165.245.213]:41440
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 14
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfGqaLGNVp6pbricSf38Uc8g+yLBrloFjLytYf6HSdEzKza2xbodUZTjg1cyOXlGE5Hkypan3JU+gPKvUdpcWSCTCKGxJRL5zmD9wdxe+t08PzofAm6Xd
 YcdrOmX4k7HroyiYE1+kfqClskgAuZZkwzbMubZXHmj/1bIJcRrD7joSgeaUX3YKHcBtzcS9qfhqlK2Q+9bT03FiMLMTDG9cKXGPXaXNe4i+B8F17Zz1+c2g
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_035319_594061_86F6ECE6 
X-CRM114-Status: UNSURE (   7.34  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add i2c3 node and possible pinctrl for Rockchip RV1126

Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
---

Notes:
    v2:
    - No change

 .../arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 26 +++++++++++++++++++
 arch/arm/boot/dts/rockchip/rv1126.dtsi        | 15 +++++++++++
 2 files changed, 41 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
index 06b1d7f2d858..be666b25b830 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
@@ -97,6 +97,32 @@ i2c2_xfer: i2c2-xfer {
 				<0 RK_PC3 1 &pcfg_pull_none_drv_level_0_smt>;
 		};
 	};
+	i2c3 {
+		/omit-if-no-ref/
+		i2c3m0_xfer: i2c3m0-xfer {
+			rockchip,pins =
+				/* i2c3_scl_m0 */
+				<3 RK_PA4 5 &pcfg_pull_none>,
+				/* i2c3_sda_m0 */
+				<3 RK_PA5 5 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		i2c3m1_xfer: i2c3m1-xfer {
+			rockchip,pins =
+				/* i2c3_scl_m1 */
+				<2 RK_PD4 7 &pcfg_pull_none>,
+				/* i2c3_sda_m1 */
+				<2 RK_PD5 7 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		i2c3m2_xfer: i2c3m2-xfer {
+			rockchip,pins =
+				/* i2c3_scl_m2 */
+				<1 RK_PD6 3 &pcfg_pull_none>,
+				/* i2c3_sda_m2 */
+				<1 RK_PD7 3 &pcfg_pull_none>;
+		};
+	};
 	pwm2 {
 		/omit-if-no-ref/
 		pwm2m0_pins: pwm2m0-pins {
diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
index bb603cae13df..59de848c9a83 100644
--- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
@@ -22,6 +22,7 @@ / {
 	aliases {
 		i2c0 = &i2c0;
 		i2c2 = &i2c2;
+		i2c3 = &i2c3;
 		serial0 = &uart0;
 		serial1 = &uart1;
 		serial2 = &uart2;
@@ -308,6 +309,20 @@ dmac: dma-controller@ff4e0000 {
 		clock-names = "apb_pclk";
 	};
 
+	i2c3: i2c@ff520000 {
+		compatible = "rockchip,rv1126-i2c", "rockchip,rk3399-i2c";
+		reg = <0xff520000 0x1000>;
+		interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru CLK_I2C3>, <&cru PCLK_I2C3>;
+		clock-names = "i2c", "pclk";
+		pinctrl-names = "default";
+		pinctrl-0 = <&i2c3m0_xfer>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+		rockchip,grf = <&pmugrf>;
+	};
+
 	pwm11: pwm@ff550030 {
 		compatible = "rockchip,rv1126-pwm", "rockchip,rk3328-pwm";
 		reg = <0xff550030 0x10>;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

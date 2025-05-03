Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37761C369C2
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 May 2025 20:14:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6YuPQbBKMuMvTOlN47PF6bqhvJrtODyu7wMFdVRxAUs=; b=Q5cza5p49xvldi
	WFrgz1l3z7FFnM8SJ6Bk72il7DEuJvkY53/gZx23SceSuTDPE6WfjXhKlVRRklibya5fJAaa7vwPs
	6WkI33DNGCg01/zQOvFE6YtGDyaINFWmOzRj4qHFraSnOyi9r8X8uwLlmz03d8E49tJVgSmgU9Jpw
	yQeO4VobMXKg3+usUAi8zQp+zlJgc1i1bL8akW4khiOE/HmV9FXG0qS9I3kunF0QY6G7+aXBtcig7
	c29eeYpaz7yQ0YWNrign+UvnNZxQ60KTho1ZRWhvzGIenfTUr/hyZ0vKU6Wb7/uE+apmroL1qlFo3
	/obhRMCWnkTjH/2y2/kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBJG8-00000004S4f-3bPU;
	Sat, 03 May 2025 20:14:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBJCK-00000004Rng-0Bkp;
	Sat, 03 May 2025 20:10:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=LDpYXGCICL5+HQSjWT4RobWT3s4Oc60cRVoyBpWaBFM=; b=kCxoZz0fqEwilzbKZyujHumvkQ
	VGV+FXcrpqaDCw6oE5mGNuO0PzshjyugEyHb8PzhxbtI8O+P8H/7+1Rh2IaG+OlzSH4aY1cPUnDAo
	64pb/zOh5PJFMwex7GD2LAEo0xvqNNhVEIBjfFMCZCU1UzoI2RYNWHXmEOor2mO/UFTBAeroJXpTV
	XkIDnI2LCU18QTCujDiUsBdbBB2c8x8GXpVoqUIegN4LC526bND7l+IvkNxUtd8uvJDSPFeBlns3S
	K5acBa3SHJSDez9EEtH+lf5zRgTMAJBG9KFJyPvCvyay5zVCxnvuvPX4uvwm0bsUPHifLvS6vqYQA
	lX2nPrcA==;
Received: from i53875bbc.versanet.de ([83.135.91.188] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uBJCI-0001e6-3G; Sat, 03 May 2025 22:10:54 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] ARM: dts: rockchip: enable hdmi on rk3066 marsboard
Date: Sat,  3 May 2025 22:10:42 +0200
Message-ID: <20250503201043.990933-2-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250503201043.990933-1-heiko@sntech.de>
References: <20250503201043.990933-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250503_131056_106913_05291034 
X-CRM114-Status: GOOD (  11.89  )
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

The marsboard does have a regular hdmi-a connector and can simply
use the already existing infrastructure (rk3066-hdmi) for display
output.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 .../boot/dts/rockchip/rk3066a-marsboard.dts   | 33 +++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3066a-marsboard.dts b/arch/arm/boot/dts/rockchip/rk3066a-marsboard.dts
index ada7dbfc06a5..d2924aca6f2d 100644
--- a/arch/arm/boot/dts/rockchip/rk3066a-marsboard.dts
+++ b/arch/arm/boot/dts/rockchip/rk3066a-marsboard.dts
@@ -19,6 +19,17 @@ memory@60000000 {
 		reg = <0x60000000 0x40000000>;
 	};
 
+	hdmi_con {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi_con_in: endpoint {
+				remote-endpoint = <&hdmi_out_con>;
+			};
+		};
+	};
+
 	vdd_log: regulator-vdd-log {
 		compatible = "pwm-regulator";
 		pwms = <&pwm3 0 1000>;
@@ -58,6 +69,24 @@ &cpu1 {
 	cpu-supply = <&vdd_arm>;
 };
 
+&hdmi {
+	status = "okay";
+};
+
+&hdmi_in_vop1 {
+	status = "disabled";
+};
+
+&hdmi_out {
+	hdmi_out_con: endpoint {
+		remote-endpoint = <&hdmi_con_in>;
+	};
+};
+
+&hdmi_sound {
+	status = "okay";
+};
+
 &i2c1 {
 	status = "okay";
 	clock-frequency = <400000>;
@@ -216,6 +245,10 @@ &usb_otg {
 	status = "okay";
 };
 
+&vop0 {
+	status = "okay";
+};
+
 &wdt {
 	status = "okay";
 };
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

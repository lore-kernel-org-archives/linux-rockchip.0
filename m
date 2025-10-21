Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E6ADCCD184
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Oct 2025 07:43:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yCWC7BaT6hYvbpDbIzICTadR2jfqhSrXTS56iy4K9yM=; b=PEoAdqWq8TuydZ
	+KxpIndgt9redewJq74QajkaEtNWK3QP0pgtxJg4Wcb16WgB0OcBTbYvJ6OJE93t/+4PKkVAz/AG3
	9nDj6SssyhpOqoOodAirJWTsbMJTvd0r7SvCKy9AXIiO91naeEQfYk8jAhb58F9rqym6GDgY1kP5H
	Dk7e4q+0eB3tWMGkIfBylDj7FJvItKQHRF5xpU7fgGRj3e1IiL0Gyv+YNCnUTUJ8v5lEoqprWItyl
	2ikLSf623+rSNOOBdxEHfrCB5v78lo2EU0G6r0JAwCANM+U4LVv2i7741wTnMUKeshpc+STYJtSEl
	91G47BlMGMPOC5cTrKRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB71l-0000000G6t9-00qX;
	Tue, 21 Oct 2025 07:43:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB71i-0000000G6nj-1PA2;
	Tue, 21 Oct 2025 07:43:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=445YquTwMCYGWvvFlDmuQ2qGeWs3mzkw8t3wT+6a8rU=; b=iUrZTOZzaLL3fyZVeCHJaxvjeC
	BerfNIWSOthofcI0H1WxeVGUXBNntT85YiRWop7D9KbYjW3zCCM31xEbQVa4P1AEB+VjLgV6TI1Bl
	SX9HqLLAr2mkVBbAGsaEqRpVz182SdMmrkcdp5bq17JU4g6EdLu3xvOho7tjBmtbP2Uvh48xnJKcZ
	TMU4ITOKae999SatR0zfGZFmdJJVDQ1hAgCT4HZuem7v5c+z8OLurowI7x7FrIiGSEwWIQpFCYcPa
	Iv4Pc1StT+dtczdgEPmKCN9U3TCl3gyW+Zj+k+yFweP4WLdB/y1e4V9v74vrOHwGQxLnqXH9JfwOa
	Z7tREdIA==;
Received: from [212.111.240.218] (helo=phil.guestnet.ukdd.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vB71P-0000uy-Pz; Tue, 21 Oct 2025 09:43:07 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	quentin.schulz@cherry.de,
	andy.yan@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	cn.liweihao@gmail.com,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH v2 8/9] arm64: dts: rockchip: Enable HDMI output on RK3368-Lion-Haikou
Date: Tue, 21 Oct 2025 09:42:53 +0200
Message-ID: <20251021074254.87065-9-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251021074254.87065-1-heiko@sntech.de>
References: <20251021074254.87065-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_004326_384398_E36ACEF4 
X-CRM114-Status: GOOD (  11.28  )
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

From: Heiko Stuebner <heiko.stuebner@cherry.de>

Enable the VOP and HDMI controller on the Lion-Haikou board.

Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 .../boot/dts/rockchip/rk3368-lion-haikou.dts   | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dts
index abd1af97456a..a8eb4e9c2778 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dts
@@ -58,6 +58,16 @@ vcc5v0_otg: regulator-vcc5v0-otg {
 	};
 };
 
+&display_subsystem {
+	status = "okay";
+};
+
+&hdmi {
+	avdd-0v9-supply = <&vdd10_video>;
+	avdd-1v8-supply = <&vcc18_video>;
+	status = "okay";
+};
+
 &i2c_lvds_blc {
 	eeprom: eeprom@50 {
 		compatible = "atmel,24c01";
@@ -101,6 +111,14 @@ &uart1 {
 	status = "disabled";
 };
 
+&vop {
+	status = "okay";
+};
+
+&vop_mmu {
+	status = "okay";
+};
+
 &pinctrl {
 	pinctrl-names = "default";
 	pinctrl-0 = <&haikou_pin_hog>;
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

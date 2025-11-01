Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B50DCCCFA03
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Nov 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GY7BX89jhZ+nTL4DL+GnY5uQU4jW7rjrR3Kr7XruxPw=; b=KlGHjQ+O5uHDIc
	0oc/m0sOuCmvpjJDwn/tyJcns9UJtjOL6INptMQk/Lh2mmz65mRIaC78vi68Ue68mUUhDERRBvr8w
	dgPPUBI1AWCDYzbmJfKWlywKGUOLMNoDYjodmKgaDSLy6kq77uhsU6dpBPUx7xIz9jmDEEfSXAj2h
	57suKIX8giMDpydmQC3viNZqjJDG0sAAAipoiuWLrgcSfOo2hPvPJQTZ6GPQrNFTe/U9xFXXMwN80
	wjC7SLBhzuawkCBB0Iyq+1roqZgazUJkax8sDOhcCioHT7xH+8FCNZvzI1MP3RcMeD4/TMbOG0mQI
	954uNjuu7O62dbfuCAmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFAQU-00000007Ofv-04Ud;
	Sat, 01 Nov 2025 12:09:46 +0000
Received: from mail-m49198.qiye.163.com ([45.254.49.198])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFAHe-00000007KBa-0svM;
	Sat, 01 Nov 2025 12:00:39 +0000
Received: from localhost.localdomain (unknown [58.61.140.134])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2801cc49d;
	Sat, 1 Nov 2025 20:00:35 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Chukun Pan <amadeus@jmu.edu.cn>,
	Hsun Lai <i@chainsx.cn>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 5/6] arm64: dts: rockchip: fixes audio for 100ASK DshanPi A1
Date: Sat,  1 Nov 2025 20:00:09 +0800
Message-Id: <20251101120010.41729-5-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251101120010.41729-1-amadeus@jmu.edu.cn>
References: <20251101120010.41729-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-HM-Tid: 0a9a3f4a74cf03a2kunmc60b64232d3765
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDS0tMVk5IHhlDSkhPHUlCHVYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlOQ1VNSlVKT0tVSkhPWVdZFhoPEhUdFFlBWU9LSFVKS0lCQ0NMVUpLS1VLWQ
	Y+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251101_050038_751571_4F71F8C2 
X-CRM114-Status: UNSURE (   9.10  )
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

Correct the i2c address of the ES8388 chip and the gpio of hp_det pin.
According to the schematic, the ES8388 chip is connected to the SoC's
sai2 controller instead of sai1, fix it.

Fixes: d809417c5a40 ("arm64: dts: rockchip: add DTs for 100ASK DShanPi A1")
Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
 .../dts/rockchip/rk3576-100ask-dshanpi-a1.dts | 23 ++++++++-----------
 1 file changed, 9 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dts b/arch/arm64/boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dts
index 7c961cb27032..815f75e7cd70 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dts
@@ -46,7 +46,7 @@ es8388_sound: es8388-sound {
 		simple-audio-card,pin-switches = "Headphone", "Line Out";
 
 		simple-audio-card,cpu {
-			sound-dai = <&sai1>;
+			sound-dai = <&sai2>;
 		};
 
 		simple-audio-card,codec {
@@ -602,18 +602,18 @@ regulator-state-mem {
 &i2c4 {
 	status = "okay";
 
-	es8388: audio-codec@10 {
+	es8388: audio-codec@11 {
 		compatible = "everest,es8388", "everest,es8328";
-		reg = <0x10>;
-		clocks = <&cru CLK_SAI1_MCLKOUT_TO_IO>;
+		reg = <0x11>;
+		clocks = <&cru CLK_SAI2_MCLKOUT_TO_IO>;
+		assigned-clocks = <&cru CLK_SAI2_MCLKOUT_TO_IO>;
+		assigned-clock-rates = <12288000>;
 		AVDD-supply = <&vcc_3v3_s0>;
 		DVDD-supply = <&vcc_3v3_s0>;
 		HPVDD-supply = <&vcc_3v3_s0>;
 		PVDD-supply = <&vcc_3v3_s0>;
-		assigned-clocks = <&cru CLK_SAI1_MCLKOUT_TO_IO>;
-		assigned-clock-rates = <12288000>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&sai1m0_mclk>;
+		pinctrl-0 = <&sai2m0_mclk>;
 		#sound-dai-cells = <0>;
 	};
 };
@@ -663,7 +663,7 @@ gmac1_rst: gmac1-rst {
 
 	headphone {
 		hp_det: hp-det {
-			rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_up>;
+			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 
@@ -680,12 +680,7 @@ typec5v_pwren_h: typec5v-pwren-h {
 	};
 };
 
-&sai1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&sai1m0_lrck
-		     &sai1m0_sclk
-		     &sai1m0_sdi0
-		     &sai1m0_sdo0>;
+&sai2 {
 	status = "okay";
 };
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

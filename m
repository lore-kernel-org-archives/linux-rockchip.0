Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE3B9C83F14
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Aug 2024 12:27:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TUwLODO8I8FkhZ1r9c/V3XDEvdYUW4Rb8m7AS1CHuIA=; b=UKkY53D0FFYOlM
	bdcOBXgjMUVSMo3jD2nFRCzcjsCEO/Ebtbjz5Xd/TeI754vwrDyWydNAna0yLp1I2YSg7NFFckMAq
	HTHN//vSKu9MQA/k0VnWBuCmT0LlhxyQzXKs4hIv1X15zZdSHyVLEF9oBgIRht/6p5gU3cqJlmNH1
	jA/NCg8xB9tYuSujlBI38Ul+POVn0K3O15FgXXCz4fNgjsOy+lDY6d+gJ+RcKoRCsLppbF1yxD1T/
	3vPNhW5Zjg9UZvxn+YG4G6P/y0nkWrRADtn/3A1zQelTsYFiB7qPIPCnlx973dpHzj3cThclZrAJI
	AD8vkLzHTs8iP2evS7bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjeFM-00000001uik-0upM;
	Thu, 29 Aug 2024 12:27:28 +0000
Received: from muminek.juszkiewicz.com.pl ([213.251.184.221])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjeFF-00000001ubP-0ogc
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Aug 2024 12:27:23 +0000
Received: from localhost (localhost [127.0.0.1])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTP id D34D02606C4;
	Thu, 29 Aug 2024 14:27:18 +0200 (CEST)
X-Virus-Scanned: Debian amavis at juszkiewicz.com.pl
Received: from muminek.juszkiewicz.com.pl ([127.0.0.1])
 by localhost (muminek.juszkiewicz.com.pl [127.0.0.1]) (amavis, port 10024)
 with ESMTP id HsAwejYFjbtc; Thu, 29 Aug 2024 14:27:16 +0200 (CEST)
Received: from puchatek.local (83.25.211.12.ipv4.supernova.orange.pl [83.25.211.12])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTPSA id 178C8260CCF;
	Thu, 29 Aug 2024 14:27:15 +0200 (CEST)
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Date: Thu, 29 Aug 2024 14:26:57 +0200
Subject: [PATCH v6 6/9] arm64: dts: rockchip: add IR-receiver to NanoPC-T6
MIME-Version: 1.0
Message-Id: <20240829-friendlyelec-nanopc-t6-lts-v6-6-edff247e8c02@linaro.org>
References: <20240829-friendlyelec-nanopc-t6-lts-v6-0-edff247e8c02@linaro.org>
In-Reply-To: <20240829-friendlyelec-nanopc-t6-lts-v6-0-edff247e8c02@linaro.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 Jonas Karlman <jonas@kwiboo.se>, Diederik de Haas <didi.debian@cknow.org>, 
 Dragan Simic <dsimic@manjaro.org>, 
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
X-Mailer: b4 0.14.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_052721_539866_7F23C5F5 
X-CRM114-Status: UNSURE (   9.09  )
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

FriendlyELEC NanoPC-T6 has IR receiver connected to PWM3_IR_M0 line
which ends as GPIO0_D4.

Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
index 77580c671b36..9ad2f1cf8103 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
@@ -25,6 +25,13 @@ chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
+	ir-receiver {
+		compatible = "gpio-ir-receiver";
+		gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&ir_receiver_pin>;
+	};
+
 	leds {
 		compatible = "gpio-leds";
 
@@ -228,7 +235,7 @@ &gpio0 {
 			  "HEADER_10", "HEADER_08", "HEADER_32", "",
 			  /* GPIO0 D0-D7 */
 			  "", "", "", "",
-			  "", "", "", "";
+			  "IR receiver [PWM3_IR_M0]", "", "", "";
 };
 
 &gpio1 {
@@ -492,6 +499,12 @@ hym8563_int: hym8563-int {
 		};
 	};
 
+	ir-receiver {
+		ir_receiver_pin: ir-receiver-pin {
+			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pcie {
 		pcie2_0_rst: pcie2-0-rst {
 			rockchip,pins = <4 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

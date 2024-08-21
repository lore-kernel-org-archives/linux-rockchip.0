Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84EA1C52D7C
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Aug 2024 10:26:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EuEhokE9yaJQlzjAXLTUqIkdIhm+weX0IgsP9E+w0Y8=; b=jTTtmNr4DGRUXj
	6kpwcU+cZJqFZU87zltK0eIh9WEOfE3sqPO3jLqHYuxD49LjjxfxfFPwRsaVFvQ6O0SidHSRxMtb1
	YYdx3OrrmnV6XIwU+3NQYjgxeBCeag0m42RraRCcM6iJjYr/8eOjOqktKJ8JevEZezFymNMyR8oGC
	jGtHqBeNFaevuWd54OGozZRZEXGoTX7HEqE5CyiRoi+X4xOttXrwBjj7iu++uQPj+rEfV35y8yu2y
	q6vtVNy9oJlOBX+Tqv6hc9NRH7LeQV0FQWgBFL964tbriYP7+/Hu6hKaFNcDviLEktwhIs3OkHzLK
	AAeBI3FWq/oc0eWao2jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgiY7-00000008PMi-0yPs;
	Wed, 21 Aug 2024 10:26:43 +0000
Received: from muminek.juszkiewicz.com.pl ([213.251.184.221])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgiY0-00000008PHr-2tuL
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Aug 2024 10:26:38 +0000
Received: from localhost (localhost [127.0.0.1])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTP id A56FE261993;
	Wed, 21 Aug 2024 12:26:34 +0200 (CEST)
X-Virus-Scanned: Debian amavis at juszkiewicz.com.pl
Received: from muminek.juszkiewicz.com.pl ([127.0.0.1])
 by localhost (muminek.juszkiewicz.com.pl [127.0.0.1]) (amavis, port 10024)
 with ESMTP id QJl1aexfOBtv; Wed, 21 Aug 2024 12:26:32 +0200 (CEST)
Received: from puchatek.local (79.186.29.241.ipv4.supernova.orange.pl [79.186.29.241])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTPSA id A1959260983;
	Wed, 21 Aug 2024 12:26:30 +0200 (CEST)
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Date: Wed, 21 Aug 2024 12:26:15 +0200
Subject: [PATCH v3 5/7] arm64: dts: rockchip: add IR-receiver to NanoPC-T6
MIME-Version: 1.0
Message-Id: <20240821-friendlyelec-nanopc-t6-lts-v3-5-3ecfa996bbe0@linaro.org>
References: <20240821-friendlyelec-nanopc-t6-lts-v3-0-3ecfa996bbe0@linaro.org>
In-Reply-To: <20240821-friendlyelec-nanopc-t6-lts-v3-0-3ecfa996bbe0@linaro.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
X-Mailer: b4 0.14.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_032636_910258_A2B8266E 
X-CRM114-Status: UNSURE (   9.52  )
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
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
index 490649130bbd..c8a8f96ca008 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
@@ -25,6 +25,11 @@ chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
+	ir-receiver {
+		compatible = "gpio-ir-receiver";
+		gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_LOW>;
+	};
+
 	leds {
 		compatible = "gpio-leds";
 
@@ -240,7 +245,7 @@ &gpio0 {
 			  "HEADER_10", "HEADER_08", "HEADER_32", "",
 			  /* GPIO0 D0-D7 */
 			  "", "", "", "",
-			  "", "", "", "";
+			  "IR receiver [PWM3_IR_M0]", "", "", "";
 };
 
 &gpio1 {
@@ -546,6 +551,13 @@ &pwm1 {
 	status = "okay";
 };
 
+/* Connected to IR Receiver */
+&pwm3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm3m0_pins>;
+	status = "okay";
+};
+
 &saradc {
 	vref-supply = <&avcc_1v8_s0>;
 	status = "okay";

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

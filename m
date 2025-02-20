Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 270E3C021B1
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Feb 2025 12:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/IET4hoGN1j1Tibl+m5LGlMlqTxgsQnj9D9d+e9j3ts=; b=zSOO7xHSf259mU
	1wkcqowxQv7YjC//jxkN0XUlxJ3GGKmLo3uofCYU80CEcn6zPqV1ppa/P6/bo9Aj8LI8qCQgu88Sg
	oxSobFL5wrAp0VxqvVKi9CO8E2WTeCiZnN1lvezO5pMoZ15FY9oDGueFASBb6d7G0+b8PGOWff5B8
	eKvRIevUZYchFLxEpcN/F/vadeg713r8nSEnBjxL3BzCKG6+hrJgX0vuaHSnETsEwo3zs/Kdib4zf
	8GwVUuf0+6UP1ysi/GkPwhRRopo0E7s4+rAIxzdNiLutPn93Cam50v0DPSh4G5d14dThE1arXhSb6
	EQyRigPCjGzIkhSgJcTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tl5mD-00000000pbE-1yei;
	Thu, 20 Feb 2025 12:35:37 +0000
Received: from smtp-190c.mail.infomaniak.ch ([185.125.25.12])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tl5Xk-00000000koD-0jmo
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Feb 2025 12:20:43 +0000
Received: from smtp-3-0000.mail.infomaniak.ch (smtp-3-0000.mail.infomaniak.ch [10.4.36.107])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4YzC5c2v1qzsY6;
	Thu, 20 Feb 2025 13:20:36 +0100 (CET)
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4YzC5b6Cy2zGpB;
	Thu, 20 Feb 2025 13:20:35 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Thu, 20 Feb 2025 13:20:11 +0100
Subject: [PATCH 2/5] arm64: dts: rockchip: fix pinmux of UART5 for PX30
 Ringneck on Haikou
MIME-Version: 1.0
Message-Id: <20250220-ringneck-dtbos-v1-2-25c97f2385e6@cherry.de>
References: <20250220-ringneck-dtbos-v1-0-25c97f2385e6@cherry.de>
In-Reply-To: <20250220-ringneck-dtbos-v1-0-25c97f2385e6@cherry.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Quentin Schulz <quentin.schulz@theobroma-systems.com>, 
 Farouk Bouabid <farouk.bouabid@theobroma-systems.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>, stable@vger.kernel.org
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_042040_356422_1FE80471 
X-CRM114-Status: UNSURE (   9.17  )
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

From: Quentin Schulz <quentin.schulz@cherry.de>

UART5 uses GPIO0_B5 as UART RTS but muxed in its GPIO function,
therefore UART5 must request this pin to be muxed in that function, so
let's do that.

Fixes: 5963d97aa780 ("arm64: dts: rockchip: add rs485 support on uart5 of px30-ringneck-haikou")
Cc: stable@vger.kernel.org
Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts b/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts
index 2321536c553fed20bc02d91f40a5d5a6dc20892c..08a11e47584137ed84f31aadc53a1bdd2ca95530 100644
--- a/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts
@@ -194,6 +194,13 @@ sd_card_led_pin: sd-card-led-pin {
 			  <3 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	uart {
+		uart5_rts_gpio: uart5-rts-gpio {
+			rockchip,pins =
+			  <0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
 };
 
 &pwm0 {
@@ -227,7 +234,7 @@ &uart0 {
 };
 
 &uart5 {
-	pinctrl-0 = <&uart5_xfer>;
+	pinctrl-0 = <&uart5_xfer &uart5_rts_gpio>;
 	rts-gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
 	status = "okay";
 };

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFFACEB64D9
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Jul 2023 16:53:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HPEvI/+ED4/zQTm4B5XHbdmH2ake9d973OU0sliwzOQ=; b=SzCTlmh3IrMph8
	hPxn6NVNmlGHH06GoLrqcrDQpzTd3Rd/infk9qEUJSz+mC+QI9nXffHoel5i73Qink6wOesT1TagQ
	ywna8o4MqCNf7cSmz6B1FntITpdkg1Gp4mClvS6bBRN5bjDssf79bBcS7C9nvaJ//aJD0Dj0xxPtP
	EYu0e6sK/zn7UMrOyADwJlCEcsf8GqTZqEWbcI+uWr+fOdzZQw9KzyUzIBEatKX+q2m54S1Lfvk/x
	GmRW8a/60wXNxM5HMLn8oqyh/rtewPAGMkACo6TujUrvcwc556lg0mL7Xl8mOUIRJKW9kgVSkHuj0
	bgws+jJm17N6X9uguMUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIu8c-00CFXX-2I;
	Mon, 10 Jul 2023 16:53:26 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIu7s-00CEqK-16;
	Mon, 10 Jul 2023 16:52:42 +0000
Received: from jupiter.universe (dyndsl-091-248-189-246.ewe-ip-backbone.de [91.248.189.246])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id B61F56607014;
	Mon, 10 Jul 2023 17:52:32 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689007953;
	bh=xVJiHHBgSYdFFPYuWJ0JCFP5E3jXfJPB/JrJpxl+6Ik=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ILdbPwQegcxLF21efO2MVdXrkDFfjrKje0WkWItjlWMyshyr30keRfkX+PVggOLD6
	 ro7IZlA6+Xo3ZPNX6I63gHJU7qjYqioTlRLvXhqer/F3ayyV3+7h8QbuccpDMcvcQU
	 dskGp8j7x83sjxe08NDt6iWL9vRh+/MWJQ6Eq70EBbBYkRadQxrsEErIce4DjBEXlB
	 nIlFaS1kbbmMONkiHG8eohByLRilIm6HAOp9nZnhTPKVyNBgAJXWE2CFNovYYQolBL
	 AbET5kYr2AZ+QaalpAA+y9qJHppphCeIZWxpT7N/r9wnKd9RCzzXize3E66n8Gv7rl
	 zLK0f2EYdwxBQ==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 2B29B4807F2; Mon, 10 Jul 2023 18:52:28 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v1 13/13] arm64: dts: rockchip: rock-5a: add fan support
Date: Mon, 10 Jul 2023 18:52:28 +0200
Message-Id: <20230710165228.105983-14-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230710165228.105983-1-sebastian.reichel@collabora.com>
References: <20230710165228.105983-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_095240_550655_A2F680E7 
X-CRM114-Status: GOOD (  10.17  )
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

Add the necessary DT changes for the Rock 5A board to enable support for
the PWM controlled heat sink fan.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 156c93b22382..ad6fec5514a0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -47,6 +47,14 @@ io-led {
 		};
 	};
 
+	fan: pwm-fan {
+		compatible = "pwm-fan";
+		cooling-levels = <0 95 145 195 255>;
+		fan-supply = <&vcc_5v0>;
+		pwms = <&pwm3 0 50000 0>;
+		#cooling-cells = <2>;
+	};
+
 	vcc12v_dcin: vcc12v-dcin {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc12v_dcin";
@@ -286,6 +294,12 @@ rtl8211f_rst: rtl8211f-rst {
 	};
 };
 
+&pwm3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm3m1_pins>;
+	status = "okay";
+};
+
 &saradc {
 	vref-supply = <&avcc_1v8_s0>;
 	status = "okay";
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

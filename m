Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36AECC83F1B
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Jul 2025 14:24:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IwWbiuTlSMtPiR7QlthQT+RK17uRB578bmRiClBMPZc=; b=eog4Duyz90/l5j
	1amtx7fgPbWz5GDv2aoOFUJmvlIsFuKZKuZTdMbVT50KGcU95cgH8UsayKN8KBJpWFY4KsiYWhZu+
	ncTL7p8P6X/+ltBJQScOX22o1ocPU1MwjiVD19PXdYQdSpEsohaAhjbSPbBIj8caElNpcM+AvVt2r
	vNqkBSftVDfkro2GMMhM3ERkRwKH9a8hWfr9oSlCKW1ExoYS3E/b9P4uSga0j2L+EQpIDnadCVTgL
	IyOteh2cnnsgdXhYDOMYOYcsiEliDkweKdXXdC4Wz5kCNjkLKWDzqI/ag1ja5nJku1vcxkr+fs02k
	SIvkz1QoUIyJqob26d6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaEfP-0000000F1Ea-1qSx;
	Fri, 11 Jul 2025 14:23:59 +0000
Received: from out-179.mta1.migadu.com ([2001:41d0:203:375::b3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaEdT-0000000F105-42a2
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Jul 2025 14:22:01 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1752243715;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=dhtbCU3GSz2mEXV2JGmRz2FQjficBt4XaAng4rRz9xo=;
	b=Lg5ijLxO5CRdonuTMfVh2iFNTsNoo2FIm5duJWI8gUfMuR2Bqp0Ouoql8t8y8woakXJqf6
	J1nUXUX/uEN47Dn/ddcfqA1zfk/F8U6dPoCltAT9zwjL86Iv0q4nJAG0xdcOMw52fwzcWF
	gZOugybV2W0FrVZbF35XoUoWeG9Du6Fl8y3aPoMnVlPQK2t5B/y9EQqkK2IkToQoTUQqqZ
	wtbLxp/eiSnvAJ6i02TlLOjtVu3CRZrkwGL2TfBYcT8nRDWFbfddTefKRjDs26GK4wRUOF
	c8mnidSdNzSl9ti5K23O3vOZMZy0YFuY2YPTqNQbeKkctXD1RhKNuDMizKBINw==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH v2] arm64: dts: rockchip: Add reset button to NanoPi R5S
Date: Fri, 11 Jul 2025 16:20:37 +0200
Message-ID: <20250711142138.197445-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250711_072200_610963_F6DF2415 
X-CRM114-Status: UNSURE (   9.77  )
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

The NanoPi R5S LTS version has a reset button, which is connected via
GPIO. Note that the non-LTS version does not have the reset button and
therefore on page 19 of the schematic version 2204 it is marked 'NC',
but it is connected on the LTS version.

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
Changes in v2:
- add 'pin' suffix to pinctrl nodes names/labels

 .../boot/dts/rockchip/rk3568-nanopi-r5s.dts   | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
index 3b31f0dd8f3b..c12bd01e2805 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
@@ -17,6 +17,19 @@ aliases {
 		ethernet0 = &gmac0;
 	};
 
+	gpio-keys {
+		compatible = "gpio-keys";
+		pinctrl-0 = <&gpio4_a0_k1_pin>;
+		pinctrl-names = "default";
+
+		button-reset {
+			debounce-interval = <50>;
+			gpios = <&gpio4 RK_PA0 GPIO_ACTIVE_LOW>;
+			label = "RESET";
+			linux,code = <KEY_RESTART>;
+		};
+	};
+
 	gpio-leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
@@ -127,6 +140,12 @@ eth_phy0_reset_pin: eth-phy0-reset-pin {
 		};
 	};
 
+	gpio-keys {
+		gpio4_a0_k1_pin: gpio4-a0-k1-pin {
+			rockchip,pins = <4 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	gpio-leds {
 		lan1_led_pin: lan1-led-pin {
 			rockchip,pins = <3 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>;
-- 
2.50.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

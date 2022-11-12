Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3219EC4332F
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Nov 2022 14:12:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=smfE8Vgk05l/PP4WdlJIFEoU+7fqCFTWAXe4R+elIAg=; b=KeBnawpOx58Xig
	MCFMqSRd15pAIQBIhs9km6q9Z8hTChOadgAmavlpnIBTuwe6vGQ4ymBGpTbd9qqBgn+3MU2W9P62V
	mf4UV+OSwCZsNaj+XdgFgvEbZWdm2KVrLezbYMWNHL42+s1eFpQwoRw8FMs75K3MgkHJbpu1rrp14
	OsncPWhcS92JqBF42fQaOTIXlOg3zRGxWi9PdHcIJF8Vm2HziHa6LVFoY1F1dj8smE+yVoMi/3kbH
	aeMhZS9Nm3EqgBPlARcKtYczzHlFKizRCpYIM1+tSfBdc6XZ+T9W0GuVX80ZVVrbWTpHEFtbsjCKL
	2L+w4ga7n20xoX40CsLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otrF2-005wfe-Fo; Sat, 12 Nov 2022 14:12:16 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otrEY-005wTV-QN; Sat, 12 Nov 2022 14:11:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Content-Type:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=SjEaXE1aM3sAT5W9UJJ2Ph7aLEZJwNJ56ePTNEKDEp4=; b=LDrjdSPFEziZCwN4Y9LHueqhRs
	FzyEjkUZdrZu+mHBxq9WPyaMizEA+alzGmOtxFuC86ZMHA5kclDcKJhNJVvdCaYmvqpbUV9tHeHX5
	lMzg+k1ZKd4XeIZAptDlXfPVp0mrimCTomp6+DeBUsKRsdgGAHtDqhnsz4UNWsxZuiemd7frHLLZA
	c9AwiZwN9s5rHhvtC5eqBhSqpS8ii1vUtxBeGoW8dRbjPcDWIrJSCbRzspzPzuWfX/QynQ4YBuD5S
	+Ggb4h6Xl7WFWRJljFzqoeF/wvwEFCSOSdy7choARmkM3+zoigTzJlciM8P2W2FTHN64+PCERRvG8
	k2zghOcQ==;
Received: from [2a01:e34:ec5d:a741:8a4c:7c4e:dc4c:1787] (helo=ohm.rr44.fr)
	by hall.aurel32.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1otrE5-00AbR1-JP; Sat, 12 Nov 2022 15:11:17 +0100
Received: from aurel32 by ohm.rr44.fr with local (Exim 4.96)
	(envelope-from <aurelien@aurel32.net>)
	id 1otrE4-00FxDo-2c;
	Sat, 12 Nov 2022 15:11:16 +0100
From: Aurelien Jarno <aurelien@aurel32.net>
To: Olivia Mackall <olivia@selenic.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Lin Jinhan <troy.lin@rock-chips.com>
Cc: linux-crypto@vger.kernel.org (open list:HARDWARE RANDOM NUMBER GENERATOR CORE),
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list),
	Aurelien Jarno <aurelien@aurel32.net>
Subject: [PATCH v1 3/3] arm64: dts: rockchip: add DT entry for RNG to RK356x
Date: Sat, 12 Nov 2022 15:10:59 +0100
Message-Id: <20221112141059.3802506-4-aurelien@aurel32.net>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221112141059.3802506-1-aurelien@aurel32.net>
References: <20221112141059.3802506-1-aurelien@aurel32.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221112_061146_877242_44CBC020 
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

Enable the just added Rockchip RNG driver for RK356x SoCs.

Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 164708f1eb67..4be94ff45180 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -1770,6 +1770,15 @@ usb2phy1_otg: otg-port {
 		};
 	};
 
+	rng: rng@fe388000 {
+		compatible = "rockchip,rk3568-rng";
+		reg = <0x0 0xfe388000 0x0 0x4000>;
+		clocks = <&cru CLK_TRNG_NS>, <&cru HCLK_TRNG_NS>;
+		clock-names = "trng_clk", "trng_hclk";
+		resets = <&cru SRST_TRNG_NS>;
+		reset-names = "reset";
+	};
+
 	pinctrl: pinctrl {
 		compatible = "rockchip,rk3568-pinctrl";
 		rockchip,grf = <&grf>;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6D00C5DF97
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Aug 2026 19:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:From
	:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yNbI9pTy/4tH1zyq6M57USCK89uBpoHlh1i3ZNW4ZoM=; b=WY2k/pmxv7Eszm
	H2/aWsGvf7mEfFq6jcizlZZRjodbw5EvTO6Tj93JTE6Q5QkrQh3BqbFp5L56tQmOMkunOTcpsT7A4
	0no+ndslP50GKfQqnmbOD/9y5RoaOwrMeERafRAgZYYH2UkKBtDCW1MeM4zcNJ3Xvoz2MvH3f2r8Y
	k6kIP7QZBK0hXnP8ZL9d+i7Cb9vL7q8nGsshBC101XI9K58K/5AwY99GmgnQY3YIkHmLmeg9f5ip7
	ay6fq/XqNwhZOrAxQr57+AOdso//prvanO3LgbfVURmfA/hLYFJBQHxqhG73/4j+N2kS1Fvahhmzk
	wnekGGADacFAeSu+NlXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxrhS-0000000EkfX-0yID;
	Sat, 22 Aug 2026 19:48:18 +0000
Received: from mail-4322.protonmail.ch ([185.70.43.22])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxrhO-0000000EkeA-2aw5
	for linux-rockchip@lists.infradead.org;
	Sat, 22 Aug 2026 19:48:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1787428084; x=1787687284;
	bh=+UOlbWmhlZGcXSZas1atuG02Rkmo7MvD1GEC9/IVszM=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=AuUjeS4Qg8skiBG8zgzWsFH8mgr62jLVrdjl+P4UNmaN8E0hnsOICdXWz6yUA5QM8
	 1kjPq9/ydCZct3aqkuT5/ixqPZoHXQv+jeqbpKNBax16FGVHMf/5QIbW6swx56vj6Y
	 6FZi16MBpqBZ9TNGIXJwV+TIpG/9oPTLfUjGLEBXBIYqVUlzJwz/CnlKsxf8ynLxUr
	 FIcBy4NGKFFzXr6u4hobl8AgP90u3ACKn7l74ofcxNR4Nr4Huy+KhZenHgLAGor6rV
	 VFYOXNsDJSuqxc32zyKthfYrR0pzKNOobFLiR5GJnGlbJLWBKwkpRZ7phE4ijOmTdK
	 oAhyq4E5Tdc2A==
Date: Sat, 22 Aug 2026 19:47:58 +0000
To: Heiko Stuebner <heiko@sntech.de>
From: Richard DeFrese <richard.defrese@proton.me>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Richard DeFrese <richard.defrese@proton.me>
Subject: [PATCH] arm64: dts: rockchip: route ES8388 MCLK to the IO pin on Orange Pi 5/5B
Message-ID: <20260822194730.526392-1-richard.defrese@proton.me>
Feedback-ID: 216883557:user:proton
X-Pm-Message-ID: c644c4c6ff2315eb917bb9194d3fe04645365cd6
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260822_124814_830485_8C03982B 
X-CRM114-Status: UNSURE (   8.89  )
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

The on-board ES8388 codec on the Orange Pi 5 and 5B has no analog output:
the codec's master clock (MCLK) never reaches its pin.

RK3588 gates the I2S MCLK-to-IO routing in SYS_GRF SOC_CON6 (bit 1 for
I2S1), exposed as I2S1_8CH_MCLKOUT_TO_IO. The codec references the internal
mux (I2S1_8CH_MCLKOUT) instead, so nothing enables the IO gate: the
12.288 MHz MCLK is generated inside the SoC but never driven out to the
codec. With the ES8388 as I2S bit/frame master, the SoC I2S controller then
never receives a valid clock and aborts:

  rockchip-i2s-tdm fe480000.i2s: clear failed, reset txrx

Point the codec's "clocks" at I2S1_8CH_MCLKOUT_TO_IO so the ES8388 driver
enables the gate in clk_prepare_enable() at probe; "assigned-clocks" stays
on I2S1_8CH_MCLKOUT to keep the 12.288 MHz rate.

Signed-off-by: Richard DeFrese <richard.defrese@proton.me>
---
 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-5b.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-5b.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-5b.dtsi
index 6e081bc06..5ac3e0d9d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-5b.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-5b.dtsi
@@ -87,7 +87,7 @@ &i2c6 {
 	es8388: audio-codec@10 {
 		compatible = "everest,es8388", "everest,es8328";
 		reg = <0x10>;
-		clocks = <&cru I2S1_8CH_MCLKOUT>;
+		clocks = <&cru I2S1_8CH_MCLKOUT_TO_IO>;
 		AVDD-supply = <&vcca_3v3_s0>;
 		DVDD-supply = <&vcca_1v8_s0>;
 		HPVDD-supply = <&vcca_3v3_s0>;
-- 
2.53.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

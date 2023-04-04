Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9551C6FD1D
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 15:45:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b6m8FsmBJH9St4mafY8Bt6mRJFobmpbTCXvIe1bPnuM=; b=p24xAneVDphN97
	g060qMqJ15VsEWyVtJqJCqHD/BIkn0Bp422Qer0JfhrxWstkUxOdK85dYNIDgFm4B/+GTFPfb+ayh
	1EtVGDhbx9cDHE4+hnHtqMuQcTjKoX0lN82e4D0VT7jTEnIB5xmFLVwQqlIJCpuk1vRZZi+unICW3
	4xMadJw8cvBQvds1DvxpPvx/HbS3zIWqiB5RWAZDJNfWb1VOARldfyx35MGAiXP/gdqCGaG/nDnLV
	3/4k9yIuWXMKeCMdAy/fHPRzmHO2K3jBda7/V6VdrJYN4+qadp9PNgN+OT0MzvizYT+l0J9EO/z3m
	92aDbOu36ruQEW3+xflw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjipy-00238O-14;
	Tue, 04 Apr 2023 15:44:46 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjipw-002373-07
	for linux-rockchip@lists.infradead.org;
	Tue, 04 Apr 2023 15:44:45 +0000
Received: from jupiter.universe (dyndsl-091-248-190-097.ewe-ip-backbone.de [91.248.190.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C274B660316D;
	Tue,  4 Apr 2023 16:44:39 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680623079;
	bh=mn9mvLqb9JfD/v2GbIwIPsZvL+PY+ToYp17NbyJwa6Q=;
	h=From:To:Cc:Subject:Date:From;
	b=lbnmZukKs0voBA2Q6TmJGE9i4FaDZ+rTZ1ouyCAtNtMsDj5dbLP/Pu46k5QbUyerc
	 DbxIq42KxDPoEqEJqGysbE7dcPRa3Hb9vBu3gDsEDpX95TmWNrd45e2fySOuE4qak+
	 4mcj0uDVW77QrkBXCaLEEuM85QMs7gvpYD1KvSLdDBlaJzsbke1M+FLwxOtxC1uVhr
	 aVYU99IcxD5VtwW3g0rHFtZd+4dgqUitBnqw+aeFC5cAXfMP9aQiIJdNaCm8dzYgyU
	 Xqc7aVJe8hqRHp7NE8yHHK0mpuhYdu8QXyd1u8o/21LOm2tfP00NiVHmMF3VQOfVaO
	 ALTXflyczEb8Q==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 8386E4807E1; Tue,  4 Apr 2023 17:44:37 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCHv1 1/1] arm64: dts: rockchip: rk3588: add thermal sensor
Date: Tue,  4 Apr 2023 17:44:29 +0200
Message-Id: <20230404154429.51601-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_084444_204199_E774EB22 
X-CRM114-Status: UNSURE (   8.63  )
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

Add thermal sensor IP, which allows monitoring temperatures at
seven different places in the SoC:

* Chip Center
* CPU Cluster 1 (Dual A76 "Big" Cores)
* CPU Cluster 2 (Dual A76 "Big" Cores)
* CPU Cluster 0 (Quad A55 "Little" Cores)
* Power Domain Center
* Graphics Processing Unit
* Neural Processing Unit

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
The driver + dt-binding part has been merged by Daniel Lezcano,
so let's add the DT node.
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 7840767dfcd8..c51f766cbd2e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1589,6 +1589,26 @@ pwm15: pwm@febf0030 {
 		status = "disabled";
 	};
 
+	tsadc: tsadc@fec00000 {
+		compatible = "rockchip,rk3588-tsadc";
+		reg = <0x0 0xfec00000 0x0 0x400>;
+		interrupts = <GIC_SPI 397 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru CLK_TSADC>, <&cru PCLK_TSADC>;
+		clock-names = "tsadc", "apb_pclk";
+		assigned-clocks = <&cru CLK_TSADC>;
+		assigned-clock-rates = <2000000>;
+		resets = <&cru SRST_P_TSADC>, <&cru SRST_TSADC>;
+		reset-names = "tsadc-apb", "tsadc";
+		rockchip,hw-tshut-temp = <120000>;
+		rockchip,hw-tshut-mode = <0>; /* tshut mode 0:CRU 1:GPIO */
+		rockchip,hw-tshut-polarity = <0>; /* tshut polarity 0:LOW 1:HIGH */
+		pinctrl-0 = <&tsadc_gpio_func>;
+		pinctrl-1 = <&tsadc_shut>;
+		pinctrl-names = "gpio", "otpout";
+		#thermal-sensor-cells = <1>;
+		status = "disabled";
+	};
+
 	i2c6: i2c@fec80000 {
 		compatible = "rockchip,rk3588-i2c", "rockchip,rk3399-i2c";
 		reg = <0x0 0xfec80000 0x0 0x1000>;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

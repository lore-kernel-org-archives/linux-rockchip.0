Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24797606A335
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Nov 2026 08:19:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=aYKjn8LC;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=cZ1g1cPD
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=fFW8nMf1pZyOvWjQP/H1QgUbrxDk3KM+fJthCckAa7w=; b=aYKjn8LCUBFCD/WoQvcvlnG0Pt
	8QmZva7ftuL6dOFx6o578kptP5L1hFCO3DSj/yarN68xZC3K6eZeL+ivp4yci69Oj/v7LANBtaSer
	XxsXBNz+H9L8sZnmpt3hsqinnsIY7syvCicNPMEHAMf7xledQHYL/1pNOkQC4xiBZUYyhkKMA4xHi
	TovufFSquHlz3BtTpaEQQurlSNJn7PQKl3u6Jwsh1iSr+0dNiG4+5dnqqmoUCZwSdVCKNZJWVkGan
	ppeHGn7pqZanoPJDu9uEkmH81sm7LvywQfZxiNR5Gm/YuzPq/QWP3CS9lhxZuQ511Xetr9LZKn/5K
	PFScIGuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQh4R-000000035TW-323a;
	Tue, 10 Nov 2026 08:19:11 +0000
Received: from mail-dy1-x1331.google.com ([2607:f8b0:4864:20::1331])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQh4B-0000000357D-2Syu
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Nov 2026 08:19:00 +0000
Received: by mail-dy1-x1331.google.com with SMTP id 5a478bee46e88-33bb5afa736so206979eec.1
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Nov 2026 00:18:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794298735; x=1794903535; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=58OrtSXJfJJ8mejcrjyYFp3mmVgIIq4F94FhF2tk08c=;
        b=cZ1g1cPD/5bCgFxddyekiIANF7BpHR+ZDuVqBnhrxPNBVW2Y98GjHlZJUWF7hVEJmb
         a/xRSTyhydQAKNFAfZOn246SNBEr0gOrBZ4JZKW9P0cMnKqmUJF0RkYXAeroZVfEoOv7
         0MbewMXvM2+RHWOij0eHmCFCNBMtM0f/sHefhQwVF8ov45hO4ltaVNzIvjdOzga0Z59i
         GmtuGPtlpaUH3DTm+Sj1yI0iO3FhvftLmEf4O7bPoWV7RQr6i/EXN4kcp9ZLPpcrMSKu
         nQB+FUaCGSLlaN5v9y0umbNcJVxFgB1WqhlMJhDw4VuZ0KiG+SQg+6WfB0O8dqpV+DJG
         Gyxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794298735; x=1794903535;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=58OrtSXJfJJ8mejcrjyYFp3mmVgIIq4F94FhF2tk08c=;
        b=Btqb5h7/iHcFCQpq1X1ncf8HGWfdTHK2IYXM/zOopFOcV4V2RxcCHy+9e1xboSxCPl
         obb/gpZXlguMM/BpB1KSOjgfpFY4Pa5k+zDYlOIJGoIohGgS19U+8xGWpUfITyMRBpMR
         k7v5Es+/0BeR9PRCulHlICY1A+QXBceIsk0X3IXY3ZisOLcGYQvdZ5vBImHcW8Vv/KbR
         in2fWgnHiQ0JjOHfl/06m3rPcZ7S6S0SsIfSZKrk6GuNfcAKuvlNFOFxYokbj4CYV6Rl
         JNNPVSkRinTLVA5ryp0LNrawAXqPVcVV8sIbuvCY90+8qC9xCbC3R5l2VR8+R0veSODr
         CVAQ==
X-Forwarded-Encrypted: i=1; AL+hErGKF1SVdcJ+Wezmfh105cv4JSAjvd+UKpOUDpXpE5uZrOySAjMpBf70gKHF+cyS4QHfRGzr1oUWQRahKCj7fg==@lists.infradead.org
X-Gm-Message-State: APuU4Z9F420V6SrG9pEuHgZqIPynzimylZFGvrInbGBGx61Qe6MQIvhh
	Ohgix6/NNMCk2t9radpsG1u6WIguEJbXlEnw904QRaM5A5IzlCfhoCsQ
X-Gm-Gg: AYBFou1q1sHaene8zJZWc9EB9c04j4yX4I1ko16qQhB694K/LOi9E9DwunEJ2qndFrY
	hyhyQqZnLHcYdXN6pTEM8nAtKkRjFJOJ4AK+fxUBsbLG5za6liJSdO+bR0R5DIYRkEgcwAaNzg/
	wHyngziau0jUzj325MYiwSw7Ep+/XF+Hr7blDztLmWHAsQlZilfgX8UVi4sQdV7xJpuReuTVFoV
	y60gOG5KqDoItFH4V5MOSZFZU0Bn4sIwwKKbb/Yyvn3Z+wOGmrxYV3S9qdB3idQcn5POzwMbax0
	ZHVcCaDB2u7jvZEvyGnmDRKUuwWWAYWm1+mhZt92xQDtkmg2a3JZ7lYFg9jwWOWmoa7yMD1FE9T
	6jWKqEu8GCLuqKUYaFxYXcmp2ycJuq88SjekwYsen+HRxa9z4skbZJLj+UHqhjV0xdWAAYMmanq
	IuiMnc/r7AsbcDTLJE8NjdJb1NYI2OvsHq6aD0ZojaJFM/bZPF0ajsiXGVcDYNqFFQj9gumZ/JX
	+za3lJLWfd3NWPsD//RHyyxTsq7NGpqCvEntGDJ/cqx1soD5DyvumemC3YWFi/J2RLbEn3pTkep
	6bI5k9ioLkKoLwc5td6pu710B7nEsL7DdptId6w2xXU+4AUTfu1ygeHwqqD0PQ==
X-Received: by 2002:a05:701b:451c:20b0:1b2:5884:a039 with SMTP id a92af1059eb24-1b3b5e0f414mr4048117c88.0.1794298734256;
        Tue, 10 Nov 2026 00:18:54 -0800 (PST)
Received: from [127.0.1.1] (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b3b5b2fc14sm5236759c88.12.2026.11.10.00.18.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Nov 2026 00:18:53 -0800 (PST)
From: Jason Yang <jason98166@gmail.com>
Date: Tue, 10 Nov 2026 16:18:12 +0800
Subject: [PATCH v6 9/9] arm64: dts: rockchip: add the dcphy mipi csi-2
 receiver nodes to rk3588
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261110-dcphy-rx-v1-v6-9-d681ba20b36a@gmail.com>
References: <20261110-dcphy-rx-v1-v6-0-d681ba20b36a@gmail.com>
In-Reply-To: <20261110-dcphy-rx-v1-v6-0-d681ba20b36a@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Guochun Huang <hero.huang@rock-chips.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Michael Riesch <michael.riesch@collabora.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Jason Yang <jason98166@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794298692; l=3896;
 i=jason98166@gmail.com; s=20260721; h=from:subject:message-id;
 bh=NfZPZ3x823SqrJqo1CoKHOAuhoYjmEYwXc5QK1HOeNM=;
 b=hmXOPmwC6P7NZm1wuYkfSpLT35bn5qW1AqUnz9qTDNabhwPjQoByidKwphwUGq55w1I4/Xb87
 kvoSvUiZUAtBJMwkXmepyPTarxTVvUdwdUbhQH90NUZWEgoS8Tle6rP
X-Developer-Key: i=jason98166@gmail.com; a=ed25519;
 pk=xQmD001Q/ooHl39PxyQtusbUQmgbOsSfpFryRVWZ/k4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_001855_662378_4CF15A8B 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The MIPI0 and MIPI1 receiver units are connected to MIPI DCPHY0 and
MIPI DCPHY1, whose receiver side is now supported. Add the two nodes and
wire them to the VICAP ports.

The dsi nodes keep <&mipidcphy0 PHY_TYPE_DPHY>, the only value the
binding had before the PHY receiver was added. PHY_TYPE_DPHY still
selects the PHY transmitter in D-PHY mode. The csi nodes use the new
PHY_DIRECTION_RX from the dt-bindings header. Neither phy node needs
phy-type: the DSI host and the CSI-2 host both run the block in D-PHY
mode, the default.

There is an ABI break if the dsi and csi nodes use the new cell values:
an older kernel ignores phy-type and takes any cell value as the mode of
the block. A DSI node with PHY_DIRECTION_TX then gets no display, and a
CSI-2 node with PHY_DIRECTION_RX gets no camera.

To keep the ABI break small, the dsi nodes keep PHY_TYPE_DPHY, which
older and newer kernels both accept. With the csi nodes disabled, the
display therefore keeps working on either kernel.

The csi nodes have no older value to keep and have to use
PHY_DIRECTION_RX. Enabling csi0 or csi1 therefore needs a PHY driver
with receiver support. Since v7.0, a CSI-2 host driver probes the csi
nodes. An older PHY driver then gives the CSI-2 host the PHY transmitter
that drives the display. The camera gets no frames, and the display can
stop working as well.

Signed-off-by: Jason Yang <jason98166@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 68 +++++++++++++++++++++++++++
 1 file changed, 68 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index aa69fd3793fd..c7174c2f15c3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -1516,10 +1516,18 @@ vicap_dvp: port@0 {
 
 			vicap_mipi0: port@1 {
 				reg = <0x1>;
+
+				vicap_mipi0_input: endpoint {
+					remote-endpoint = <&csi0_output>;
+				};
 			};
 
 			vicap_mipi1: port@2 {
 				reg = <0x2>;
+
+				vicap_mipi1_input: endpoint {
+					remote-endpoint = <&csi1_output>;
+				};
 			};
 
 			vicap_mipi2: port@3 {
@@ -1568,6 +1576,66 @@ vicap_mmu: iommu@fdce0800 {
 		status = "disabled";
 	};
 
+	csi0: csi@fdd10000 {
+		compatible = "rockchip,rk3588-mipi-csi2", "rockchip,rk3568-mipi-csi2";
+		reg = <0x0 0xfdd10000 0x0 0x10000>;
+		interrupts = <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "err1", "err2";
+		clocks = <&cru PCLK_CSI_HOST_0>;
+		phys = <&mipidcphy0 PHY_DIRECTION_RX>;
+		power-domains = <&power RK3588_PD_VI>;
+		resets = <&cru SRST_P_CSI_HOST_0>;
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			csi0_in: port@0 {
+				reg = <0>;
+			};
+
+			csi0_out: port@1 {
+				reg = <1>;
+
+				csi0_output: endpoint {
+					remote-endpoint = <&vicap_mipi0_input>;
+				};
+			};
+		};
+	};
+
+	csi1: csi@fdd20000 {
+		compatible = "rockchip,rk3588-mipi-csi2", "rockchip,rk3568-mipi-csi2";
+		reg = <0x0 0xfdd20000 0x0 0x10000>;
+		interrupts = <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "err1", "err2";
+		clocks = <&cru PCLK_CSI_HOST_1>;
+		phys = <&mipidcphy1 PHY_DIRECTION_RX>;
+		power-domains = <&power RK3588_PD_VI>;
+		resets = <&cru SRST_P_CSI_HOST_1>;
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			csi1_in: port@0 {
+				reg = <0>;
+			};
+
+			csi1_out: port@1 {
+				reg = <1>;
+
+				csi1_output: endpoint {
+					remote-endpoint = <&vicap_mipi1_input>;
+				};
+			};
+		};
+	};
+
 	csi2: csi@fdd30000 {
 		compatible = "rockchip,rk3588-mipi-csi2", "rockchip,rk3568-mipi-csi2";
 		reg = <0x0 0xfdd30000 0x0 0x10000>;

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

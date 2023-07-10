Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDBE9EB64DC
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Jul 2023 16:53:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RUI4Lx/PEwBOpcOLeC6O0pb6Df39bnNxwME00ZqYwY8=; b=hFAuj2PEgkDWyP
	8GYM490KuOm5h6tJ7r0wWQ4e4Wwp0ft0FsjSqK/ln3D59brZjE0AAkFE++vClhKylFgIcnHUNa8Wt
	0r7OzX8bEqIx79n1ga68Ln3gd3lpyICbJPH0Qt0446ELPs3ElQCGF0nEq1id7p4nr5U9/IJBrZlcw
	ZJ0A+Ayytm0HsLF1NcthzD0hRy6XCIULSiWaujmDQIcJlbVwlYLEcqTmIzM9wiTUFhnBlzZDniE38
	/zjaXnJ+hLGvApI/h1gcNlz+FoL+dEhpEyePro4B9/SqgmIoK4YmtzrdbYLAKpJqeEHFBFTA+e0fa
	lWQZX/G9q6pkzCiEUqrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIu8A-00CF7L-2g;
	Mon, 10 Jul 2023 16:52:58 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIu7r-00CEp6-0e;
	Mon, 10 Jul 2023 16:52:40 +0000
Received: from jupiter.universe (dyndsl-091-248-189-246.ewe-ip-backbone.de [91.248.189.246])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 868AE660700F;
	Mon, 10 Jul 2023 17:52:32 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689007952;
	bh=iAAaULXKzOM58JwUjAKjW61TNCzveUnAnpYj6EelEwk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ScLMNM0dSZ8G/eH50KidWkP/xzmxVlbKltljXCZhP3HbwUfO6EK+OYxMUq0Z+xurM
	 iuxxTCcR1QAN0N+ufCiX1UPJy/9qL93HMCCXdK8zofBSwW3csw0RN4pLK5pE6T0aEy
	 cLigX3JaScbuqXikzYD4zLOAJZw3s6yuUfx7ZD9R0HAxdI62DhVkb97hIFRfpDavCb
	 UUCXPrgxGAp4c+EzJ5YRBbjkMGj6WrGfFGQd3RxY9cw611oqQZ5X9tsDQ4Z5/Vp39v
	 ldcSCEKUntJlpyX5naJDCxbjosTQit2avsrVKiczs3S5C9Wi0//leJcHNsDOXR2EkS
	 aU+YTzb3XKLMQ==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 24C224807E1; Mon, 10 Jul 2023 18:52:28 +0200 (CEST)
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
Subject: [PATCH v1 08/13] arm64: dts: rockchip: rock-5a: add analog audio
Date: Mon, 10 Jul 2023 18:52:23 +0200
Message-Id: <20230710165228.105983-9-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230710165228.105983-1-sebastian.reichel@collabora.com>
References: <20230710165228.105983-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_095239_382002_200C1EF2 
X-CRM114-Status: GOOD (  11.65  )
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

Add analog audio support based on the Everest Semi ES8316 codec.

Note, that this currently does not support headphone plug events. The
Rock 5A uses a different headphone jack with a different logic to detect
a headphone plug. Unfortunately the detect GPIO is always low.
Downstream uses an ADC channel instead, but that is currently not
supported upstream.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../boot/dts/rockchip/rk3588s-rock-5a.dts     | 52 +++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 5bad81c5b09d..4c6c87d462e9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -16,6 +16,20 @@ aliases {
 		serial2 = &uart2;
 	};
 
+	analog-sound {
+		compatible = "audio-graph-card";
+		label = "rk3588-es8316";
+
+		widgets = "Microphone", "Mic Jack",
+			  "Headphone", "Headphones";
+
+		routing = "MIC2", "Mic Jack",
+			  "Headphones", "HPOL",
+			  "Headphones", "HPOR";
+
+		dais = <&i2s0_8ch_p0>;
+	};
+
 	chosen {
 		stdout-path = "serial2:1500000n8";
 	};
@@ -149,6 +163,44 @@ regulator-state-mem {
 	};
 };
 
+&i2c7 {
+	status = "okay";
+
+	es8316: audio-codec@11 {
+		compatible = "everest,es8316";
+		reg = <0x11>;
+		clocks = <&cru I2S0_8CH_MCLKOUT>;
+		clock-names = "mclk";
+		assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;
+		assigned-clock-rates = <12288000>;
+		#sound-dai-cells = <0>;
+
+		port {
+			es8316_p0_0: endpoint {
+				remote-endpoint = <&i2s0_8ch_p0_0>;
+			};
+		};
+	};
+};
+
+&i2s0_8ch {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2s0_lrck
+		     &i2s0_mclk
+		     &i2s0_sclk
+		     &i2s0_sdi0
+		     &i2s0_sdo0>;
+	status = "okay";
+
+	i2s0_8ch_p0: port {
+		i2s0_8ch_p0_0: endpoint {
+			dai-format = "i2s";
+			mclk-fs = <256>;
+			remote-endpoint = <&es8316_p0_0>;
+		};
+	};
+};
+
 &gmac1 {
 	clock_in_out = "output";
 	phy-handle = <&rgmii_phy1>;
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FBD7C6FA83
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Sep 2022 12:48:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=y8rS65vmzjJQlFOh3zZYQL4KDyPr1KzAYFQdWbmMZY8=; b=u4ENzV2XzZ4fdX
	J0yVROu+JOQM9RIcCiC7QOljRYIFcmfIzlTEVhiISbarAPiU89ACaz9bdk3J4m1MiKK+ISXFLVm8r
	qMn9MZ4qNBj61YfP/732wFccAVj+zahOMN8OwX2gQbu90NFbdBHnOhO4zkcN/DKWy9QSnLUmoHYOh
	U4vz+CzUOokzLDaVLGfRFevcZmZy4kzwyaswOAFYHTh7K7gm9TJZm6wIMnyHrADmaQ12t5qv59kqS
	PmvYl9RyVqZapTVWpopw8WRJTBKyrkDOuUSGtgaUXJDY1LghwwgexxNkd667QVk1LdZkFxGQ1NR/T
	hv4eY4ovbGV1akvw76qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVXzb-00DTVs-OB; Tue, 06 Sep 2022 12:47:51 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVXzP-00DTPb-8x; Tue, 06 Sep 2022 12:47:40 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 187D55C00CD;
	Tue,  6 Sep 2022 08:47:38 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Tue, 06 Sep 2022 08:47:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	tom-fitzhenry.me.uk; h=cc:cc:content-transfer-encoding:date:date
	:from:from:in-reply-to:message-id:mime-version:reply-to:sender
	:subject:subject:to:to; s=fm2; t=1662468458; x=1662554858; bh=IG
	2Lf3dDLIWPiCratWjCH8g6EInTYNDYMvbp9u8bhoc=; b=QvD8YAFlV/vBjXMDxQ
	5gqXk7oyEuuI/YWrUw7b3TX4VDKEgk2yvfK3w/PwOR3uzPUcwPE5AKEqvtBEe83y
	2Fwe6RW4AK4zAyOF7Ose0/YtctxwMgfHP9YffU7muTeSvjdCogGdbkAi3KZ78yXa
	sndrDVWc/g5Oee5ohYUfHwAsJoQk0RbAVZr12S9grBE1tP3qUXIyjmEA6FspCj1Z
	14dajusFlGBQSulT8KHEbct6lmObcslwmhDM8R2sISUy8yfaheQGoZ3rOEQ/Tdzz
	s4eOpAB2IlnEN5EjC9pww2dsl6u9VdX8MdsMuRg24TuW9FK3P9p7vjDDcxD6an8P
	pPPw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1662468458; x=1662554858; bh=IG2Lf3dDLIWPiCratWjCH8g6EInTYNDYMvb
	p9u8bhoc=; b=iiOh4N+JPHyQ0qOZZaZrdpxKDpHDoQBEVfD2B0w5/H3qydPq2e2
	tv6Em4PA6KXC8BFJ/cd8aW3q2s6PQkdrBPEZr36LURvy3X7W2+GHn/Pf/RlM4ru0
	jWAP8B886Lf6wTY7rDbuNntrL2JrnQ9GXp903vNo1Jm6EWqUILHzbfYyQwzbX5sJ
	gYsLcyR4Mn+P61tPh1eU2Z5aNvSCoVC/9uX2BSICf/a0cbSQNWbkycaLjK9rasE2
	IWF53ixDlnjFIW04qwHfXtnYPXKvzBkzY+er3aQeQwV4B1Fkfzprrcs9LZ5dYQXb
	Q/2/zVutGQMLNRC9+CNRWwRxuMJd6QXAA6w==
X-ME-Sender: <xms:aUEXYwmTap-3AQ3Up0v7gFcgLGBFxTW9cKklVISz8oJ9v1uMo7Ge-Q>
    <xme:aUEXY_3MvEJs7_ku0GOG_haXzlk2mzUu0snitimjJDKBOWtYSwgLQCjx_qzvfCxbG
    fuavSBhDRJshmdKHw>
X-ME-Received: <xmr:aUEXY-rtKmGCX2tzr1FPrOcIIPObQCjXczKKgjPTERJ5zrymPtM3ESpB_fDcr1ycc-V2irmJpBgp891G9gTEAu7z2zZECgO_yEU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdelkedgheeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgggfestdekredtredttdenucfhrhhomhepvfhomhcuhfhi
    thiihhgvnhhrhicuoehtohhmsehtohhmqdhfihhtiihhvghnrhihrdhmvgdruhhkqeenuc
    ggtffrrghtthgvrhhnpeefiedvgefffeethfekuefgvdduteeftdeijeduudfgjeeukedt
    vddvfeeuteegveenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpehtohhmsehtohhmqdhfihhtiihhvghnrhihrdhmvgdruhhk
X-ME-Proxy: <xmx:aUEXY8n0onVToJiMNP8qzlqOTFia2Mv8BsyOy7_9ha-IDCQKaTieYA>
    <xmx:aUEXY-2T3rHu_7uGw88q6SuwHpB1gp3UgS4Xq8lGZZigW7GNzAeRyA>
    <xmx:aUEXYzuGDhrue-jMKiGVmOZAvw9fc9laV_LH0iayF3vJTr2bXij-jA>
    <xmx:akEXY7udDuy9C4d9Q6-l8_ss2668uUysBxxv2AwY6jQNAj8mJ1AmDQ>
Feedback-ID: iefc945ae:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 6 Sep 2022 08:47:35 -0400 (EDT)
From: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	phone-devel@vger.kernel.org,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
Subject: [PATCH] arm64: dts: rockchip: add BT/wifi nodes to Pinephone Pro
Date: Tue,  6 Sep 2022 22:47:13 +1000
Message-Id: <20220906124713.1683587-1-tom@tom-fitzhenry.me.uk>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220906_054739_483319_1AB2EDEF 
X-CRM114-Status: UNSURE (   9.47  )
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

Pinephone Pro includes a AzureWave AW-CM256SM wifi (sdio0) and
bt (uart0) combo module, which is based on Cypress
CYP43455 (BCM43455).

Signed-off-by: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
---
 .../dts/rockchip/rk3399-pinephone-pro.dts     | 69 +++++++++++++++++++
 1 file changed, 69 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index 2e058c3150256..096238126e4c1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -43,6 +43,20 @@ key-power {
 		};
 	};
 
+	/* Power sequence for SDIO WiFi module */
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		clocks = <&rk818 1>;
+		clock-names = "ext_clock";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_enable_h_pin>;
+		post-power-on-delay-ms = <100>;
+		power-off-delay-us = <500000>;
+
+		/* WL_REG_ON on module */
+		reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
+	};
+
 	vcc_sys: vcc-sys-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_sys";
@@ -360,11 +374,31 @@ vsel2_pin: vsel2-pin {
 		};
 	};
 
+	sdio-pwrseq {
+		wifi_enable_h_pin: wifi-enable-h-pin {
+			rockchip,pins = <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	sound {
 		vcc1v8_codec_en: vcc1v8-codec-en {
 			rockchip,pins = <3 RK_PA4 RK_FUNC_GPIO &pcfg_pull_down>;
 		};
 	};
+
+	wireless-bluetooth {
+		bt_wake_pin: bt-wake-pin {
+			rockchip,pins = <2 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_host_wake_pin: bt-host-wake-pin {
+			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_reset_pin: bt-reset-pin {
+			rockchip,pins = <0 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
 };
 
 &sdmmc {
@@ -380,6 +414,20 @@ &sdmmc {
 	status = "okay";
 };
 
+&sdio0 {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	disable-wp;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
+	sd-uhs-sdr104;
+	status = "okay";
+};
+
 &sdhci {
 	bus-width = <8>;
 	mmc-hs200-1_8v;
@@ -393,6 +441,27 @@ &tsadc {
 	status = "okay";
 };
 
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
+	uart-has-rtscts;
+	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm4345c5";
+		clocks = <&rk818 1>;
+		clock-names = "lpo";
+		device-wakeup-gpios = <&gpio2 RK_PD2 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
+		max-speed = <1500000>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_host_wake_pin &bt_wake_pin &bt_reset_pin>;
+		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
+		vbat-supply = <&vcc3v3_sys>;
+		vddio-supply = <&vcc_1v8>;
+	};
+};
+
 &uart2 {
 	status = "okay";
 };
-- 
2.37.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

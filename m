Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A82FB606A31B
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Oct 2026 07:09:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Jkn6eQnz;
	dkim=fail reason="signature verification failed" (4096-bit key, unprotected) header.d=lausen.nl header.i=@lausen.nl header.a=rsa-sha256 header.s=uberspace header.b=vaYQs3dN
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=bvix5h54ksADqSb/6u8WhwdNfvOLL9nFvvExFjW9dIE=; b=Jkn6eQnzilXgSeMBAKEICmc9+1
	RGtTw0/9VMVvT3kk7/vsHzx3NDqG2+3PNWqnpEfdIyqm1hANJpCrX4rI9ZR4gTc5SDZ0+ev15yGfH
	KJIRkg1dSKTTVdhGogSsZEcsssKghORMtkQIyWlwyaS+fg6yZzbtXrHsAI3qU5q+8Gcs0oENyIkef
	zqd0LDbSziiHKOI2OHp33PsBU14/xAFOrHRJfpL2EsZZG2E2B2I0NpV3CaGPI7rPAV40G5eiG574s
	F20ye6zLzEAKtkRBMDPzr/gGkrBXjoazc/KVnOIs2ylLfiRaAmlsua/VKRtlN5E2VLHAFs8m+ZhwW
	HhyuNqUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLEpG-00000001pCv-3MKI;
	Mon, 26 Oct 2026 07:08:58 +0000
Received: from mailgate01.uberspace.is ([2001:1a50:11:0:c83f:a8ff:fea6:c8da])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLEpC-00000001p9w-3rB5
	for linux-rockchip@lists.infradead.org;
	Mon, 26 Oct 2026 07:08:56 +0000
Received: from devico.uberspace.de (devico.uberspace.de [185.26.156.185])
	by mailgate01.uberspace.is (Postfix) with ESMTPS id 4BD91613A2
	for <linux-rockchip@lists.infradead.org>; Mon, 26 Oct 2026 08:08:51 +0100 (CET)
Received: (qmail 20805 invoked by uid 990); 26 Oct 2026 07:08:51 -0000
Authentication-Results: devico.uberspace.de;
	auth=pass (plain)
Received: from unknown (HELO unknown) (::1)
	by devico.uberspace.de (Haraka/3.1.1) with ESMTPSA; Mon, 26 Oct 2026 08:08:50 +0100
From: Leonard Lausen <leonard@lausen.nl>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: leonard@lausen.nl,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: rockchip: Enable Wi-Fi on the NanoPi M5
Date: Mon, 26 Oct 2026 07:06:50 +0000
Message-ID: <20261026070821.324094-1-leonard@lausen.nl>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <4b7bd146-93fd-41f8-ad3c-88333adc73b4@rock-chips.com>
References: <20261025205339.14539-2-leonard@lausen.nl> <4b7bd146-93fd-41f8-ad3c-88333adc73b4@rock-chips.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Rspamd-Bar: /
X-Rspamd-Report: SUSPICIOUS_RECIPS(1.5) BAYES_HAM(-2.999998) MID_CONTAINS_FROM(1) MIME_GOOD(-0.1) R_MISSING_CHARSET(0.5)
X-Rspamd-Score: -0.099998
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lausen.nl; s=uberspace;
	h=from:to:cc:subject:date;
	bh=6jaYzEbyOL1fFmh22Tr1O/asMP7njL7VHu3q4kDem18=;
	b=vaYQs3dN18Htr4p3MPYbZDShKiii0TkZv8915CYmEBUcHnpO7NsEJHzyPuUS0llY844XxRfOYm
	9dDI1VVRApxloGmUSynoAQJf1vX3r7kYL5ACQWQoDOzSLXMAi6arEIuxJg2LnixK7JtZ/kkDVQYA
	8maxKkKEjR8Pdw+5CTMH/16vYy3+kniaqTZ4kY5Kwgbh8ebVV+Lqelya8BFyx0mVjlSHwz2Le6Zv
	DId0OEiTPhML0xFJuxTKdUZ4sXF8b9zuuIwsShDjPtJEcJpLxsnGVU3Yx/ec4SKOahPsm7LDCTNP
	dL3C48IRdIyh/LjjRsmKKlJ/MJ5xpkchkPsmLOmPrtFdFpoGXmIPfGkOixysppMFwfENq4VNBYFI
	GaqT+BUd5h5wboED7zy/OnEUcApMrP47wf0KkBsHvlt57SjQM+erq2BuuHkZmYxTm9nt1/rwwRH2
	h7lT2scL3TCQNVAsrQ4YPrZgSiqH1Ym0lWrAORs68rTIOsFqtg9DBK/5eFQ3G1h6wnZGKFkraaNR
	4Rs3eDj9lr+ljCH9Htwpu5+CzR1/B9ga+6k/kpCpyKX6U0GEW+0fr0vCSIFFxxrtSRGJhhuYoIuK
	4q70ANBu33TuU6bWDkStsdd3hJfV34nkwqdy7Ema7fHY6YDk3pMG3MYrttnkxaoHIDBdtUj7dVCF
	Y=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_000855_129683_A7A8734D 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-22.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The NanoPi M5 has an M.2 E-key slot for SDIO Wi-Fi modules such as the
RTL8822CS-based AC200. The SDIO controller is disabled and the module's
power sequence is not described, preventing the card from enumerating.

Enable the controller in four-bit SDR104 mode and connect its 3.3 V card
and 1.8 V I/O supplies. Describe the active-low reset on GPIO1_C2, the
200 ms power-on delay used by the vendor device tree, and the external
32.768 kHz clock from the HYM8563 RTC. Keep the card powered during
suspend as required by the rtw88 SDIO driver.

The SDIO wiring and reset timing are based on FriendlyElec's NanoPi M5
vendor device tree by jensen <jensenhuang@friendlyarm.com>.

Link: https://github.com/friendlyarm/kernel-rockchip/commit/6f07f3e0b7ec54be90ae30f097d2a9d5aea80974
Assisted-by: LLM
Signed-off-by: Leonard Lausen <leonard@lausen.nl>
---
Hi Shawn,

> disable-wp is for sd cards, please drop it.

Thank you. Dropped it from the SDIO controller in v2.
This was mistakenly copied from vendor source.

Changes in v2:
- Drop disable-wp from the SDIO controller (Shawn Lin).
- Credit the original vendor source and document AI assistance.

AI assistance was used to inspect the vendor DTS and schematics, draft
the DTS changes and commit message, and run build/style checks.

 .../boot/dts/rockchip/rk3576-nanopi-m5.dts    | 33 +++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
index 3a305408fa16c..baf1dea2cfa98 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
@@ -23,6 +23,7 @@ aliases {
 		ethernet0 = &gmac0;
 		ethernet1 = &gmac1;
 		mmc0 = &sdmmc;
+		mmc1 = &sdio;
 	};
 
 	chosen {
@@ -212,6 +213,16 @@ vcc_3v3_s0: regulator-vcc-3v3-s0 {
 		vin-supply = <&vcc_3v3_s3>;
 	};
 
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		clocks = <&hym8563>;
+		clock-names = "ext_clock";
+		pinctrl-0 = <&wifi_reg_on_h>;
+		pinctrl-names = "default";
+		post-power-on-delay-ms = <200>;
+		reset-gpios = <&gpio1 RK_PC2 GPIO_ACTIVE_LOW>;
+	};
+
 	sound {
 		compatible = "simple-audio-card";
 		pinctrl-names = "default";
@@ -855,6 +866,12 @@ pcie0_perstn: pcie0-perstn {
 		};
 	};
 
+	sdio-pwrseq {
+		wifi_reg_on_h: wifi-reg-on-h {
+			rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	sdmmc {
 		sdmmc0_pwren_h: sdmmc0-pwren-h {
 			rockchip,pins = <0 RK_PB6 RK_FUNC_GPIO &pcfg_pull_up>;
@@ -890,6 +907,22 @@ &saradc {
 	status = "okay";
 };
 
+&sdio {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	no-mmc;
+	no-sd;
+	non-removable;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc_3v3_s3>;
+	vqmmc-supply = <&vcc_1v8_s3>;
+
+	status = "okay";
+};
+
 &sdmmc {
 	bus-width = <4>;
 	cap-sd-highspeed;

base-commit: ae965b9856f033145e292b0c29082a26bcc45efd
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

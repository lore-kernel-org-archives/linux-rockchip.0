Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCECA606A31A
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Oct 2026 02:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=JzoPNued;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=HUsKyqqZ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EqLAu0LZHsotCVgJOSzpj4pRGIR+L4uKeRz4NpbL0+s=; b=JzoPNued+IET+o
	Uhel0JVQ+PuE3m9nNBPrb88Nqg8Qy6Wn+S2bRonS3r0FfJK5tTvWoY++L+JReLOTgpyVymXx8IZPW
	ptJZ1NbbwY3K7HD6gUpzG6UsCFb1T1kUU9qVaKSrvZnIAOAeeyRr3/J/K5uev8wKX3TRDpA3j0L+5
	xnUFbhEeBmEeZw+D2kfUfY4xIWiGU2qnVix7TKu+PnPrO1HmcFLsKHNf5ByCnWwMVkDT5hG8T5tsO
	ewVBetXoGn57krQVzVrKGTl34urvDAuElqN3mB5QMb01DsxcgeP6KDF7kZ9EfGuT1SGZEbIv0fQPk
	cUkPqfhzbYlSChPMjRiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJj1N-0000000DFgC-0bDR;
	Thu, 22 Oct 2026 02:59:13 +0000
Received: from mail-dy2-x0a.google.com ([2607:f8b0:4864:36::a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJj1J-0000000DFd7-2yJY
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Oct 2026 02:59:10 +0000
Received: by mail-dy2-x0a.google.com with SMTP id 5a478bee46e88-33e48934fa8so493926eec.0
        for <linux-rockchip@lists.infradead.org>; Wed, 21 Oct 2026 19:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792637949; x=1793242749; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kapioonxhfRQWTN60e84l0FnMPJ/xo6q07mXjt2TXY8=;
        b=HUsKyqqZtdh/aYq5Stmd1zvSNSz5YChkOS3Iedz0bKo5VjiBIIwwqWKyJ7sgk1L8Oh
         AsMn/Z262MLH30gM3Iy8/BoSXV/dt3b9JR9fv76S4MI8SFdcRVD2cQD01iZWTdCkv4Af
         VmUzXSR8vvWRX55HNdLfOXBzRrehhgGwfbP9A/Rgu8PL/RwVSRNrHUeY2VM85mO/D2aG
         v4AUR0pVdWu9ZsDENiX3iIoYlHXggS7WbN5CJhchSNh6r2pg/X+vwSua9DTAS7r306Q9
         IfpBMOY9Zvv07XPqLpvOElio49xPDFOGHeQgKvgCY64t1n3UpZkO3qT21xnEl6+3Y2yH
         0oyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792637949; x=1793242749;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=kapioonxhfRQWTN60e84l0FnMPJ/xo6q07mXjt2TXY8=;
        b=ZY+1+3hBKQ5QGmuekDhoV2OLBokPY/Z96x3huspiO7ze72MY8fzZkWwSGynzVYB85L
         PV/xIMp3kAsk5e6XNYvVZLQzO/prFM8gCpG173tvNO2uGAPeKZi7yqWEsk0f51j48x7D
         RsNfuQdWmRZEdhz2sq8XdqRiuXUaAA9hhZp6Rkj1RSsJWk+6LuaU3BL5T+mllVaPHJeg
         9q6wrFseJH/DjFBoUKeP9r4PhAgxvzIKF+J6BXhvQ3O+AZZgfn39ipLNI7viypAqOi2V
         Orzig3/Vs9vLpTXrRLCvQPED80WEifIpvw9bOOOqTKaxW4mMyQKSYJiGAp33nKZKAPCp
         tlCA==
X-Forwarded-Encrypted: i=1; AKwUvByL6BGSaCBS2Q6Z7E4C2nGpdjp9TwD/UQQIo1f3aQj4PC/PpRF5sXJrT8mm4rTKqS/bcOzuZlMq6nRb/yyMiw==@lists.infradead.org
X-Gm-Message-State: AFq9FYKmfr4njdo1XmfrrHwFUs/8X5k4HsjS7xMaAW5hNQcGk8YxuPC4
	Y0ljk43dgsPl3+zI0RXhUDRMTnYqCAUZp6T5TKBM3c9w6ywPtDX3OgbrQU5XZgUdAoWWKA==
X-Gm-Gg: AYBFou3m1oEsOZc9t62ky8kL+QDk3FvlEHIJ2QJ0obvRz/E0Dffah1URnrUSDmdPf8L
	Bv4A+wKvSRHoPbbUBZAM74J55tT2N/0XXJaUrRFE2Muzg9CzOrA18NwiU4dn6IlXD6iJKkIXCeh
	DU3Ur6FR0KzIXS6LQ/KmsItmZl01LRksAIPQngesZ1sVTaRco09EhXFgmR16nGn2joPTLT63HmE
	dLhIfn6Xhr1BOzQRjHx+JX663uW3uWJC3R5UVMRDrIgEtukWWKrD+IkpoxOv7arV5UpKKsAbhkg
	pqw9agPzCRGrwFlYwWHEwzmimS3CgUO5unQeeT8LzjoC6285ACYFZDD/6v2Fadgi9hP7oouugCY
	g0juN5AMdcW6VY2hWN8ucFbgqCAWbXlltwGHbqjMz19n27bpMpya3ji2s0ci6tz6LPP751K658W
	W/YFXkyLl5Zam1WfHucV0JvkaQCZgs/Gff7T1lccElLwRmA5FYCdKv4xLQb8GMmS7DQJUgQ2L3d
	fP/peMXqCRn5FZjtj8VcTrrS1ja4jdCelubMFeJyfjHMr+HHJYTvOQ=
X-Received: by 2002:a05:7023:a8b:b0:185:fd0c:4585 with SMTP id a92af1059eb24-190a67f9f08mr5252274c88.33.1792637948939;
        Wed, 21 Oct 2026 19:59:08 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36740cc8c6dsm13029572eec.12.2026.10.21.19.59.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Oct 2026 19:59:08 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	David Heidelberg <david@ixit.cz>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH v11 3/3] arm64: dts: rockchip: rk3568-photonicat: enable SGMII LAN port
Date: Thu, 22 Oct 2026 10:58:44 +0800
Message-ID: <20261022025844.150320-4-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261022025844.150320-1-coiaprant@gmail.com>
References: <20261022025844.150320-1-coiaprant@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_195909_760775_04C4693E 
X-CRM114-Status: GOOD (  13.69  )
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
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The Ariaboard Photonicat has a Motorcomm YT8521SC Gigabit Ethernet PHY
connected to GMAC0 via XPCS SGMII.  Enable the necessary nodes to make
this port functional.

Enable the xpcs node, referencing combphy2 as the SerDes PHY.

The rockchip,sgmii-mac-sel property on combphy2 is not set here.  The
property is tri-state: when absent, the driver leaves the routing
unchanged.  If the bootloader has already routed combphy2 SGMII to
GMAC0, the link works without the explicit property.  A follow-up will
add rockchip,sgmii-mac-sel = <0> once the PHY binding lands in
linux-next, removing the dependency on the bootloader default.

RK3568 has three Combo PHYs that can carry SGMII; which one is wired
to the XPCS is a board-level choice, and Photonicat uses combphy2.

Add the mdio0 node with the YT8521SC PHY at address 3, including its
reset GPIO and LED configuration.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../boot/dts/rockchip/rk3568-photonicat.dts   | 48 ++++++++++++++++++-
 1 file changed, 46 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts b/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
index 12ae9159bea87..d9015dbfb9f5c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
@@ -261,9 +261,18 @@ &cpu3 {
 	cpu-supply = <&vdd_cpu>;
 };
 
-/* Motorcomm YT8521SC LAN port (require SGMII) */
+/* Motorcomm YT8521SC LAN port */
 &gmac0 {
-	status = "disabled";
+	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>;
+	assigned-clock-parents = <&clk_gmac0_xpcs_mii>;
+	managed = "in-band-status";
+	pcs-handle = <&xpcs>;
+	phy-handle = <&sgmii_phy>;
+	phy-mode = "sgmii";
+	phy-supply = <&vcc_3v3>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac0_miim>;
+	status = "okay";
 };
 
 /* Motorcomm YT8521SC WAN port */
@@ -342,6 +351,36 @@ &i2s0_8ch {
 	status = "okay";
 };
 
+&mdio0 {
+	sgmii_phy: ethernet-phy@3 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0x3>;
+		max-speed = <1000>;
+		reset-assert-us = <20000>;
+		reset-deassert-us = <100000>;
+		reset-gpios = <&gpio3 RK_PC6 GPIO_ACTIVE_LOW>;
+
+		leds {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			led@1 {
+				reg = <1>;
+				color = <LED_COLOR_ID_AMBER>;
+				function = LED_FUNCTION_LAN;
+				default-state = "keep";
+			};
+
+			led@2 {
+				reg = <2>;
+				color = <LED_COLOR_ID_GREEN>;
+				function = LED_FUNCTION_LAN;
+				default-state = "keep";
+			};
+		};
+	};
+};
+
 &mdio1 {
 	rgmii_phy: ethernet-phy@3 {
 		compatible = "ethernet-phy-ieee802.3-c22";
@@ -606,3 +645,8 @@ &xin32k {
 	pinctrl-names = "default";
 	pinctrl-0 = <&clk32k_out1>;
 };
+
+&xpcs {
+	phys = <&combphy2 PHY_TYPE_SGMII>;
+	status = "okay";
+};
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

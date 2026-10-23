Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 671E1606A319
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Oct 2026 05:36:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=oGzLC87c;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=gLmnLi2r
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=EK+0OCGvKAfqOxOiwQJMpnCW2U0EI0kXoclBlJcEFBk=; b=oGzLC87cDfSJXsIhIHBhqUOOYP
	aMBt/TnW6g7Hj+crcXDtbFkliqwmUz2mEtJwmRaf7wqM2hzRY08lObnLDPIufUUOvyiiAXJTa5dGE
	UCUEpDAw5xChkBu/kb+zdMDVD0vtLp7Y7ApITuGAtQANSFveFlVbFqG5F3d4rgqSYnNsRwzogZlYu
	DkhR8LDwVaH/QuRVgQU8g2sSJF1URyhu5GCLv7/1z7bFxO4xm6BWmTUWnD9Rg2JZSuUtQUvnEOIWu
	4Euq/v9LSIE0I5AkJ0eakw+yrTLLcEiOZzsWLuOUrc7wgXIRcbwQySMGpChqBCRADHHJUbAM/I4bg
	U/QfMbdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xK7wt-0000000FWpp-1eWI;
	Fri, 23 Oct 2026 05:36:15 +0000
Received: from mail-dy2-x0a.google.com ([2607:f8b0:4864:36::a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xK7wp-0000000FWnS-1jdP
	for linux-rockchip@lists.infradead.org;
	Fri, 23 Oct 2026 05:36:12 +0000
Received: by mail-dy2-x0a.google.com with SMTP id 5a478bee46e88-3663e04e9a8so694882eec.0
        for <linux-rockchip@lists.infradead.org>; Thu, 22 Oct 2026 22:36:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792733770; x=1793338570; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=jh545y0wDFW183BEmadwWulwvIdvWJn8yox2hQi9PPs=;
        b=gLmnLi2r2oTGWJrz9CQfdRVYtrfUhRiDnirJHx+q1qQHXMP7N2zQGS1Pvp8dmjXSJf
         9X6EKOC65qcPdV+iadnJYxP/LRWUd2s9YI01XY8Gy3ZQHEi+gL7XuirtJJrIXNzNmQyB
         tJoqQVfRyYCw/7gEAea7gvglOWNNfDe3bTGI1Dju7zaJE0sg1r+vzFLWrVrov8rE5lxc
         bzvdoc586HSp10nYKmyBtugCIUuV1q+o1LV902Bffr4unnex7LoWmt/lLfPL5QPrDWBf
         TwJHQiECILLgG2K2nmgTv09ldpkyqslXQlhd9+jWGZB0OdCoFtivX3Jvcr6VXOQStcjo
         n4eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792733770; x=1793338570;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=jh545y0wDFW183BEmadwWulwvIdvWJn8yox2hQi9PPs=;
        b=Dh238fdRgmv5Y0gEPGGiEg42JxGOYdWTKmOCllK7AHCrNqvW0C9aI7Tnlk7NcD9LQe
         9LtXUt0d+CDePpHTSgctsbu6ldBXB1OvbQKikgGLyJlAmjD6VPPz7S23aPcaazvaUrmo
         eUArAtmWJ7iS92OfoqNhepvpawzgwfvPvR3nK2eDjsKVpaztLqAgYvmtg6kPWsEhvnQw
         dBk8FjzBv+jvpdrTtYGnBPe+UCqkpGf+L9lqTyPUWQaBerWOxO7NmoOQk6KHbvRZNKvh
         O9WhPe6Uzls2qf8gJDqzkaznlznvRNBoLpH5txJ7VF1OHKFrghzYi7Wg8zJIZnvXuJju
         c2OQ==
X-Forwarded-Encrypted: i=1; AKwUvBw5FH2tjtQBFJxX19jGZc0Q2tO7iibacIdaz6aV8gmjhNmMHjQph5zgJ08QaIjnVDGWD2OwzjMNiFywUacuOg==@lists.infradead.org
X-Gm-Message-State: AFq9FYJesi3IZu1BfkCmQW/VugbWIEoKZHrRP0FiMKXJDKqXnnxdLTgG
	d3/Z7O3joE7u18F3GkGIddEUblEXdy6OKdeW2vL2cdTSzFcyaAh5fkgE
X-Gm-Gg: AYBFou3l2lCp8q5cUfFmbq+yzdZhTgPL35iHDg0kDFUt14N3GAT3vhPFgARvNR5ASnM
	YYGcj628sv8X/68ovv8YTwfQK2dILoUNoqBFscq/y2sQ4YxKZOFCILhUvM1l19cpgVN/OU+eOSS
	QcnFL1l8aPuJyRLtqzUS+Wr6dVRq0JVYuT7y7Lv6wAo2d5FJKvP/24VwnNm67YHnzoOkgXQyaE0
	mxNDy5aXV41n3/SzPcldxl7SDJkfgj5MsJ3L5ha9pNLnL26GZJObvlgq+ROStyG/5L4z4RN9DYI
	ozsb987ICSdUDvxubXJSmV57AoWNkjlBYUTsd+nGwpa9LUz97KHY026KNeEP7b/JutHphzBvwpN
	DWF/bT47B7Qcblbqi9tGSqDqaUMzJiAm8cKEv608ngKgF921o2/1rOPpxFnHKkfFteJPS0V/ZJ6
	vXEECFDfshSqfWvyYfVjNblyJeEyCLyrYHpCqShVU6LaYFHHB08LXF+tO6bwCJrHVQvjKCzUdch
	VIQTPjucx6iNR4OXFTwCI3lvDooK/FR0ydse2EmSAxLaYImDXETKQ==
X-Received: by 2002:a05:7300:d0a1:b0:368:74ca:1c5 with SMTP id 5a478bee46e88-369d9858845mr1511194eec.37.1792733770371;
        Thu, 22 Oct 2026 22:36:10 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-369d9c15883sm3542480eec.3.2026.10.22.22.36.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2026 22:36:09 -0700 (PDT)
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
Subject: [PATCH v12 3/3] arm64: dts: rockchip: rk3568-photonicat: enable SGMII LAN port
Date: Fri, 23 Oct 2026 13:35:48 +0800
Message-ID: <20261023053548.1595033-4-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261023053548.1595033-1-coiaprant@gmail.com>
References: <20261023053548.1595033-1-coiaprant@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261022_223611_464556_F8E10AC1 
X-CRM114-Status: GOOD (  12.99  )
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
 .../boot/dts/rockchip/rk3568-photonicat.dts   | 47 ++++++++++++++++++-
 1 file changed, 45 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts b/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
index 12ae9159bea87..22cbfc95ff2ce 100644
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
@@ -342,6 +351,35 @@ &i2s0_8ch {
 	status = "okay";
 };
 
+&mdio0 {
+	sgmii_phy: ethernet-phy@3 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0x3>;
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
@@ -606,3 +644,8 @@ &xin32k {
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

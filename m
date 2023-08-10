Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0045C001DE
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Aug 2023 00:32:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UqUTXmiT1qcviwa+SAtvagdYYVCKvrtZOss4tx6688Q=; b=nIV3e9JA4+croV
	P8f/b8BNc8CQ3tcZuPwLWPb/WgA+gNJiEjA3cMJSx96KWYKnNhK2NSSOkoeLDi1WTSCavLywdcQ35
	lC995twlLg4OzuF0/LovV6MKKZPgndd78e3oOWpAUBHeZTL23zMaP0/KUnzjGMBRKDinHYDTpKQ3g
	bsgME/q5zE368/guGSBwg24C1vSMIYO8oWmHSHQHx82JJy1moSittxgkgBmLPvdXiNcxAvJQx0apO
	GMVS5pWfuDD72VROq3QXmrL0Z7ySAR4e0Ea9isoBHh0maIkYoW6dGYEmssiybWTw/raHKLh6iTgPu
	cOhp9sQT5Yrgg8n0RfRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qTtbA-006Avs-2G;
	Thu, 10 Aug 2023 00:32:20 +0000
Received: from mail-vk1-xa2a.google.com ([2607:f8b0:4864:20::a2a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qTtb8-006Auz-0o;
	Thu, 10 Aug 2023 00:32:19 +0000
Received: by mail-vk1-xa2a.google.com with SMTP id 71dfb90a1353d-48716a85f16so177778e0c.3;
        Wed, 09 Aug 2023 17:32:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691627535; x=1692232335;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AEiKUtISslzw0u4/RZ7vc8PRpS44NmY8OTpXVsqjKHA=;
        b=Yk+e3Cc63ReHF+OiwOuOdHJxxhR8F2SBFYFx5BKHEXFBg+ecQrghgvmbwkwI0xy5Wn
         PNedePPxttZlO3gUJy3+/99953huFOTG11/jBoormaZOq2JWKX6R/EXt7sJmhRm16wdd
         kFcZUDubO641EkNjMpnj24+4S6D0a6wQbJ6KbZxjhV8HiEJfVn+wRbUCp/whOLu1icm9
         4xfSXFEpWuS8/K9B88wByZhJ0Cl3WWIuRDbn6zHkP5XMC4gh2BtIV3n3l0Rsit9zS2kQ
         LLZ/0wGZjiD1xfq3QIlNr8Npjz06UfMOwutkLidgHCY9ssYWUI0KQI5TVvOywShG7saL
         BKcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691627535; x=1692232335;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AEiKUtISslzw0u4/RZ7vc8PRpS44NmY8OTpXVsqjKHA=;
        b=c/4Ks7VrVvAYskzweIwEhb2LS++nrWSQ30mGJs39pnO5+5SI8SQF/rbEbzmovwa8xo
         k0i6zr1JmdJgSsfEM68gjsyfzwMOrQ9YHC94w4DiP9DnYDTDGfCjul8rICj539087dtm
         dSbcOmpW7VOqw4YCVeAr5Ev8siMISoVCdfSEITBWWDDXHSM2m97jwHamveghCg2lj80+
         kVSmTx0IgiKBiEx8WFmScmRh5PlFi7mxmorirCGaI2QdxuyL02zPl94tT72690jQ0ND8
         RTPdSgBchqqlJAOUDLW8BnJDN7DUUShY17dmlaD2n21OBhtRD8iK1rhX/U9etBFfbH1A
         x2gw==
X-Gm-Message-State: AOJu0YxkMctlkrctnh1/mIphfx358li2uG1IsQIZeTZHFxkZCHIqnFHF
	VRryfTz411pQqN/ee+gQ1QA=
X-Google-Smtp-Source: AGHT+IEyNAum/4L8A8X6NkPGBCyAbDeeTrV7WXo7FZrfCVifvevcs/m6iTSswbN1TGanTRR7YIEgKQ==
X-Received: by 2002:a1f:5f02:0:b0:487:110d:7177 with SMTP id t2-20020a1f5f02000000b00487110d7177mr1134379vkb.12.1691627535507;
        Wed, 09 Aug 2023 17:32:15 -0700 (PDT)
Received: from localhost.localdomain (cpe-107-15-246-199.nc.res.rr.com. [107.15.246.199])
        by smtp.gmail.com with ESMTPSA id x13-20020a0ce24d000000b0063d31b493e1sm69098qvl.99.2023.08.09.17.32.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Aug 2023 17:32:14 -0700 (PDT)
From: John Clark <inindev@gmail.com>
To: "Rob Herring" <robh+dt@kernel.org>,
	"Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
	"Conor Dooley" <conor+dt@kernel.org>,
	"Heiko Stuebner" <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: "Thomas McKahan" <tmckahan@singleboardsolutions.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	John Clark <inindev@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Add NanoPC T6 PCIe Ethernet support
Date: Thu, 10 Aug 2023 00:31:56 +0000
Message-Id: <20230810003156.22123-1-inindev@gmail.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230809_173218_293497_B81CE7D7 
X-CRM114-Status: UNSURE (   9.05  )
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

Device tree entries for PCIe 2.5G Ethernet NICs

Signed-off-by: John Clark <inindev@gmail.com>
---
 .../boot/dts/rockchip/rk3588-nanopc-t6.dts    | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
index cec126a77111..0bd80e515754 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
@@ -115,6 +115,16 @@ vcc_1v1_nldo_s3: vcc-1v1-nldo-s3-regulator {
 		vin-supply = <&vcc4v0_sys>;
 	};
 
+	vcc_3v3_pcie20: vcc3v3-pcie20-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_3v3_pcie20";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_3v3_s3>;
+	};
+
 	vbus5v0_typec: vbus5v0-typec-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
@@ -140,6 +150,18 @@ vcc3v3_pcie30: vcc3v3-pcie30-regulator {
 	};
 };
 
+&combphy0_ps {
+	status = "okay";
+};
+
+&combphy1_ps {
+	status = "okay";
+};
+
+&combphy2_psu {
+	status = "okay";
+};
+
 &cpu_l0 {
 	cpu-supply = <&vdd_cpu_lit_s0>;
 };
@@ -391,6 +413,22 @@ i2s0_8ch_p0_0: endpoint {
 	};
 };
 
+&pcie2x1l0 {
+	reset-gpios = <&gpio4 RK_PB3 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc_3v3_pcie20>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie2_0_rst>;
+	status = "okay";
+};
+
+&pcie2x1l2 {
+	reset-gpios = <&gpio4 RK_PA4 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc_3v3_pcie20>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie2_2_rst>;
+	status = "okay";
+};
+
 &pcie30phy {
 	status = "okay";
 };
@@ -425,6 +463,14 @@ hym8563_int: hym8563-int {
 	};
 
 	pcie {
+		pcie2_0_rst: pcie2-0-rst {
+			rockchip,pins = <4 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		pcie2_2_rst: pcie2-2-rst {
+			rockchip,pins = <4 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
 		pcie_m2_0_pwren: pcie-m20-pwren {
 			rockchip,pins = <2 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

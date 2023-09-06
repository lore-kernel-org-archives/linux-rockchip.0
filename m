Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E000DCCF9E9
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Sep 2023 01:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZwbfD2snTepJJlx5yNDRava54glnRBpQkGo6YF2DPEE=; b=Kzf//Z2n+V3qSj
	LgVzoZO1ulh8SouDgpmIMt7prJ3VXSysKVX/eyYVHWyF2jPnYPacmloiDZ+W0XP59zoHHtnBoN1uR
	+Hgik0Mc3izVY7LdJ4Jrjq3Vk+wR5FuM/pJKiNYUbMfnMefu6cXzdN8lNZmhQtVcXEWu3yHce4TC+
	FKYI+PEAYlRVz+iG5rInFh5R/0v/QjtuDa5riJfVA0aWQ6Wm5+lrvJ4gEiJpfkRJmzYKdXSvaz79c
	VS/SgtDdDm75N5jkHyimREd5h7SlTBF9M+ZDorIxsG7eccy35nxtp8/ihHcXpBi/SpHtbzL09Tyx9
	TsqbVQjt3rOt39xkIOJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdhGf-0070ap-1V;
	Wed, 06 Sep 2023 01:23:41 +0000
Received: from mail-qv1-xf36.google.com ([2607:f8b0:4864:20::f36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdhGd-0070a8-0R;
	Wed, 06 Sep 2023 01:23:40 +0000
Received: by mail-qv1-xf36.google.com with SMTP id 6a1803df08f44-6491907dbc3so19067146d6.2;
        Tue, 05 Sep 2023 18:23:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693963417; x=1694568217; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RapfmVejinWEGSWwAMyr8+8Hm8y5i5je9CAT5StOZ74=;
        b=GW/ydfuB+UTu5NgMaK3HA3goUsCuKcme4LBUc2mPd5IStablCj2tJAlUkX3Syn1cZ7
         45j2agGgCaA6Irmixcj3rDhQ6Ht//ebkMu48pUS5FoNvL2HK+SAsH7B8KR4GAS3eooGA
         FmL3aPeh1p8LjjVZQ4N5hLa6ncK44HLYeASECFb4DxEnn+ovPzC2M9xR5a+iHWFh0fhX
         eQDYy2iWoDXX7G7ekMQYP5Ba2AQIzcOTiz1pWrGQqxWEm2wOZk+8ktwerrW9teUwk3T2
         /ooXN9+v4Ym5MrWRZcCeg7OlaFkewyBG99KFTTtbqm0hKi8THQDslBsI579SlkDtDsJO
         MTBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693963417; x=1694568217;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RapfmVejinWEGSWwAMyr8+8Hm8y5i5je9CAT5StOZ74=;
        b=j4OE++7RsAbSqiRXAtZjXwJT5MwKbwdtwKllCVqz8rEu0OJhyeyHyGu1CPCbmOc2MO
         Hcoe9/1GxUvSAA9m4Dy+RsOk/8WEF3T9A1MZzlnpHESTVkoCwBJ9zdZL3sjFNFy4UJxO
         GxF19ejaS1Kb5RhwgUGLTbQYzOA/eIyRvicSlvVvhtIyvza3SrJE4Ztnsp7MJG8Ttnno
         5mCB1zMGR+7982fDvnA0NpuEOQY7hL96CqC9K3e+i9/cVelt/4HOenil3GNKtSw1x/fK
         KgtWad+kRrWI49EpA9fNMIh8TbO5YsaBcgSW1p7tFO0KhbcFFuXlwvpDch+l9ZdfZu9L
         rPsg==
X-Gm-Message-State: AOJu0YxpIRIbCA4gzsQs3rCQBHvI9mbNJPJyZFasZ/GB3b3yCR5dAlDk
	uyoiMM4UJWD789YAlzEdIb0=
X-Google-Smtp-Source: AGHT+IGbLiVoXNQNH8QyFJrTt8supNUMGFKkdBCP1NrhvTCDaGevlKEOdtzrg0ZBfgvJuoVn9ZR+Iw==
X-Received: by 2002:a0c:b21c:0:b0:63c:66ec:e03c with SMTP id x28-20020a0cb21c000000b0063c66ece03cmr14794383qvd.27.1693963416745;
        Tue, 05 Sep 2023 18:23:36 -0700 (PDT)
Received: from localhost.localdomain (cpe-107-15-246-199.nc.res.rr.com. [107.15.246.199])
        by smtp.gmail.com with ESMTPSA id r18-20020a0cb292000000b0064f5daff23fsm4995609qve.15.2023.09.05.18.23.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Sep 2023 18:23:36 -0700 (PDT)
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
Subject: [PATCH] arm64: dts: rockchip: Add NanoPC T6 PCIe e-key support
Date: Wed,  6 Sep 2023 01:23:05 +0000
Message-Id: <20230906012305.7113-1-inindev@gmail.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230905_182339_174717_D4A1C57A 
X-CRM114-Status: UNSURE (   9.24  )
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

before
~~~~
0000:00:00.0 PCI bridge: Rockchip Electronics Co., Ltd RK3588 (rev 01)
0002:20:00.0 PCI bridge: Rockchip Electronics Co., Ltd RK3588 (rev 01)
0002:21:00.0 Ethernet controller: Realtek Semiconductor Co., Ltd. RTL8125 2.5GbE Controller (rev 05)
0004:40:00.0 PCI bridge: Rockchip Electronics Co., Ltd RK3588 (rev 01)
0004:41:00.0 Ethernet controller: Realtek Semiconductor Co., Ltd. RTL8125 2.5GbE Controller (rev 05)

after
~~~
0000:00:00.0 PCI bridge: Rockchip Electronics Co., Ltd RK3588 (rev 01)
0002:20:00.0 PCI bridge: Rockchip Electronics Co., Ltd RK3588 (rev 01)
0002:21:00.0 Ethernet controller: Realtek Semiconductor Co., Ltd. RTL8125 2.5GbE Controller (rev 05)
0003:30:00.0 PCI bridge: Rockchip Electronics Co., Ltd RK3588 (rev 01)
0003:31:00.0 Network controller: Realtek Semiconductor Co., Ltd. RTL8822CE 802.11ac PCIe Wireless Network Adapter
0004:40:00.0 PCI bridge: Rockchip Electronics Co., Ltd RK3588 (rev 01)
0004:41:00.0 Ethernet controller: Realtek Semiconductor Co., Ltd. RTL8125 2.5GbE Controller (rev 05)

Signed-off-by: John Clark <inindev@gmail.com>
---
 .../boot/dts/rockchip/rk3588-nanopc-t6.dts    | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
index 0bd80e515754..97af4f912828 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
@@ -137,6 +137,18 @@ vbus5v0_typec: vbus5v0-typec-regulator {
 		vin-supply = <&vcc5v0_sys>;
 	};
 
+	vcc3v3_pcie2x1l0: vcc3v3-pcie2x1l0-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio4 RK_PC2 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pcie_m2_1_pwren>;
+		regulator-name = "vcc3v3_pcie2x1l0";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
 	vcc3v3_pcie30: vcc3v3-pcie30-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
@@ -421,6 +433,14 @@ &pcie2x1l0 {
 	status = "okay";
 };
 
+&pcie2x1l1 {
+	reset-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pcie2x1l0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie2_1_rst>;
+	status = "okay";
+};
+
 &pcie2x1l2 {
 	reset-gpios = <&gpio4 RK_PA4 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc_3v3_pcie20>;
@@ -467,6 +487,10 @@ pcie2_0_rst: pcie2-0-rst {
 			rockchip,pins = <4 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
+		pcie2_1_rst: pcie2-1-rst {
+			rockchip,pins = <4 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
 		pcie2_2_rst: pcie2-2-rst {
 			rockchip,pins = <4 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
@@ -474,6 +498,10 @@ pcie2_2_rst: pcie2-2-rst {
 		pcie_m2_0_pwren: pcie-m20-pwren {
 			rockchip,pins = <2 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
+
+		pcie_m2_1_pwren: pcie-m21-pwren {
+			rockchip,pins = <4 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
 	};
 
 	usb {
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

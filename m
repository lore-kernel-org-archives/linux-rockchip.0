Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAD78C2BD09
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Jul 2024 16:47:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M8hQBMOCC88TnMaMEC29979qpSY4qzsa36avP/MMKqk=; b=nGgpIYWGK0Kw19
	5A16dS4AF9EKVDXbDiWdTQqStGzSK0pIlduWGJevPa9ywum94M2O2Q/VMSD3w2qaidJJR7OTWX11Z
	rxwobCrLyyG2ikpllYFeJjQAvK9+feEtYLRZpVcoBHHjtnxrCaAc4uUj/zlxDEMLeO+y0/2wtZwfa
	PD5smW+HOckJUXZmIsldMniElNeeKcsYJagjkzPqnxuDqXEO7hBcIicquDzaH2GqlEVNg0J2d7jTl
	CQ1Z7SqsHSSas6c8DVRfunGzsgboZ6TDkrRihCRJxUMpnsjClyagIItBUVRhC1F24jtcnxzLdlh8+
	aFWm92fCbdOwiFZqXETQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSJQP-00000000imS-37G1;
	Fri, 12 Jul 2024 16:47:13 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSJPr-00000000ibh-3iLJ;
	Fri, 12 Jul 2024 16:46:41 +0000
Received: by mail-pg1-x52c.google.com with SMTP id 41be03b00d2f7-75c3afd7a50so1613099a12.2;
        Fri, 12 Jul 2024 09:46:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720802798; x=1721407598; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=78IepMnmU/3kKOZs1MFUObqCBdnDJ+SvmFkmQ0mtZdQ=;
        b=Au7Do9ZSK5Yf5nNZI4GRYOVcU2hK+n0gkuzoWKQgl0pvkgmunUZGOdx/8qSro6dqO+
         G8j3qKdquTPoKOXnpmltSF70VJC+IQJrUi1EPfMqZB71/Rf3/G+qpbFFZH9h+b7+lGpd
         SwdBNYgHbpPgi5RfNaUjb4GxTlYGsaUrBiiwowtHXvHE0dNAzn4q/rJw98H6I6Hy2QKp
         JLLrLl2TSJAZaxFOTIX4/dEyPdyBESLLDZYRMpzprn3bn7L8wihdVSZVCHb0Tlh4T3iq
         PZZhoJXcRrkmOJY9HXNCxFh+i3SkAn8qkplsRPxYY1Ge+6g7j+lvAD/RoDp0ybMrChSh
         +oyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720802798; x=1721407598;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=78IepMnmU/3kKOZs1MFUObqCBdnDJ+SvmFkmQ0mtZdQ=;
        b=L6/RXeXM1Jd8bh2lhHfmuHNoGk1mzzN1vgEFBdqM15+TO2VZ0f22lPwgGAu7gNEh2U
         1wGAvYejgxTaWE3z/cTofuJufctVpHFUwwo+7BUAkZ7DF8yCoKnGexcG/Q5Q/RfgcE3J
         9I6nWAWqtyO12epvgncek5siNoj265dUIGGO2rpcLXvOZFGLNrOgXzew1Zb1hKY5+UY3
         j2STusp+rTIxMXUBErPpkE9CJMuhymJEbN9O1c4COtZfP/nsZGP86WojIiYi9jr+cTjD
         OYsUHlFgqrZOfqouDZpVtCbYsRd+eCrvkfhdxrLKX+Cm9zdcsUbgGPqJjldSoeHQccFg
         7WpQ==
X-Forwarded-Encrypted: i=1; AJvYcCWZ4BCutDa9ikq1mu+3N7uz4nhVxmmhiIy2o/o05/mGwqbDqTXePOO1FEJNHDAYWJ9adSNnGvoshpxM41g5lQwK211vUuZPVf6HZxzKN61nOKeYe3jlvddkka0XaqlN/yFD9aIAmZwdberyIGotXArqWJpbPp9WbrA=
X-Gm-Message-State: AOJu0Yx6E++dCDZFwYDSU/X7EZUg6mezHyKaxIkmcMd47DRBWHoz+AIJ
	+PGVTgiRP4uAenlXPV6+UTlUnExKn/EDwnMDdNcf3UjPHJg4+q7O
X-Google-Smtp-Source: AGHT+IFmaeWr7wFpB8oCJawosait80Yrc0MOzrvGc/xTpX5SwheOPSjGoN3sw7j+RsF+hUMJx6wSrg==
X-Received: by 2002:a05:6a20:258f:b0:1c0:d9c9:64f9 with SMTP id adf61e73a8af0-1c298243af3mr13027593637.36.1720802798295;
        Fri, 12 Jul 2024 09:46:38 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.222])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2cacd65a663sm1765436a91.40.2024.07.12.09.46.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jul 2024 09:46:37 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Anand Moon <linux.amoon@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH-next v3 1/3] arm64: dts: rockchip: Add missing pinctrl for PCIe30x4 node
Date: Fri, 12 Jul 2024 22:15:49 +0530
Message-ID: <20240712164554.1763-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240712_094639_950826_87F974AF 
X-CRM114-Status: GOOD (  16.40  )
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

Add missing pinctrl settings for PCIe 3.0 x4 clock request and wake
signals. Each component of PCIe communication have the following control
signals: PERST, WAKE, CLKREQ, and REFCLK. These signals work to generate
high-speed signals and communicate with other PCIe devices.
Used by root complex to endpoint depending on the power state.

PERST is referred to as a fundamental reset. PERST should be held low
until all the power rails in the system and the reference clock are stable.
A transition from low to high in this signal usually indicates the
beginning of link initialization.

WAKE signal is an active-low signal that is used to return the PCIe
interface to an active state when in a low-power state.

CLKREQ signal is also an active-low signal and is used to request the
reference clock.

Rename node from 'pcie3' to 'pcie30x4' to align with schematic
nomenclature.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
V3: use pinctrl local to board
V2: Update the commit messge to describe the changs.
    use pinctl group as its pre define in pinctrl dtsi
---
 .../arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 966bbc582d89..721e87a3a464 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -338,7 +338,7 @@ &pcie30phy {
 
 &pcie3x4 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie3_rst>;
+	pinctrl-0 = <&pcie30x4_pins>;
 	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_pcie30>;
 	status = "okay";
@@ -377,14 +377,20 @@ pcie2_2_rst: pcie2-2-rst {
 		};
 	};
 
-	pcie3 {
-		pcie3_rst: pcie3-rst {
-			rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-
+	pcie30x4 {
 		pcie3_vcc3v3_en: pcie3-vcc3v3-en {
 			rockchip,pins = <1 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
+
+		pcie30x4_pins: pcie30x4-pins {
+			rockchip,pins =
+				/* PCIE30X4_CLKREQn_M1_L */
+				<4 RK_PB4 4 &pcfg_pull_up>,
+				/* PCIE30X4_PERSTn_M1_L */
+				<4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>,
+				/* PCIE30X4_WAKEn_M1_L */
+				<4 RK_PB5 4 &pcfg_pull_down>;
+		};
 	};
 
 	usb {
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

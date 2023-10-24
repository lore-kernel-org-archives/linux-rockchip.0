Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C620C00A8F
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Oct 2023 15:12:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UxkqPybayAAqF5qK2606bKUr7NLNQ0AeuGdoCM1QoOg=; b=hLC0X8X+NPqOdj
	k3gdHZnqqvM8jsrOOTKpThCsAnjG6djGLfykuyofvO8mVcsDj+Wibak1Vv1YK2zxjw+R2kWKv/vkL
	5wBsf/nlqyy81ZKH0KPzxdRFsmUAEBi7m/mgdnMqZqn5yxzeWtRufnVsCx9UixhB+Gg2kxMqN/XaX
	9PomkAXTRLubziErxD0384cNdvaRuGvfpDI/5T9p89tbE5Uowg/AC9kURkQl1ZWryLLx72VK/ToMA
	G5ihnJcDyHuhMpBzPaLUu73w2eZ7XX8+MJ5jpgATy+sYyYaoptuc3Rqx1coSwhWzTkqch2xp/v21k
	FcuNI7pncY9oTfX5XqVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvJ4j-00ADRR-1o;
	Tue, 24 Oct 2023 15:12:09 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvJ4e-00ADOe-2F;
	Tue, 24 Oct 2023 15:12:06 +0000
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2c59a4dcdacso4632731fa.1;
        Tue, 24 Oct 2023 08:12:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698160319; x=1698765119;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-signature
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ErYDPZxHlGKWRGh1uHyf/gkIgr8quGpEBSe4QaL/8Iw=;
        b=NxwV9llGRRgtJOwni0UZ5B6MqfbnjGhb4i+C7nZpCUZbVFfU2AbaSBQcb+bDsA2Vxy
         EdgAFIkcwoj/Oy2Pjf9INqUzI82lVgJAJesAeElBDPP5SAWKE1wJ9zB5NPqzq0Tk0AMT
         RovBgTMEbbhY6tntZc0M0cwGP00GIWxzhDgZZ8X3/wYRG5X+tqNhdaTyRUCllJsh8D2p
         PHg60XFVyDFtUrODiFqr5fTE3i583oHdUTFdUFR06F69mFC5vDLn4Qb+HQp14qdtLNdb
         N6pyqgtCsnV17r+YfAKvGLpVlfospmsb/c0DKduVv6pJWw76rHRxvKnXEflC65iZEWDf
         JpLw==
X-Gm-Message-State: AOJu0YyjK3G+RSw8Q/N/hkYW9OsI+yeAeXcarvsWfUT37u73aq7Wq3Cl
	5qeY09outy+t89su2ru+P1bOXSBK9aKMhA==
X-Google-Smtp-Source: AGHT+IFN6MIIlxF6ojFKfGGggJIrTn7xmWpxlNWpMM5wUt7QTLEU4nncSA6+MbmW6iphDZD/dvcaGA==
X-Received: by 2002:a05:651c:2211:b0:2c5:3139:2d04 with SMTP id y17-20020a05651c221100b002c531392d04mr9786686ljq.47.1698160319506;
        Tue, 24 Oct 2023 08:11:59 -0700 (PDT)
Received: from flawful.org (c-f5f0e255.011-101-6d6c6d3.bbcust.telenor.se. [85.226.240.245])
        by smtp.gmail.com with ESMTPSA id v1-20020a2e9f41000000b002b70a64d4desm2097562ljk.46.2023.10.24.08.11.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 08:11:59 -0700 (PDT)
Received: by flawful.org (Postfix, from userid 112)
	id 0E3B61645; Tue, 24 Oct 2023 17:11:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=flawful.org; s=mail;
	t=1698160318; bh=MJQPrt0WclUUI63J7BXde/G6Km1xt1fTunHs0Soe+Yk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=fzYLNWT3mkvx4BaQxNBvt0kd9p+zrbVIIZ2kzjgjVfb45e82b5LPvAmrFt+vop4lN
	 lex7v4a2f6Dn2kY4ZuE0yRebcjmXjx3H3YPh6sqBfnC10nRovY7prsoZE9aye23HGA
	 XQU7nvpbluYmVdyvMlxuJQx0v5yUTwuv4TJkbO7Q=
Received: from x1-carbon.lan (OpenWrt.lan [192.168.1.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by flawful.org (Postfix) with ESMTPSA id 6B53B14E3;
	Tue, 24 Oct 2023 17:10:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=flawful.org; s=mail;
	t=1698160245; bh=MJQPrt0WclUUI63J7BXde/G6Km1xt1fTunHs0Soe+Yk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=aqo6fhzQyyWCdA5YuF7vVGUiRtxAL4aDO/jIDL3qJTX9sJhZx+WVDfvQoqfYZxS0r
	 Unwk9IjPvWkP79Swc89i1BRyhJlFeLSoNB7Y+93PK/6ATRG4Xfv8DTXSGdiTsjkVdM
	 p1uJ4MiMmqOrFNeNMtjT0A1LYLHuJ+UqpmMqrslA=
From: Niklas Cassel <nks@flawful.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jagan Teki <jagan@edgeble.ai>,
	Kever Yang <kever.yang@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <niklas.cassel@wdc.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 2/4] arm64: dts: rockchip: add missing mandatory rk3588 PCIe atu property
Date: Tue, 24 Oct 2023 17:10:09 +0200
Message-ID: <20231024151014.240695-3-nks@flawful.org>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231024151014.240695-1-nks@flawful.org>
References: <20231024151014.240695-1-nks@flawful.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231024_081204_732824_553DA0A7 
X-CRM114-Status: GOOD (  14.18  )
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

From: Niklas Cassel <niklas.cassel@wdc.com>

From the snps,dw-pcie.yaml devicetree binding:
"At least DBI reg-space and peripheral devices CFG-space outbound window
are required for the normal controller work. iATU memory IO region is
also required if the space is unrolled (IP-core version >= 4.80a)."

All the PCIe controllers in rk3588 are using the iATU unroll feature,
and thus have to supply the atu property in the device tree node.

The size of the iATU region equals to:
MAX(num inbound ATU regions, num outbound ATU regions) * 0x200.

Where for each 0x200 region, the registers controlling the
IATU_REGION_OUTBOUND starts at offset 0x0, and the registers controlling
IATU_REGION_INBOUND starts at offset 0x100.

pcie3x4 and pcie3x2 have 16 ATU inbound regions, 16 ATU outbound regions,
so they have size: max(16, 16) * 0x200 = 0x2000

pcie2x1l0, pcie2x1l1, and pcie2x1l2 have 8 ATU inbound regions, 8 ATU
outbound regions, so they have size: max(8, 8) * 0x200 = 0x1000

On the rk3588 based rock-5b board:
Before this patch, dw_pcie_iatu_detect() fails to detect all iATUs:
rockchip-dw-pcie a40000000.pcie: iATU: unroll T, 8 ob, 8 ib, align 64K, limit 8G
rockchip-dw-pcie a41000000.pcie: iATU: unroll T, 8 ob, 8 ib, align 64K, limit 8G
rockchip-dw-pcie a40800000.pcie: iATU: unroll T, 8 ob, 8 ib, align 64K, limit 8G

After this patch, dw_pcie_iatu_detect() succeeds to detect all iATUs:
rockchip-dw-pcie a40000000.pcie: iATU: unroll T, 16 ob, 16 ib, align 64K, limit 8G
rockchip-dw-pcie a41000000.pcie: iATU: unroll T, 8 ob, 8 ib, align 64K, limit 8G
rockchip-dw-pcie a40800000.pcie: iATU: unroll T, 8 ob, 8 ib, align 64K, limit 8G

Fixes: 8d81b77f4c49 ("arm64: dts: rockchip: add rk3588 PCIe2 support")
Fixes: 0acf4fa7f187 ("arm64: dts: rockchip: add PCIe3 support for rk3588")
Signed-off-by: Niklas Cassel <niklas.cassel@wdc.com>
---
 arch/arm64/boot/dts/rockchip/rk3588.dtsi  | 21 ++++++++++++---------
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 14 ++++++++------
 2 files changed, 20 insertions(+), 15 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588.dtsi b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
index 5519c1430cb7..d7998a9c0c43 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
@@ -119,10 +119,11 @@ pcie3x4: pcie@fe150000 {
 		ranges = <0x01000000 0x0 0xf0100000 0x0 0xf0100000 0x0 0x00100000>,
 			 <0x02000000 0x0 0xf0200000 0x0 0xf0200000 0x0 0x00e00000>,
 			 <0x03000000 0x0 0x40000000 0x9 0x00000000 0x0 0x40000000>;
-		reg = <0xa 0x40000000 0x0 0x00400000>,
+		reg = <0xa 0x40000000 0x0 0x00300000>,
 		      <0x0 0xfe150000 0x0 0x00010000>,
-		      <0x0 0xf0000000 0x0 0x00100000>;
-		reg-names = "dbi", "apb", "config";
+		      <0x0 0xf0000000 0x0 0x00100000>,
+		      <0xa 0x40300000 0x0 0x00002000>;
+		reg-names = "dbi", "apb", "config", "atu";
 		resets = <&cru SRST_PCIE0_POWER_UP>, <&cru SRST_P_PCIE0>;
 		reset-names = "pwr", "pipe";
 		status = "disabled";
@@ -170,10 +171,11 @@ pcie3x2: pcie@fe160000 {
 		ranges = <0x01000000 0x0 0xf1100000 0x0 0xf1100000 0x0 0x00100000>,
 			 <0x02000000 0x0 0xf1200000 0x0 0xf1200000 0x0 0x00e00000>,
 			 <0x03000000 0x0 0x40000000 0x9 0x40000000 0x0 0x40000000>;
-		reg = <0xa 0x40400000 0x0 0x00400000>,
+		reg = <0xa 0x40400000 0x0 0x00300000>,
 		      <0x0 0xfe160000 0x0 0x00010000>,
-		      <0x0 0xf1000000 0x0 0x00100000>;
-		reg-names = "dbi", "apb", "config";
+		      <0x0 0xf1000000 0x0 0x00100000>,
+		      <0xa 0x40700000 0x0 0x00002000>;
+		reg-names = "dbi", "apb", "config", "atu";
 		resets = <&cru SRST_PCIE1_POWER_UP>, <&cru SRST_P_PCIE1>;
 		reset-names = "pwr", "pipe";
 		status = "disabled";
@@ -219,10 +221,11 @@ pcie2x1l0: pcie@fe170000 {
 		ranges = <0x01000000 0x0 0xf2100000 0x0 0xf2100000 0x0 0x00100000>,
 			 <0x02000000 0x0 0xf2200000 0x0 0xf2200000 0x0 0x00e00000>,
 			 <0x03000000 0x0 0x40000000 0x9 0x80000000 0x0 0x40000000>;
-		reg = <0xa 0x40800000 0x0 0x00400000>,
+		reg = <0xa 0x40800000 0x0 0x00300000>,
 		      <0x0 0xfe170000 0x0 0x00010000>,
-		      <0x0 0xf2000000 0x0 0x00100000>;
-		reg-names = "dbi", "apb", "config";
+		      <0x0 0xf2000000 0x0 0x00100000>,
+		      <0xa 0x40b00000 0x0 0x00001000>;
+		reg-names = "dbi", "apb", "config", "atu";
 		resets = <&cru SRST_PCIE2_POWER_UP>, <&cru SRST_P_PCIE2>;
 		reset-names = "pwr", "pipe";
 		#address-cells = <3>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 5544f66c6ff4..286d7b10b9dd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1259,10 +1259,11 @@ pcie2x1l1: pcie@fe180000 {
 		ranges = <0x01000000 0x0 0xf3100000 0x0 0xf3100000 0x0 0x00100000>,
 			 <0x02000000 0x0 0xf3200000 0x0 0xf3200000 0x0 0x00e00000>,
 			 <0x03000000 0x0 0x40000000 0x9 0xc0000000 0x0 0x40000000>;
-		reg = <0xa 0x40c00000 0x0 0x00400000>,
+		reg = <0xa 0x40c00000 0x0 0x00300000>,
 		      <0x0 0xfe180000 0x0 0x00010000>,
-		      <0x0 0xf3000000 0x0 0x00100000>;
-		reg-names = "dbi", "apb", "config";
+		      <0x0 0xf3000000 0x0 0x00100000>,
+		      <0xa 0x40f00000 0x0 0x00001000>;
+		reg-names = "dbi", "apb", "config", "atu";
 		resets = <&cru SRST_PCIE3_POWER_UP>, <&cru SRST_P_PCIE3>;
 		reset-names = "pwr", "pipe";
 		#address-cells = <3>;
@@ -1310,10 +1311,11 @@ pcie2x1l2: pcie@fe190000 {
 		ranges = <0x01000000 0x0 0xf4100000 0x0 0xf4100000 0x0 0x00100000>,
 			 <0x02000000 0x0 0xf4200000 0x0 0xf4200000 0x0 0x00e00000>,
 			 <0x03000000 0x0 0x40000000 0xa 0x00000000 0x0 0x40000000>;
-		reg = <0xa 0x41000000 0x0 0x00400000>,
+		reg = <0xa 0x41000000 0x0 0x00300000>,
 		      <0x0 0xfe190000 0x0 0x00010000>,
-		      <0x0 0xf4000000 0x0 0x00100000>;
-		reg-names = "dbi", "apb", "config";
+		      <0x0 0xf4000000 0x0 0x00100000>,
+		      <0xa 0x41300000 0x0 0x00001000>;
+		reg-names = "dbi", "apb", "config", "atu";
 		resets = <&cru SRST_PCIE4_POWER_UP>, <&cru SRST_P_PCIE4>;
 		reset-names = "pwr", "pipe";
 		#address-cells = <3>;
-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

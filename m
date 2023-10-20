Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18166CDB474
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Oct 2023 12:54:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UxkqPybayAAqF5qK2606bKUr7NLNQ0AeuGdoCM1QoOg=; b=4NV8LTpkOHFmf5
	oDoQuqs1+nd0PaOiQQkPmRk7RBghacah2VuV4W6C5z6d7cTCh3zp3EH5EteC1y3iI0nHmP5y6DXL+
	MYYgV4fcEk1C1hapcEacZ1ve5Y5UZdDRzyRSEAeCEAjACR0Fm14RrRCp44NJ8BQfHYgn+Loo9VTI7
	Itxqk+/5qGDTfc6Y4otH8ZwIBE1A9qYukT7945cscFV9txKeCfR1KtrOzpv7b1cCm4b8xd4Xu2wUT
	rb9Xcn5TVDSIEYea3tdAtT/xMDLWokpsDZpodT4wP3WQmPh4dMYTHhTccY3S5NZwsxFmyF/s6XG6X
	IuREcB+dhU2+A/OvtsXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtp0p-002Haf-28;
	Fri, 20 Oct 2023 12:53:59 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtp0l-002HZB-2b;
	Fri, 20 Oct 2023 12:53:58 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-507c5249d55so1060254e87.3;
        Fri, 20 Oct 2023 05:53:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697806431; x=1698411231;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-signature:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ErYDPZxHlGKWRGh1uHyf/gkIgr8quGpEBSe4QaL/8Iw=;
        b=olUcFso0UTB6P9Ef34fNq0+hkVeZMwjB0EPu5J7HyBUL1/GiFBGfG4z5b5BKok74Vs
         1AUZhe2Rse6mNdx4rGRCecvQ4NwWckBWmGGs9WoT5CRcBta8oRI+zgn1dPNDhc0MUQ4H
         LgEceC0v9437XQftZeWWrfiiqOrSR1WG94bsNgmVNgJg/mYw2xKvGOxIg92szho/w8Z+
         yCt8GVV9pdzLD+nblU1m3xVxDVsyz/cQjAPaQekn5HpzZL1HhgWxEDAnPPp1S1rtZGgT
         qlqu/7QdxAZXWME2T+Yu+B8Fc3pZOeeIwIuRqxhex5nPcVG+ozhJZ7MC7bbIXBi9tBp2
         u+CQ==
X-Gm-Message-State: AOJu0YwPofBUC2XvFQL14/5xD8nnjNKnY0MV37aIOvGghXsJotA3Y39M
	DFeEbBCQyphnQArUhGuxxQBtE1S0VchQTg==
X-Google-Smtp-Source: AGHT+IGxRo/65PQsawsVEJj7LUQGOPFV5gVJDCH92A4vykiA3Hjhz23Tv7l1Az/5zSz9gy8gY89+Zg==
X-Received: by 2002:ac2:464b:0:b0:507:b15b:8b92 with SMTP id s11-20020ac2464b000000b00507b15b8b92mr1096347lfo.59.1697806431102;
        Fri, 20 Oct 2023 05:53:51 -0700 (PDT)
Received: from flawful.org (c-f5f0e255.011-101-6d6c6d3.bbcust.telenor.se. [85.226.240.245])
        by smtp.gmail.com with ESMTPSA id d18-20020a056512369200b00501c51ab085sm349518lfs.60.2023.10.20.05.53.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Oct 2023 05:53:50 -0700 (PDT)
Received: by flawful.org (Postfix, from userid 112)
	id 8C34D12F2; Fri, 20 Oct 2023 14:53:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=flawful.org; s=mail;
	t=1697806429; bh=MJQPrt0WclUUI63J7BXde/G6Km1xt1fTunHs0Soe+Yk=;
	h=From:To:Cc:Subject:Date:From;
	b=DxoAWj8XLfP6eoU4yxNlSAjoQE2lnORm3Ik3ZqaeVtuWegmoxqjJFkTkKe4HieSEJ
	 UV3eG1uw7z8dpicshlZHPfU5OGzEWL5Ehx+RL16+BQS/zfrAJsbqD5nd3dwxFSZkQt
	 CLzYkWqtXXa7jjh40Y1TUYl5xu55aZlOFetFeUqk=
Received: from x1-carbon.lan (OpenWrt.lan [192.168.1.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by flawful.org (Postfix) with ESMTPSA id 48BA144E;
	Fri, 20 Oct 2023 14:52:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=flawful.org; s=mail;
	t=1697806392; bh=MJQPrt0WclUUI63J7BXde/G6Km1xt1fTunHs0Soe+Yk=;
	h=From:To:Cc:Subject:Date:From;
	b=fuLx0VKMQbz16SP+AZkMaHNRC8u40Ulf9WalY3uXTsUgVz0Z+VuGP+2GWmVlj03dn
	 WeSFxOR+692sFh3itlZu98RdXdz9qf6whmeI4zz9f0PSp/AtyhsHGm5V2N6InXobXP
	 eTTOeHgA/svVbfL34fMF5wmMV1zQnkihlC3JjOy0=
From: Niklas Cassel <nks@flawful.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kever Yang <kever.yang@rock-chips.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <niklas.cassel@wdc.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: add missing mandatory rk3588 PCIe atu property
Date: Fri, 20 Oct 2023 14:52:20 +0200
Message-ID: <20231020125221.3564951-1-nks@flawful.org>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231020_055356_462525_B48B82A7 
X-CRM114-Status: GOOD (  13.79  )
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

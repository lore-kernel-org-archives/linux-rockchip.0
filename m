Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D77AC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Dec 2023 08:01:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mdb6y1bitH0x/4VJ2gLNFlCNar1k+KPILsKxLoZdsL8=; b=tqcw/SFpCtmFl2
	EV2jk0orj4J7btoZkNvpNAaYM7JkiBr8AhduN4EraZDXe5GEQidMnssilchEHMII9id3X7DY5cfZI
	YnKL7DiRlL9b41/sxscukj/h8VFGwSDvBiTTnhgDZLtSdjbO6sAUV4MDc0NOrY6cPgRfTugehj40T
	2efqAlQ24z7xsKsqV4+tDohc9XhQbnHjlug6nqCOe5NvEYsEJqJe6fcoWpXexlBYafgY874j9s3jV
	d7oIBAU9WSoKIFRplcD9azCRy3pQv5QWBaX62wPWHOemahcepCtcgRyzgSu+g/sABRCVBKGwZ+O9Q
	XbginMkoQ/tYqXMJJk2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCxi8-00AzUG-2V;
	Tue, 12 Dec 2023 08:01:48 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rCxi4-00AzQK-0U;
	Tue, 12 Dec 2023 08:01:45 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1702368102;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tM/1a2VCEGvqR7jBkLRKaoNUYZw3NgudYOsE00U6y5k=;
	b=iDyiVnK/MHc4HTR28im2jZQgJeFrWv6VDnWrgeEr03NDTk6rfFn6sVGDtZnbmgXzWyXvt7
	3eX3hOd0PYHVox8YY4eWebrjHYP3JjIhfx6QR3S6eL91HZCgsCUfxnlV8aXIhgME718Aph
	uEteutaVqvQbHntOtgEfF+gXmcOmw7Yg3k5VAeoGX/QCz5z+czx5HdIf9bt6vksiiE7tp4
	GAOomcBc9VWsRsiuHg4G2APk6P1jLxzEOWBeAAN7edka4yVp2hmk9UqM13LWrzAiFScK/L
	cBdEGsZLiPSuD8WnR1k+K0ynrvGp2kVRKC94mip898+qfGjf1mLmaoflszJZTQ==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Subject: [PATCH 1/2] arm64: dts: rockchip: Add ethernet0 alias to the dts for RK3566 boards
Date: Tue, 12 Dec 2023 09:01:39 +0100
Message-Id: <d2a272e0ae0fff0adfab8bb0238243b11d348799.1702368023.git.dsimic@manjaro.org>
In-Reply-To: <cover.1702368023.git.dsimic@manjaro.org>
References: <cover.1702368023.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231212_000144_500666_DDF599B3 
X-CRM114-Status: UNSURE (   9.86  )
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

Add ethernet0 alias to the board dts files for a few supported RK3566 boards
that had it missing.  Also, remove the ethernet0 alias from one RK3566 SoM
dtsi file, which doesn't enable the GMAC, and add the ethernet0 alias back to
the dependent board dts files, which actually enable the GMAC.

Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts     | 1 +
 arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts           | 1 +
 arch/arm64/boot/dts/rockchip/rk3566-soquartz-blade.dts   | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts     | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3566-soquartz-model-a.dts | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi        | 1 -
 6 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
index 1b1c67d5b1ef..3ae24e39450a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
@@ -14,6 +14,7 @@ / {
 	compatible = "radxa,cm3-io", "radxa,cm3", "rockchip,rk3566";
 
 	aliases {
+		ethernet0 = &gmac1;
 		mmc1 = &sdmmc0;
 	};
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
index 938092fce186..63eea27293fe 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
@@ -12,6 +12,7 @@ / {
 	compatible = "firefly,rk3566-roc-pc", "rockchip,rk3566";
 
 	aliases {
+		ethernet0 = &gmac1;
 		mmc0 = &sdmmc0;
 		mmc1 = &sdhci;
 		mmc2 = &sdmmc1;
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-blade.dts b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-blade.dts
index 4e49bebf548b..fdbf1c783242 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-blade.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-blade.dts
@@ -13,6 +13,10 @@ / {
 	model = "PINE64 RK3566 SOQuartz on Blade carrier board";
 	compatible = "pine64,soquartz-blade", "pine64,soquartz", "rockchip,rk3566";
 
+	aliases {
+		ethernet0 = &gmac1;
+	};
+
 	/* labeled VCC3V0_SD in schematic to not conflict with PMIC regulator */
 	vcc3v0_sd: vcc3v0-sd-regulator {
 		compatible = "regulator-fixed";
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
index cddf6cd2fecb..6ed3fa4aee34 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
@@ -8,6 +8,10 @@ / {
 	model = "Pine64 RK3566 SoQuartz with CM4-IO Carrier Board";
 	compatible = "pine64,soquartz-cm4io", "pine64,soquartz", "rockchip,rk3566";
 
+	aliases {
+		ethernet0 = &gmac1;
+	};
+
 	/* labeled +12v in schematic */
 	vcc12v_dcin: vcc12v-dcin-regulator {
 		compatible = "regulator-fixed";
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-model-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-model-a.dts
index 2208dbfb7f0a..f2095dfa4eaf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-model-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-model-a.dts
@@ -8,6 +8,10 @@ / {
 	model = "PINE64 RK3566 SOQuartz on Model A carrier board";
 	compatible = "pine64,soquartz-model-a", "pine64,soquartz", "rockchip,rk3566";
 
+	aliases {
+		ethernet0 = &gmac1;
+	};
+
 	/* labeled DCIN_12V in schematic */
 	vcc12v_dcin: vcc12v-dcin-regulator {
 		compatible = "regulator-fixed";
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
index 63bae36b8f7e..bfb7b952f4c5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
@@ -12,7 +12,6 @@ / {
 	compatible = "pine64,soquartz", "rockchip,rk3566";
 
 	aliases {
-		ethernet0 = &gmac1;
 		mmc0 = &sdmmc0;
 		mmc1 = &sdhci;
 		mmc2 = &sdmmc1;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BB0EC10F16
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Apr 2024 00:44:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IIguYbF5cnVdKqbx1CbxlUOKhs/8Ftcf16ldFhX5v9s=; b=ahtjzpxp6GGI6r
	Guds/vh5SIYuZDlAw94rUwqqXsklFBHJH7HX+2kImVQKWOViQc2tAiHN8IJ6LFxFOd01mbtc4II/Z
	ZgOJueXTTtuNoLjzZzvTh6GzdVHAezrQVCN1PouW2M0GAcEE+eHCmit7mgMcmXFjwNjMV38TrqNPb
	4rwjhPoPD/1PVvRasF4QCI39oNjipxxin8BkVC6wzn7e3Kr41p1RhIHEQV3lJjIZrJujtpJiYhIM5
	6ZTOokHU5es0pAh1/rYNaD42GphC4In5FfThHzFR7NfrkbOdLcOraiH85k/F29qLZ49DaRQE1Sew7
	7ttF1cT9lFnbRfBKG8iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rz4GR-0000000FbPL-1I4B;
	Tue, 23 Apr 2024 00:44:03 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rz4GM-0000000FbKt-1jDq;
	Tue, 23 Apr 2024 00:44:00 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1713833030;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4TC68yymP75Ak5L5NmW4Ic8c+OFYL0ZiXlhMXToNWT0=;
	b=b5YDzs2qPHOpGi0lWbwotcXXHGEdno2XCkWbu0DdQLgiAG7C/Si7U8DsWyX3ND6MgMr+Ae
	dZKls3h11dutdJnnjNCxUgl/nr6nf7YN1T+abFqyEFBB3Q2s+N8O0DCFHrG67b5RPAd1GZ
	zgx83enO5AwUd7UcT23VyvwZxrqLeAMj7PEzGUL7luCfl9QfX+2lC8s2y3Z8oI6PJP4ByT
	nwcHUgOmBfZyC9VY5dSsV2mSEeDmtmDxJFImBMOuHm0A8GLQ9iqC8gV2YvXAs9APaGecAz
	fBJZCbNpQmvR8UvAqbpCPpfFNC80Xd1ZnSgPvNUuzWZtTtyxqA7sL4CnkZruDg==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	didi.debian@cknow.org,
	Marek Kraus <gamiee@pine64.org>
Subject: [PATCH 2/2] arm64: dts: rockchip: Correct the model names for Pine64 boards
Date: Tue, 23 Apr 2024 02:43:44 +0200
Message-Id: <06ce014a1dedff11a785fe523056b3b8ffdf21ee.1713832790.git.dsimic@manjaro.org>
In-Reply-To: <ec124dab2b1a8776aa39177ecce34babca3a50e2.1713832790.git.dsimic@manjaro.org>
References: <ec124dab2b1a8776aa39177ecce34babca3a50e2.1713832790.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_174358_954159_1F1CEA18 
X-CRM114-Status: GOOD (  10.53  )
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

Correct the model names of a few Pine64 boards and devices, according
to their official names used on the Pine64 wiki.  This ensures consistency
between the officially used names and the names in the source code.

Cc: Marek Kraus <gamiee@pine64.org>
Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---

Notes:
    This continues the model naming cleanup started with Radxa boards. [1]
    
    These improvements may cause certain issues if some scripts misuse
    /proc/device-tree/model to detect the board they're executed on.  Though,
    the right way to detect a board is to use /proc/device-tree/compatible
    instead, because its contents is part of the ABI.  Such scripts, if they
    actually exist in the field, should be improved to use the right way to
    detect the board model.
    
    [1] https://lore.kernel.org/linux-rockchip/6931289a252dc2d6c7bfd2388835c5e98ba0d8c9.1713457260.git.dsimic@manjaro.org/

 arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts    | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-soquartz-blade.dts   | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts     | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-soquartz-model-a.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts      | 2 +-
 8 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index 61f3fec5a8b1..e5709c7ee06a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -16,7 +16,7 @@
 #include "rk3399-opp.dtsi"
 
 / {
-	model = "Pine64 PinePhonePro";
+	model = "Pine64 PinePhone Pro";
 	compatible = "pine64,pinephone-pro", "rockchip,rk3399";
 	chassis-type = "handset";
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index 59843a7a199c..0b191d8462ad 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -8,7 +8,7 @@
 #include "rk3566.dtsi"
 
 / {
-	model = "Pine64 RK3566 Quartz64-A Board";
+	model = "Pine64 Quartz64 Model A";
 	compatible = "pine64,quartz64-a", "rockchip,rk3566";
 
 	aliases {
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
index 2d92713be2a0..26322a358d91 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
@@ -8,7 +8,7 @@
 #include "rk3566.dtsi"
 
 / {
-	model = "Pine64 RK3566 Quartz64-B Board";
+	model = "Pine64 Quartz64 Model B";
 	compatible = "pine64,quartz64-b", "rockchip,rk3566";
 
 	aliases {
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-blade.dts b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-blade.dts
index fdbf1c783242..fdbb4a6a19d8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-blade.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-blade.dts
@@ -10,7 +10,7 @@
 #include "rk3566-soquartz.dtsi"
 
 / {
-	model = "PINE64 RK3566 SOQuartz on Blade carrier board";
+	model = "Pine64 SOQuartz on Blade carrier board";
 	compatible = "pine64,soquartz-blade", "pine64,soquartz", "rockchip,rk3566";
 
 	aliases {
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
index 6ed3fa4aee34..2b6f0df477b6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
@@ -5,7 +5,7 @@
 #include "rk3566-soquartz.dtsi"
 
 / {
-	model = "Pine64 RK3566 SoQuartz with CM4-IO Carrier Board";
+	model = "Pine64 SOQuartz on CM4-IO carrier board";
 	compatible = "pine64,soquartz-cm4io", "pine64,soquartz", "rockchip,rk3566";
 
 	aliases {
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-model-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-model-a.dts
index f2095dfa4eaf..9a6a63277c3d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-model-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-model-a.dts
@@ -5,7 +5,7 @@
 #include "rk3566-soquartz.dtsi"
 
 / {
-	model = "PINE64 RK3566 SOQuartz on Model A carrier board";
+	model = "Pine64 SOQuartz on Model A carrier board";
 	compatible = "pine64,soquartz-model-a", "pine64,soquartz", "rockchip,rk3566";
 
 	aliases {
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
index bfb7b952f4c5..dd4e9c1893c6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
@@ -8,7 +8,7 @@
 #include "rk3566.dtsi"
 
 / {
-	model = "Pine64 RK3566 SoQuartz SOM";
+	model = "Pine64 SOQuartz system on module";
 	compatible = "pine64,soquartz", "rockchip,rk3566";
 
 	aliases {
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
index 67414d72e2b6..e1deb9c13ad0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
@@ -13,7 +13,7 @@
 #include "rk3588.dtsi"
 
 / {
-	model = "PINE64 QuartzPro64";
+	model = "Pine64 QuartzPro64";
 	compatible = "pine64,quartzpro64", "rockchip,rk3588";
 
 	aliases {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

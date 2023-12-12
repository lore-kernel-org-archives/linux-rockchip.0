Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82ADFC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Dec 2023 07:54:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z8KZwSeYdezPleQ/L/UAqATAKkjeORmSfhbdhTvYaT8=; b=ReX9Ahp2+RWvQf
	FCNd28pcIN6xJTw+qSYNY98VbjF9LpGnwYIZ/Bp6B8+G2yWhU6tOj87+O9wy9wlyj/ktH4xam/bTi
	a6KYmH8idUZElhkbGY5Oc1dLIvlSAd36OcNna8txzUqSaPldFDZvmMPDoL4r5uwdeOOaRv17+jetP
	hrbUtqlQI/NO5xYepcj9V8lGxn9sE6ENPFAcaWXMwJDMbqQaPuH2GmlEofu139Yyp6n856GEvno9Q
	k0dwXiI+h8yFp5rRPHEatQ3gmDU8ERhz4MyVdSlSaFjhmHqpxACzluyuPiKewWgK3VK38Rb97k3kR
	eagXYZyujlGlvUoWYKKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCxah-00Axjg-3C;
	Tue, 12 Dec 2023 07:54:07 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rCxac-00AxhN-24;
	Tue, 12 Dec 2023 07:54:04 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1702367636;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=p5/1ag4QGZlOFVXihLy+IHgakjahzXcUBXT7rx+5BHA=;
	b=yfRsNPYJVE3lzFnNXtBSN8+BZ42R5enkWawK/0JJkFgfkWoxnvDTeGIXHMAkU02jN37A6x
	atcnX5OXJiA4o2A60iDaL3Faye6wy3Eywjwe0UxqMYcRM8pozMuWmZGgaNdfyiwRvqIJ8m
	d6q+EJBvr1Di9qtf+IAp2ninirZYU5kq863PjAcYKabmGXSUG9xwjMeJ8uVLfLuwMvz5Aq
	oHmVgYZTOacH8zAL20irwIhQ7Z5ejwJiWpyBSJgZwv7+THiz83SiFmIpOIqc1ALg997nl1
	f9Q80S8PwymA259Sm5qf4VvSLQVo0ZB/5Ied4mgONpWrOuZBFC1XcyMC874Oiw==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Subject: [PATCH 4/4] arm64: dts: rockchip: Remove ethernet0 alias from the SoC dtsi for PX30
Date: Tue, 12 Dec 2023 08:53:51 +0100
Message-Id: <0d9da8959b4f567622676c34b5feb74c49489554.1702366958.git.dsimic@manjaro.org>
In-Reply-To: <cover.1702366958.git.dsimic@manjaro.org>
References: <cover.1702366958.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231211_235403_196441_92D79185 
X-CRM114-Status: GOOD (  10.13  )
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

Not all supported boards actually use the PX30's built-in (G)MAC, while the
SoC TRM and the datasheet don't define some standard numbering in this case.
Thus, remove the ethernet0 alias from the PX30 SoC dtsi file, and add the same
alias back to the appropriate board dts(i) files.

This is quite similar to the already performed migration of the mmcX aliases
from the Rockchip SoC dtsi files to the board dts(i) files.

Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi | 1 +
 arch/arm64/boot/dts/rockchip/px30-evb.dts             | 1 +
 arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts | 1 +
 arch/arm64/boot/dts/rockchip/px30.dtsi                | 1 -
 4 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi b/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
index 3429e124d95a..5b4e22385165 100644
--- a/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
@@ -7,6 +7,7 @@
 
 / {
 	aliases {
+		ethernet0 = &gmac;
 		mmc1 = &sdmmc;
 		mmc2 = &sdio;
 	};
diff --git a/arch/arm64/boot/dts/rockchip/px30-evb.dts b/arch/arm64/boot/dts/rockchip/px30-evb.dts
index c1bbd555f5f5..0a90a88fc664 100644
--- a/arch/arm64/boot/dts/rockchip/px30-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-evb.dts
@@ -14,6 +14,7 @@ / {
 	compatible = "rockchip,px30-evb", "rockchip,px30";
 
 	aliases {
+		ethernet0 = &gmac;
 		mmc0 = &sdmmc;
 		mmc1 = &sdio;
 		mmc2 = &emmc;
diff --git a/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts b/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts
index 7d4c5324c61b..16798eb77077 100644
--- a/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts
@@ -13,6 +13,7 @@ / {
 	compatible = "tsd,px30-ringneck-haikou", "rockchip,px30";
 
 	aliases {
+		ethernet0 = &gmac;
 		mmc2 = &sdmmc;
 	};
 
diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 42ce78beb413..d0905515399b 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -20,7 +20,6 @@ / {
 	#size-cells = <2>;
 
 	aliases {
-		ethernet0 = &gmac;
 		i2c0 = &i2c0;
 		i2c1 = &i2c1;
 		i2c2 = &i2c2;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

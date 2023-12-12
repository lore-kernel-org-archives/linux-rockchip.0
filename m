Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07A5AC4167D
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Dec 2023 07:54:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ad09zr3ENtfjDnv4wZcHn/ioPJviyZ/HV6bQon70iUM=; b=TG2dDZM/DvW4my
	BX3ggCkgC5Pv7hvFm5vuiB++iaugMBpzEphdjcQnOciBvYbISWDb5GjvtvT6PeV4wcuaq5dryhCJQ
	OkGRE3ppzHAA4wAe2yKSwtVutQzNdZUW1oXjcP88rrcYtkPVmX05pXOfMadnApVktRs8gf2HaT6Fy
	m0XLBX4DPMjhjGfY0Cdp8efTLW9tNTEHPieAMJpWjVIBluYgzcXU/aqki2HPlqGWSnN128DczEfcC
	a0B+qXTbZuuetf7NGN77Izk4kxsjVWM8pU00aBKHTJkATZfgX3SgkEEL4/4CNhop6HVdGi1rjlqF0
	X12OIJjXa1EgWYB3gL/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCxar-00Axpr-0w;
	Tue, 12 Dec 2023 07:54:17 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rCxac-00AxhL-21;
	Tue, 12 Dec 2023 07:54:06 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1702367635;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=if0Wn/NgDHdBsnjuuIuPaBN8jRbQmwwaCIX7E2lyzW8=;
	b=VF1yy9nbmqTMlxJvJi6FLkde0x+e+COmPS6VzdJ/aDbzFr4sdJ0WQj5Zpz3m5GTKLrC9IK
	Dk0Y0IJevgHUdzs6IuM1iJxN7UFhJkyaNSN9Aa7QFl0wOZTaf/STr8TOF54THYSsGbdCOP
	z4wFWPFhy4mjZ6MzG3HrFugkiysuYZ1xpgnxrE5s7Rv3u8gtFT3BCln9oqZ/zO8QzxHIzG
	6BSunKcllYu8okfysU631WwLD8SvwzLTq9zsb42/XH51AkEG/+wL3GjWvUsC1yJSExqiK/
	xt/dJOl4uJW1w/RHMyqJJP+S+qX7/3151gRSelTxUXkWLRPyTdEvZ87Ns/eKDg==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Subject: [PATCH 2/4] arm64: dts: rockchip: Remove ethernet0 alias from the SoC dtsi for RK3368
Date: Tue, 12 Dec 2023 08:53:49 +0100
Message-Id: <77115184d633190c917d868f883070e100d93dbc.1702366958.git.dsimic@manjaro.org>
In-Reply-To: <cover.1702366958.git.dsimic@manjaro.org>
References: <cover.1702366958.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231211_235403_206632_C5EB28B0 
X-CRM114-Status: UNSURE (   9.56  )
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

Not all supported boards actually use the RK3368's built-in GMAC, while the
SoC TRM and the datasheet don't define some standard numbering in this case.
Thus, remove the ethernet0 alias from the RK3368 SoC dtsi file, and add the
same alias back to the appropriate board dts(i) files.

This is quite similar to the already performed migration of the mmcX aliases
from the Rockchip SoC dtsi files to the board dts(i) files.

Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi           | 1 +
 arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts        | 1 +
 arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi          | 1 +
 arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts | 1 +
 arch/arm64/boot/dts/rockchip/rk3368-r88.dts            | 1 +
 arch/arm64/boot/dts/rockchip/rk3368.dtsi               | 1 -
 6 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi b/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi
index e47d1398aeca..b48b98c13705 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi
@@ -9,6 +9,7 @@
 
 / {
 	aliases {
+		ethernet0 = &gmac;
 		mmc0 = &emmc;
 	};
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts b/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
index be06e6e64d18..029b8e22e709 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
@@ -12,6 +12,7 @@ / {
 	compatible = "geekbuying,geekbox", "rockchip,rk3368";
 
 	aliases {
+		ethernet0 = &gmac;
 		mmc0 = &emmc;
 	};
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi b/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
index 5753e57fd716..8ac8acf4082d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
@@ -8,6 +8,7 @@
 
 / {
 	aliases {
+		ethernet0 = &gmac;
 		mmc0 = &emmc;
 	};
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts b/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
index 81d1064fdb21..dcee2e28916f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
@@ -12,6 +12,7 @@ / {
 	compatible = "tronsmart,orion-r68-meta", "rockchip,rk3368";
 
 	aliases {
+		ethernet0 = &gmac;
 		mmc0 = &sdmmc;
 		mmc1 = &emmc;
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-r88.dts b/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
index 5589f3db6b36..b16b7ca02379 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
@@ -12,6 +12,7 @@ / {
 	compatible = "rockchip,r88", "rockchip,rk3368";
 
 	aliases {
+		ethernet0 = &gmac;
 		mmc0 = &sdio0;
 		mmc1 = &emmc;
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index a4c5aaf1f457..7b8c416aa890 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -19,7 +19,6 @@ / {
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

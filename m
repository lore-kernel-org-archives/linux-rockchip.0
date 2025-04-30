Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC7CCC369D9
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Apr 2025 16:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gSwk+PXfIJJwJMWpBuqDuDcWFcQOOiFPg3B3jvUaxV8=; b=A7f5vyJAGnkob9
	6iJqI+JeuatMRJQ2i1qx7ciizh+mPsixx1wu7ARYFfCggtjZPjGj2jBHyCsdKZyj1MPNL31lnOHcW
	PVjie5IvG1v3/AXAn4xIPpd6focrpasW97BnVxT3UVfAFGq8jQGKVrv0RuFKVyPhWhCeC+CUWPsOE
	KHUIND4CMUjAbT6HznTBIk0MIBeMqBi72j5oeYy8WwaV0Y6hnw599g+4RUF6mUF4Mns1lhesoqkps
	Y3Ii8OrxugMcPFjGaZQybNhTHyiI9oucWUeW18fMYnHy/CuvVJrjMxFsrKa0DrM58wEkYUaTAj8y2
	WQjZHLZrEznl91rsNvNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAAGJ-0000000DQp4-23fr;
	Wed, 30 Apr 2025 16:26:19 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAA7y-0000000DPL5-0ZKm;
	Wed, 30 Apr 2025 16:17:43 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1746029822; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=f+93AWjXW5VDIYoO0E8YkXtcP4BNlDbolM9nmkTGiVwL68mOHaRgl7DboLKuv8bcPK2Jcd0AhTUZdwV4/AlzQU0nIsNqhKQkkyzVd1mY+jqabGVhjRmAVPJjxdjoUMi6+b5Xl42lVoayoktTy6+RSqtvNevw5YTaBaynbP9Quh0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1746029822; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=PqaMC8w6qtB1n0xipg6hxZmuKd9Q6kyn2/VlH0Aqgtg=; 
	b=f4aEIU8IMcZFVD8SF9NY5xKGsw4lA1Q7usyi756Q5oMolxZS3oLCIEXM9e30A1AK3WlJu5Hm0fGEK+XXy9BIDVG4OuismmG50gxuQXC079FRnYC0IAfrrCaMYlEi6XxSVeFT8u5U95wHFGYy9oWu2xN7PvrGgpkd0R7z11oqU3c=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1746029822;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=PqaMC8w6qtB1n0xipg6hxZmuKd9Q6kyn2/VlH0Aqgtg=;
	b=Z9TRme2wLZNYuuNwMyq+DF6xQHWyn8Ly6bn2n+YAwblU1fFtJasEEs8LqT2GeuOb
	ST6jMaIKHJj2rzuzlNfMDRZE0xSG1xGpPEXvaXoGeBj27ksCPZ7k2GXLQ7f32UWjQ4Q
	kZKtbcPHXyURRbSLwCAsr24jyM3Vx5FPpiopDfXs=
Received: by mx.zohomail.com with SMTPS id 1746029821190216.44843874019614;
	Wed, 30 Apr 2025 09:17:01 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Wed, 30 Apr 2025 18:16:36 +0200
Subject: [PATCH 3/3] arm64: dts: rockchip: add RK3576 RNG node
MIME-Version: 1.0
Message-Id: <20250430-rk3576-hwrng-v1-3-480c15b5843e@collabora.com>
References: <20250430-rk3576-hwrng-v1-0-480c15b5843e@collabora.com>
In-Reply-To: <20250430-rk3576-hwrng-v1-0-480c15b5843e@collabora.com>
To: Daniel Golle <daniel@makrotopia.org>, 
 Aurelien Jarno <aurelien@aurel32.net>, Olivia Mackall <olivia@selenic.com>, 
 Herbert Xu <herbert@gondor.apana.org.au>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Jonas Karlman <jonas@kwiboo.se>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250430_091742_238911_62F7E6AC 
X-CRM114-Status: UNSURE (   9.82  )
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
Cc: devicetree@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-crypto@vger.kernel.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The RK3576 has a hardware random number generator IP built into the SoC.

Add it to the SoC's .dtsi, now that there's a binding and driver for it.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index a6bfef82d50bc9b0203a04324d61e0f232b61a65..ce8bcab215c0e6b7786ab3baae6977072497ed2f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -1527,6 +1527,14 @@ sfc0: spi@2a340000 {
 			status = "disabled";
 		};
 
+		rng: rng@2a410000 {
+			compatible = "rockchip,rk3576-rng";
+			reg = <0x0 0x2a410000 0x0 0x200>;
+			clocks = <&cru HCLK_TRNG_NS>;
+			interrupts = <GIC_SPI 181 IRQ_TYPE_LEVEL_HIGH>;
+			resets = <&cru SRST_H_TRNG_NS>;
+		};
+
 		otp: otp@2a580000 {
 			compatible = "rockchip,rk3576-otp";
 			reg = <0x0 0x2a580000 0x0 0x400>;

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

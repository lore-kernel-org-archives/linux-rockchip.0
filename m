Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B823CA101A
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Aug 2024 20:41:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aPqKK5rkteSHwZWd2dCL165l599kxZ5+Sk4/5fezJaw=; b=ELsXin7Ch0zGZG
	qsB0tdEHuM00nkWd3IFv4j650O2/BGxMIyzxvnyjoh5yZhVgiCR1QL0TN+TlQsWZnRTf8vAbhq9yP
	GuUm38hDzAa6n9qsWLujBBRSCOO7rSuG8iwq1C+e34gbAml3WdfzP5A2nzgXHKjzTWEuz8jxQDI1J
	hPoRgB+VfaeL4vXhZUOQsbnsQdGapSrBsjtMYtd0VHwNBhA8GFHk3ruxOX4/jKPj8yX+hZ6vUrwKe
	END1Fj4R0IwXjkR2bg8igEceWMEMRxxNfB6Sk1BSYrw8F0pC3MAZRww1NvEyy6HZZR6GUmW5kVRgJ
	PsRapnVSIZ8XmeFpD0gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk8Qn-00000007dii-1gTC;
	Fri, 30 Aug 2024 20:41:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk8OF-00000007d5f-3Xue;
	Fri, 30 Aug 2024 20:38:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=8DvzeP3tqcbLB2wXKxIBy3jnG0TMddl3cDp0QaYPiaA=; b=XsLRjzgJGXMEb/+z2CZiqfDC5s
	ZVXzq9qA2vSVzHcgB35kYMMblQTLASvgw24SRLagmYMRxwazFCeZ4b6jIW6UH0dtKpkHfVFsl1PvZ
	ncyW8Yrqc1AJ9C/4TJ6b1bURrfmh+1akLneCEpkteUQDSwHRLnd2wzzQpJFdQ9D5btqQZWMK8+cxq
	J6DOipQCQ4jn5175KFC7D+bfPNB4m43x8G8hJlPX/GEwJz2N/z5PADoK4lweC1+okbiPTlLtfOVzZ
	hGFL762NNbl/erFmtDYphDRkhqvxWUCKNqqcl5aAyHpRVFQS4MtRyZvrCDH9NV4iIfkLR65SLJBVf
	F2ECCFlA==;
Received: from i5e861921.versanet.de ([94.134.25.33] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sk8OB-0006ey-6A; Fri, 30 Aug 2024 22:38:35 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: lgirdwood@gmail.com,
	broonie@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	marcin.juszkiewicz@linaro.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 3/3] arm64: dts: rockchip: drop hp-pin-name property from audio card on nanopc-t6
Date: Fri, 30 Aug 2024 22:38:19 +0200
Message-ID: <20240830203819.1972536-4-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240830203819.1972536-1-heiko@sntech.de>
References: <20240830203819.1972536-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_133839_902274_2FA3A8C1 
X-CRM114-Status: GOOD (  11.52  )
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

The audio-card contains a hp-pin-name property that is not part of the
binding, and its contents also are just a "Headphones" string.

So that property also does not fullfill any specific use, therefore
just drop it.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
index d035a44e5b20..fc131789b4c3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
@@ -76,7 +76,6 @@ sound {
 		simple-audio-card,mclk-fs = <256>;
 
 		simple-audio-card,hp-det-gpio = <&gpio1 RK_PC4 GPIO_ACTIVE_LOW>;
-		simple-audio-card,hp-pin-name = "Headphones";
 
 		simple-audio-card,widgets =
 			"Headphone", "Headphones",
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

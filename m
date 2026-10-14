Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D019C3DA7A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2026 16:35:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LYL0+XYuaN8hD8wO+pnEZSFZlNxo8GJjaF956ZY3O/Q=; b=luWUUX8KMQqNId
	13cENhjdLHkJFnE1fnJU8KnyrG6zKKLPplsscK4GokbI5P/CElZWLDqj7vptmJZQpOiB2Nc29FEXN
	F1A+00Ijf+IHp4d+IDoRX1gsRRN5YRYrLoNCSFa7D+mTgJ+4p4gpbsVi/ZnItPDm6+Lw6m0rxsTAY
	Kvs+/lZNjB9zHSCcM7KUbWvSnf1sGXmqmVu9qCEfGja/jl35+YPMQHYFoxrga+xhnSLwXnvcKjyK7
	TaWgEAnyj1ecQ0Cadk8aL67J4DPmezbe1oSWuBiOQ75BJGyGgTPv/AwJordVTSXcPUH8rR5SMOOpq
	bSz5T97GQniooT3xJR3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xH1wH-0000000FzAT-1zDH;
	Wed, 14 Oct 2026 16:34:49 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xH1wF-0000000Fz70-1MEP;
	Wed, 14 Oct 2026 16:34:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id AF41D43D61;
	Wed, 14 Oct 2026 16:34:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86AC1C2BCFD;
	Wed, 14 Oct 2026 16:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791995686;
	bh=e8rMZVE3Hk775NxesQzgW+3PXKTFyUNToxKWcBLcdF8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=MBlGeYNVIQgpLdRiQPLaIMmCMRLCexPNwn2DOk26KeTeEOkoL7QfuFg760eZr/JIq
	 gZY2fDILXQ7X3/Mgk1oWNCxrsKmpSR+VtbNclsHDXad8DC3GcLJp95muw9ZBoLLE8R
	 +MXJ+rK6Mpjl57j8U9atmwgtQEMZGyEsN/Uwjs9DrpxB3ZHoLZiFxeKbTTTPkqXjhq
	 qX7i2aLAiOKN6UUE0aDnzcD4Ep8tDOGbqT0EWS/rdqrbP3F6mHm8v/kpCxO0QDvmCq
	 QlRPUyQl3P4naR9iTzqj4+/ExnKXvF8jw+1qi1KqbEllwo9o1GSGDPZ3fPfS7/18js
	 36DyanSc8wmGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 635DFCC6B29;
	Wed, 14 Oct 2026 16:34:46 +0000 (UTC)
From: Joachim Eastwood via B4 Relay <devnull+joachim.eastwood.gmail.com@kernel.org>
Date: Wed, 14 Oct 2026 18:33:02 +0200
Subject: [PATCH 2/9] arm64: dts: rockchip: rk3588s-nanopi: enable mmc-hs400
 and add supplies
MIME-Version: 1.0
Message-Id: <20261014-nanopi-m6-improvements-v1-2-e713f71eb4d3@gmail.com>
References: <20261014-nanopi-m6-improvements-v1-0-e713f71eb4d3@gmail.com>
In-Reply-To: <20261014-nanopi-m6-improvements-v1-0-e713f71eb4d3@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Diederik de Haas <diederik@cknow-tech.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Joachim Eastwood <joachim.eastwood@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1791995685; l=829;
 i=joachim.eastwood@gmail.com; s=20260701; h=from:subject:message-id;
 bh=VE54I6DLOZ7xz7Z1AlY0TEKLCJ6TB2BmQB8DBGvEYKc=;
 b=85xFApN3E8VWMpqzu+YBwEcK9UJkEbqhZr3q4PIxJnwDmASdeSIqMdS2PvzHIbkqQpk4gkEJv
 vr5NzyioSxQDmik7i32Obm3Bz4UzWOBAzhHVMFxlvPovbq22pt9i1en
X-Developer-Key: i=joachim.eastwood@gmail.com; a=ed25519;
 pk=ZN/8xWtdYaSd5oEfloYSZ1a+/ri0n0VZqjlEeHlbXFU=
X-Endpoint-Received: by B4 Relay for joachim.eastwood@gmail.com/20260701
 with auth_id=846
X-Original-From: Joachim Eastwood <joachim.eastwood@gmail.com>
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
Reply-To: joachim.eastwood@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Joachim Eastwood <joachim.eastwood@gmail.com>

The NanoPi 6 series all support eMMC 5.1 HS400 mode. This also matches
the vendor device tree. Also add power supplies while at it.

Signed-off-by: Joachim Eastwood <joachim.eastwood@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi
index 8c36268e9876..8c77ee71ebf8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi
@@ -390,7 +390,10 @@ &sdhci {
 	no-sdio;
 	no-sd;
 	non-removable;
-	mmc-hs200-1_8v;
+	mmc-hs400-1_8v;
+	mmc-hs400-enhanced-strobe;
+	vmmc-supply = <&vcc_3v3_s3>;
+	vqmmc-supply = <&vcc_1v8_s3>;
 	status = "okay";
 };
 

-- 
2.56.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

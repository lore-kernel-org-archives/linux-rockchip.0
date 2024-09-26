Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C45B6CCF9E9
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Sep 2024 10:29:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ptk7rKjmKDm52C1H4Vmbb3RHd4VTRcAaK27c6taBIMU=; b=y8ZAi+sLlLFixB
	w34es5OMBLfThAvWdPTZ8u/zu+rEY0mQhovybjis+A9s6xD9LkMr1e7qX3+LSiKrWNkoUng8uHniY
	ofIAxQwEctAgb1IQQJQB+jWXVS3t/vpCKRaL5YV4loLVq+h291p3seENNBkVA8cjXXpOql33f27X8
	yO05c2SGOJ34cxTR520oIkMp+XiTlOBFiTj5d1NgDvfkFLgB/4bpZ5+b2zusqw/x6ZVFWxekzR9h2
	otxUw0uhDqp6eIBmvno3j2Et4WhUh9D3xrjw5ibXGHtQ76XQTMY6yLhTk4g0qcFdMgYlcQU8JgYUy
	hxdNfZ5/j08Hxo1tgiDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stlkh-000000084AA-2p5Q;
	Thu, 26 Sep 2024 10:29:39 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stlkT-0000000847O-1xY0;
	Thu, 26 Sep 2024 10:29:27 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1727346563;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=J/F/BWtIgPoFAzYVwIzm5Lu7wG59Hvzk3WZJccbkqXw=;
	b=ta0WoAD9Fu40CndxyRcJmvjEFGDADzRsqMlFOSc0kMfuBK3PCnEMoBApTXuEQZkBvv9e83
	Mdh29pDRShfAw36+tw/Ta26i8POHCA6hqUL015kz5gUiJA/Qq/stTxDsuC1lUzXP3Y4Q1K
	uNLMNQBsOaFg8hY+lZ0Vs2oF36R8CQt9S/eGxu20moqXsjh1HEzPM9dJAq5bRXaJ/EhU6Y
	XDVpsLUxu4iXYZpQdCDjq9NZGrbmNAbQ75uBEbVLeyiMQut5FPhByWKezxC9G2RuIPqT89
	zv39XrECl3UkHnW0Ir9fKw6H4CjSrweXkcY5NkFOf0d8+VUg7px/46RvF2A4ZA==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH] arm64: dts: rockchip: Move L3 cache outside CPUs in RK3588(S) SoC dtsi
Date: Thu, 26 Sep 2024 12:29:13 +0200
Message-Id: <84264d0713fb51ae2b9b731e28fc14681beea853.1727345965.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_032925_679942_CAEDF5BB 
X-CRM114-Status: GOOD (  11.13  )
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

Move the "l3_cache" node outside the "cpus" node in the base dtsi file for
Rockchip RK3588(S) SoCs.  The A55 and A76 CPU cores in these SoCs belong to
the ARM DynamIQ IP core lineup, which places the L3 cache outside the CPUs
and into the DynamIQ Shared Unit (DSU). [1]  Thus, moving the L3 cache DT
node one level higher in the DT improves the way the physical topology of
the RK3588(S) SoCs is represented in the SoC dtsi files.

While there, add a comment that explains it briefly, to save curious readers
from the need to reference the repository log for a clarification.

[1] ARM DynamIQ Shared Unit revision r4p0 TRM, version 0400-02

Fixes: c9211fa2602b ("arm64: dts: rockchip: Add base DT for rk3588 SoC")
Helped-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---

Notes:
    See also a related discussion [2] that initiated this patch.
    
    [2] https://lore.kernel.org/linux-rockchip/2aa03ce3-1cca-4b3a-935d-6b1b68ebbb6e@arm.com/T/#u

 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 20 +++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index b6e4df180f0b..48a79b4b1b6e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -337,15 +337,19 @@ l2_cache_b3: l2-cache-b3 {
 			cache-unified;
 			next-level-cache = <&l3_cache>;
 		};
+	};
 
-		l3_cache: l3-cache {
-			compatible = "cache";
-			cache-size = <3145728>;
-			cache-line-size = <64>;
-			cache-sets = <4096>;
-			cache-level = <3>;
-			cache-unified;
-		};
+	/*
+	 * The L3 cache belongs to the DynamIQ Shared Unit (DSU),
+	 * so it's represented here, outside the "cpus" node
+	 */
+	l3_cache: l3-cache {
+		compatible = "cache";
+		cache-size = <3145728>;
+		cache-line-size = <64>;
+		cache-sets = <4096>;
+		cache-level = <3>;
+		cache-unified;
 	};
 
 	display_subsystem: display-subsystem {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

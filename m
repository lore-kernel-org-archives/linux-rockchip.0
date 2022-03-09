Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 714CDC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Mar 2022 16:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RPmcfuG9iw5VRO6NiUlLmOiTsjRHkhR1PkIKXV7Ce6s=; b=QSjF/jxZsi21M3
	QLMVx+1NGX7xQtJOJndfgSydzgAtnJfLRczYOH7HQbVTq171D67lhnL13ivCwsNTUdfkcTzAUrbSr
	5SRsHIsMa19YlebZAgn43AKN74miq4hRu7+jig3O6MFOJQPRcjxhyQHN/8Wn8gF5o/ge23mmLaND1
	fEurkmmKYaljJrRzoRRreZm9J/ls2APjco1+HD30GFww0ycT8pc/dsjZfLKbV1FtZmaUMeEk/TpLU
	ffBqwRw+Sa6rR/1vDvfPzYQcG15ek0GpedXeORkRtebmeh1OntjRutPnLQaoKCtDdM30aCDJ3oLOm
	Vrs4z6wrHMLosSmfXoKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRz3e-009Loy-2B; Wed, 09 Mar 2022 16:21:02 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRz0w-009KO1-HH; Wed, 09 Mar 2022 16:18:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 16CC9B82206;
 Wed,  9 Mar 2022 16:18:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2906EC340E8;
 Wed,  9 Mar 2022 16:18:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646842691;
 bh=hBO+Z4ugMvpVWK+SiJzxvBOYoKrrv4UqPCDWbEkNog4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=m8LHmJx/KkcmLxnooNtPQA5l6RGHDpFP3/+Fny+YQyVZeUPmfLJpqJy/ssepCZElD
 jWvTI2PWaGcKzfghEtsp6TcaRP2SoN654VW077bC7n7p5w5jpJWDveFoyzcvqR3Xsv
 jkEbwuVlyzGtoBnYT3vpHYKziXEJDCJ0uqf+BsO14nqVPl4UYZDE/1kBy1ZfRryy7x
 iE4QhzUmLgzBX4CxSEDYaOI4Tt9SCxVSpMZ/YYJlIJBtrWUoOtkK+RLgmXaUku1+wa
 sCPGQB1u1R3iL5ufBX4O0TkU0ZhOo7mbAadpFs/DxRwwZXZCheyI9NmcZg5lf4LYOo
 zyTiE++S/kcXw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Corentin Labbe <clabbe@baylibre.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>, Sasha Levin <sashal@kernel.org>,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH AUTOSEL 5.16 10/27] ARM: dts: rockchip: fix a typo on rk3288
 crypto-controller
Date: Wed,  9 Mar 2022 11:16:47 -0500
Message-Id: <20220309161711.135679-10-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220309161711.135679-1-sashal@kernel.org>
References: <20220309161711.135679-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220309_081814_761610_C1AC730A 
X-CRM114-Status: GOOD (  12.74  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

From: Corentin Labbe <clabbe@baylibre.com>

[ Upstream commit 3916c3619599a3970d3e6f98fb430b7c46266ada ]

crypto-controller had a typo, fix it.
In the same time, rename it to just crypto

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Link: https://lore.kernel.org/r/20220209120355.1985707-1-clabbe@baylibre.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/rk3288.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index aaaa61875701..45a9d9b908d2 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -971,7 +971,7 @@ i2s: i2s@ff890000 {
 		status = "disabled";
 	};
 
-	crypto: cypto-controller@ff8a0000 {
+	crypto: crypto@ff8a0000 {
 		compatible = "rockchip,rk3288-crypto";
 		reg = <0x0 0xff8a0000 0x0 0x4000>;
 		interrupts = <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

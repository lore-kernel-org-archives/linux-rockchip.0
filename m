Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84DF5C6379F
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Feb 2023 20:49:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QunzPtmpr8VLmLW2gawEzu4r4ZewuXGfXULml44PN88=; b=K55MBG0nCptAd5
	XOlRGKRRb5R8wZlSefyZUrbz424DSnfjratJr/IEKjhIogxAevAKhTgNAbztd+GUKD5cV4s2ymA2Z
	MOCcJb+hYWmvCEFC8r0e62GDUL1YfD7P39LrVXWj9Xp8HmTaIqILxzM3fSVkRkxIcEsxNx4Y6ueRm
	b7nAZeoP2o5eR5YFIGj/EY2s408eyzZZTnUl5ab2h+k8/OEd4FYeUBHW72rmoggkAkUhxMhownaex
	861AuCrukzZ/Qb0ZdrqolEhY0LdJhsDB88hu5ettaAnKTaw5z+K53I9wIYFKNfJWOqduvVLf3w0i+
	4PTzE6x3YV74uJnsc1jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSOhv-007EXF-1U; Wed, 15 Feb 2023 20:48:51 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSOfO-007Cw6-FD; Wed, 15 Feb 2023 20:46:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E9BD961D92;
	Wed, 15 Feb 2023 20:46:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E932BC433D2;
	Wed, 15 Feb 2023 20:46:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676493973;
	bh=VtfQylg4Sji3mmCW+kI8RMSb3CPJyWuTWEmqD+l2E6o=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=YNUliMIqgJgbZQaPGCwJMs5Pg1E11b9vTpU4hNCK8Ib8YJMXJK8jyKY8/Lyea0oVs
	 V5tC5HtZcJ/AGwSAW5IG8nb98Ry3ZHq0PAVmIgmmiLc628MWk0cE7Soh0ft/Nt3H5C
	 Z1ZPRgOhuOMSFogKTGDBWeVMxi+rol8AFR9jWr8sjoNAShnXM47jvhfOzci7EF3uQw
	 NPu01ALLatlPISYktV4+kzUr6084DHKuncVdLevLIU56aAVdfxF+983Cv8V/JRqtCd
	 DQuYpFRYM2J8QhBRimAocVSZFMAgvJCyEkjhZNldnFlasn5CNfLrgShwew2VoCe9Zo
	 z6Fg5l/OqvwoQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	enric.balletbo@collabora.com,
	hl@rock-chips.com,
	gael.portay@collabora.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 6.1 12/24] arm64: dts: rockchip: align rk3399 DMC OPP table with bindings
Date: Wed, 15 Feb 2023 15:45:35 -0500
Message-Id: <20230215204547.2760761-12-sashal@kernel.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230215204547.2760761-1-sashal@kernel.org>
References: <20230215204547.2760761-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230215_124614_614766_DEFAD134 
X-CRM114-Status: GOOD (  11.78  )
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

From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

[ Upstream commit b67b09733d8a41eec33d5d37be2f8cff8af82a5e ]

Bindings expect certain pattern for OPP table node name and underscores
are not allowed:

  rk3399-rock-pi-4a-plus.dtb: dmc_opp_table: $nodename:0: 'dmc_opp_table' does not match '^opp-table(-[a-z0-9]+)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Link: https://lore.kernel.org/r/20230119124631.91080-1-krzysztof.kozlowski@linaro.org
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-op1-opp.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-op1-opp.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-op1-opp.dtsi
index 6e29e74f6fc68..783120e9cebeb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-op1-opp.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-op1-opp.dtsi
@@ -111,7 +111,7 @@ opp05 {
 		};
 	};
 
-	dmc_opp_table: dmc_opp_table {
+	dmc_opp_table: opp-table-3 {
 		compatible = "operating-points-v2";
 
 		opp00 {
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

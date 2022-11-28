Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D778EC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Nov 2022 18:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/F/7iw8O3++Vkpts1fMAbcS3WVNv0KNMoNvovGrjSiw=; b=TkgDf8Q6dPrCU4
	4MUGa1+XRvC9l7/B1gcdg+2JuVjTqnTiDXCnnXs0+AzgVlr9PWCxxeCkJOSewEvHODafc6CS+2jt7
	1U84lLVcXoOG2TznbljCV0W1+PtfgufyIr035tbW1NMhdgVMZ7uOsaOmMtsJgWRBuB9mdACVFXhTh
	5TY2N8RVUfsIKkdPl1jetIBs0JaGzhMgkFyhEZlgfPhhnlLMwXhCIfGaaShYLglv33mpEpJ93oUDR
	zbSFNNQlxLDjtSf1WAWQkQhzRtRy5WF1Dw2Tv3vyb9/C5Qb6uuq0PkdNMdNzi1wGSmQYeyKfD5Hvv
	NEng7T4Ru9mHeiAgbKZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oziVC-003NRc-PY; Mon, 28 Nov 2022 18:05:10 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozi8H-003ASI-L1; Mon, 28 Nov 2022 17:41:31 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2C01661302;
	Mon, 28 Nov 2022 17:41:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A05C4C433C1;
	Mon, 28 Nov 2022 17:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669657288;
	bh=rRGuzRWnhQmPmq8RxDtQ+OpMQdJkplrn06RXcEDYBPY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=PQxHigfUW5jpir8/jBFxNOYLSRAOmhN2RFBnkp/Q4TCdyRSuLV22tWVCeEcEITaiU
	 ha/bwMCFP78OJqqb5gup1eKsENZ6fx6SfY1iMe7qurjfEqAltv82/79gmYfRKp1+74
	 pTD25kUPqy8qkcQND5VfNWYug82SF8LDqIys8/7wwsXGMlS3hJfzkotjTQpGhQ3LuO
	 4Nl/fLa9SoerJi87gIfxl6K04V1J7x8v6Ld7UvMed6P+kBv6L3SKLnbggf/eOXV4gO
	 sG99RCuxRXXw2jbXT20vfQopviM8voQ+AEfrsvlh5RPjRNK08JBIaRkCIyUaq2owbG
	 Bv/e+7eR9nuhw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Johan Jonker <jbx6244@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.10 04/19] arm64: dts: rockchip: fix ir-receiver node names
Date: Mon, 28 Nov 2022 12:41:04 -0500
Message-Id: <20221128174120.1442235-4-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221128174120.1442235-1-sashal@kernel.org>
References: <20221128174120.1442235-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221128_094129_765840_99DB5403 
X-CRM114-Status: GOOD (  11.82  )
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

From: Johan Jonker <jbx6244@gmail.com>

[ Upstream commit de0d04b9780a23eb928aedfb6f981285f78d58e5 ]

Fix ir-receiver node names on Rockchip boards,
so that they match with regex: '^ir(-receiver)?(@[a-f0-9]+)?$'

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Link: https://lore.kernel.org/r/e9764253-8ce8-150b-4820-41f03f845469@gmail.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
index fbcb9531cc70..213c0759c4b8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
@@ -13,7 +13,7 @@ chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
-	ir_rx {
+	ir-receiver {
 		compatible = "gpio-ir-receiver";
 		gpios = <&gpio0 RK_PC0 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

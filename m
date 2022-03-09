Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF8B4C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Mar 2022 16:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=djCj2u7RXgZzdCCdEqg5iVgPhEqdDKdgAwJnVdukivY=; b=IfjD4qwNyuzZwJ
	6ehYhHiRLSj1cEYufUledSxk07cnPY7bm+o+YYEc/LrrIdI6dESkPYA1zuiATCBmwEzP6tn4q18rZ
	NWc4iiqQNJBgY+qMbGViZG+zqc9x7uoBQ0nWtP1xz2RPaaZqAir7utK8StLGIN67+x65QRAcZ5kSE
	JTtTWxKHj6XnpP8QK+yII9xv4otuhO2Qp7e3H2s+UuD04L2DynuQEo6cweIUZsbhQVAUEDzGIhXof
	Zl+sYPiIuzHtiy4oAt5qMr5OI8ZUoRYUdmvSrrSk/4IYOX0tng6dXi891rPCQpInufqNkxggACUoT
	AHbjE4CXoH/ampoEUU6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRzJw-009UQr-J2; Wed, 09 Mar 2022 16:37:52 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRz6h-009NdJ-MZ; Wed, 09 Mar 2022 16:24:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id C365C6196B;
 Wed,  9 Mar 2022 16:24:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 47A48C36AE2;
 Wed,  9 Mar 2022 16:24:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646843050;
 bh=j7hmCy1CU7rAvVLIg9oPZL7rB5QJwqoUz2WqR3uMxdI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RoyU0aBxqA+XmADrkD4NkO2rtM9oy6zuRhFvl24BrXIjkNZqxgU6VQh7433p7aXQU
 iE7PDmgnl2eOxjYgMle6K7lcLXNglySZkoU+BUZsolrt1+Tt2cMBTWFmko0F4qEyoQ
 avM1rsBNdG/0pgNyu55uk/7eC4llnBNzp7I9yLID2PPK7xHARPM+TlIPhrPz1aZZpO
 eNKt3GO93SSSBBJKH00FBnyQtlafpgkZQQq/TQ1dB+ez1L1wfoj6vNdQDpY2tmc8p/
 +ajIKaIkO0s8b/XyTbm6aq7MhZDRMDbeUasgFVo5zvfwq5GiWHqq/skqAyt5UuLOdv
 U3bkNnCg8ufPw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Corentin Labbe <clabbe@baylibre.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>, Sasha Levin <sashal@kernel.org>,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 07/19] ARM: dts: rockchip: fix a typo on rk3288
 crypto-controller
Date: Wed,  9 Mar 2022 11:23:24 -0500
Message-Id: <20220309162337.136773-7-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220309162337.136773-1-sashal@kernel.org>
References: <20220309162337.136773-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220309_082411_857145_0D1BCBEE 
X-CRM114-Status: GOOD (  12.64  )
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
index 658ceb96d8bd..7dcafd0833ba 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -975,7 +975,7 @@ i2s: i2s@ff890000 {
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

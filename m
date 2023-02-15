Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 135E7C636CC
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Feb 2023 20:55:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6TpSfhzA9zU7fBV1Rls/Wc9J4DnzFU6szub/waN+DtE=; b=jTSIq2Kzj5stTk
	ZNKT0pXzh0Dlo5WVYxQ+8yFz1tzR6bTz8LS7HHnQ+Pb/PBDtHcKmGsKRP1btgJzcY5B9Rpv+bQUh0
	9H7KYBFvi7wr2WlyFTblYuzVmd72CaKXbBOUAAIgTlVQGaeUqEf/Rh6PLYnx5qAWWVmkmCu1VRXbk
	bLXWtqufKs9v6kvsxqoiVHUKiYY8RGHKKYo/Ji1WNtfvJetOFntqeQD7HMW3isKDpHkFkeO/6X2bb
	5mFf82L+oD3u0fSFEayWtp6Nq8UEqLzLl5WVBVaZpBx4JIF4CPgmRofBvieZuiEUGtBEbth4Ob27W
	hw7Nh9XSjYx4Djy4K0Gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSOnp-007I36-T1; Wed, 15 Feb 2023 20:54:57 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSOgC-007DPq-IA; Wed, 15 Feb 2023 20:47:06 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 33C9C61D94;
	Wed, 15 Feb 2023 20:47:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48109C433EF;
	Wed, 15 Feb 2023 20:47:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676494022;
	bh=/Eu3el75kgRtXRX2Zlm9rmFxrySZK+OuG+WTPbD8aAE=;
	h=From:To:Cc:Subject:Date:From;
	b=JlLCqdwxRLf6R7yF3ecDcKVIUdf+WOkEDXDTPMoLZXn1zx7h1WTsCHQrTYiBppRbq
	 mrpnaXpvqXccQRfJECz35uKQK0Af8moeIaPK5lAtpU6tFxDopJayzuQsJPEW3vfdT4
	 QkhwnvBJ+Be1ozwGWx0dQeXg5AFHqeszVOre/BBzo+dr8KVw9G8YhSHfr7z/Z/qDbl
	 zZ3FFuyOvgWM3Vu2Jxf9xMKMl+1pACrlN4p+WmbSIa+T72yceVzodcExYkO2NI0osq
	 OBB2NRQWSDQAeorbxMy2dOE7HIk0376sPHz+jPOlFYO1LeY1Nw5G2j48QBSnX2dyDT
	 iiCdxfxMUTUtA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.4 1/7] arm64: dts: rockchip: drop unused LED mode property from rk3328-roc-cc
Date: Wed, 15 Feb 2023 15:46:53 -0500
Message-Id: <20230215204700.2761331-1-sashal@kernel.org>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230215_124704_725539_21C1CE8D 
X-CRM114-Status: GOOD (  10.55  )
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

[ Upstream commit 1692bffec674551163a7a4be32f59fdde04ecd27 ]

GPIO LEDs do not have a 'mode' property:

  rockchip/rk3328-roc-pc.dtb: leds: led-0: Unevaluated properties are not allowed ('mode' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Link: https://lore.kernel.org/r/20221125144135.477144-1-krzysztof.kozlowski@linaro.org
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
index 6c3368f795ca3..fbd942b46c542 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
@@ -90,7 +90,6 @@ power {
 			linux,default-trigger = "heartbeat";
 			gpios = <&rk805 1 GPIO_ACTIVE_LOW>;
 			default-state = "on";
-			mode = <0x23>;
 		};
 
 		user {
@@ -98,7 +97,6 @@ user {
 			linux,default-trigger = "mmc1";
 			gpios = <&rk805 0 GPIO_ACTIVE_LOW>;
 			default-state = "off";
-			mode = <0x05>;
 		};
 	};
 };
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

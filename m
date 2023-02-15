Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE0F5C636D4
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Feb 2023 20:50:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f5HhHEoD1PHHQ4xbCvAvK9cej+aBLOr0nfvAm842RFI=; b=2qnagcXqbrqmYM
	f2VXjeel4iLxf2XNKSg0Oca2YiPfDYZCrUpxxKfAmvu0cXlvCTs8UPnSGRb7PXuJTGA9SbZ4oBLdb
	QZMGW4T6CbPHXGyULYjRMbv4yDk3m4Md6t0/9LngQ/mz1x8SfKcy4etAnJ13tMlgUBhq1Yz9h0O5r
	A7o+tEL5glvfYQs+HN7VO8fk1zgjwhCJDAVnlP2a5gUrbVhEOvJNEZiOodnufzkwQ5+5FrJ2P8DR5
	H9plV5SvvmjJHUPm/eCJMv7IjirbEOmFoDCmprUiQX4IRlX3329Qrp7X4xhvcDheCA3AsVuOn6IVG
	En2czaME6WcqNI7tPyZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSOjU-007FaZ-RA; Wed, 15 Feb 2023 20:50:28 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSOfq-007DBQ-Iv; Wed, 15 Feb 2023 20:46:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2AF5561D9B;
	Wed, 15 Feb 2023 20:46:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44993C433D2;
	Wed, 15 Feb 2023 20:46:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676494001;
	bh=t8U8QoDWUAMqTQvuZn2SdMB6UARQXCHE/bK/scimVwU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=CaJ18mBiW11ALJASSX0sOeIpvomm/N6l0/oq/mVrWKqN/P9Zn8SgN6yRfN4MCuM2X
	 F29Z5bouJuESfhdUdhf8o+SNF1f03qfow1PSWe9pLThWtzmK/U23m1gAaBo5IdGH5L
	 n5tXqeszuvbAMKb5Vg63GZOXKAJ4PCZnCRIhHTuKZaUuXCshaC8sqYIfQQywkQq/tF
	 aEageWLzxZn/kteu7Fwz012ua8vY4r8BK593Q0R6fVKDcY1+ljzy3YfeqtZq5O5q90
	 L0xCs1fqqna0yePPFFYnylix+2Zm0WcLAzna58awqc4yudcbocH89/ia4s+Y2SgmLH
	 N6/0if97Drbmw==
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
Subject: [PATCH AUTOSEL 5.15 03/12] arm64: dts: rockchip: drop unused LED mode property from rk3328-roc-cc
Date: Wed, 15 Feb 2023 15:46:25 -0500
Message-Id: <20230215204637.2761073-3-sashal@kernel.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230215204637.2761073-1-sashal@kernel.org>
References: <20230215204637.2761073-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230215_124642_684340_F854BBC7 
X-CRM114-Status: GOOD (  10.82  )
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
index aa22a0c222655..5d5d9574088ca 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
@@ -96,7 +96,6 @@ power_led: led-0 {
 			linux,default-trigger = "heartbeat";
 			gpios = <&rk805 1 GPIO_ACTIVE_LOW>;
 			default-state = "on";
-			mode = <0x23>;
 		};
 
 		user_led: led-1 {
@@ -104,7 +103,6 @@ user_led: led-1 {
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

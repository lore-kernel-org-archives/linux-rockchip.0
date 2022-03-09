Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9594CC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Mar 2022 16:42:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=frnuc0KYiph03tT8BKGhcEUfQYrlsld8opdidPLa8jk=; b=fEZXAYn6yzrq1y
	r7fGzUGg3iYgzMELEE82Ug+eNbAHW0RgYduosOrWotGxSL+EwnvqPNHOjeF5xGQ0jzeNi2Ssh/GcI
	I1undZQMIeN1BKJLtwctTJzzK6kZBkUa4Bv4zQL29g7Y/1JLt/6TskBPB4J6ocCDu5ZzJKuqsPmsg
	Oik4xJnu2xjgc0PkvNAzFEtxhZd0ffJiSkdjM6YlYmgXtYN7YD5Y6notnvG3jaJyga3c1dyFwqEqx
	3k0CvoLnKlVpRdPYCianaOTtzP3Ms8L31KFMKvFcduiasJmOT3tt1ElN+pdBSEaSBRQ+UF15JDmal
	jHZryyCGiq5+F5ev/ONA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRzOF-009WPZ-TG; Wed, 09 Mar 2022 16:42:19 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRz91-009P3G-9Z; Wed, 09 Mar 2022 16:26:36 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 885FA619C9;
 Wed,  9 Mar 2022 16:26:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4C81C340F6;
 Wed,  9 Mar 2022 16:26:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646843194;
 bh=NH8oTPOZurRKmj4SPVwhpRhSF1kGMdS+csUxCzR+XWc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=AN51VlVq+uLVYZqCcwDvkUPC0sCkikeZiBEzTvcpJG5Hw6BeDSEkq6KjHf64/Jjvj
 6sO4pkgiXeAP9u8sIbriHghgRflq6Iuq19zaOgAX08iX23hWnL/s86wOmjbBV5Xxup
 GRwAFHgLLx6UeHFoTs6977eUCvtS4fgbiDFHkHhU2tiYXBhBKNcMuu48ZhCJRtu/Nw
 GWFrBCUkWohoua5YstTYiX++CQlEymbAXwF2yPBn+dZEZZ0CqD04sQcycRxhdHKo+q
 cZOMvjIh3D+xrrT9KLwFv2FF7HM0pG+ojn2/AWS2OWYiViXeMK+U8sNFR93kVCA118
 QdVRYBDea76fw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Corentin Labbe <clabbe@baylibre.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>, Sasha Levin <sashal@kernel.org>,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 03/12] ARM: dts: rockchip: fix a typo on rk3288
 crypto-controller
Date: Wed,  9 Mar 2022 11:26:08 -0500
Message-Id: <20220309162618.137226-3-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220309162618.137226-1-sashal@kernel.org>
References: <20220309162618.137226-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220309_082635_445181_22A1B258 
X-CRM114-Status: GOOD (  12.65  )
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
index 9adb58930c08..872e4e690beb 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -943,7 +943,7 @@ i2s: i2s@ff890000 {
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

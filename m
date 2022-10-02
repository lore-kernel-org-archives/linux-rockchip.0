Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 292EAC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Oct 2022 22:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AsbpIQagcbrWN/anZje54+yHg9jPaGkHvkdJHzLHrCY=; b=zrTJ8aorRaR2GD
	+Ozo5BMlWj2QSA7CD1wR8txtchcShN6hiFjJXvxTKGg0xKEf7FSVsQwvqCLis0SQ6zT3nJwHfksKk
	d9PSmHIN5t/DTEejZUn1bGwFFyndRXCX4YG6VtGbXrstnztyvgM1ZMFlAvy0cxtPyCqUydtTACk4C
	nHgmmZiaTalXScSl5iTGJqpvaKB2gvTrVlgcu27/JylrPCEHuC0hocDJO6M0zTmMZ8yR62wWYleit
	6i3oa20EzXLK3ICDV7YHReQXs+lIYwOKnNAo/EizR6MD09ai87T866aDJl0dihKegtH98lLj+dhjN
	TOTkzMrCe4TO4TS4febg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1of7mp-002mTD-VN; Sun, 02 Oct 2022 22:50:15 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1of7mD-002m8L-JI; Sun, 02 Oct 2022 22:49:38 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2B96460EFE;
	Sun,  2 Oct 2022 22:49:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F1DCC433C1;
	Sun,  2 Oct 2022 22:49:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664750976;
	bh=4JCiA5c4NdAx7YY0hwes4pyrpsIJwxT/BMs6N3Jek1g=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QpzQS0M7IC6XvE8v1RIX5gtDwmlqoHoWdmadoE3B92Qz8kPpC7V+UCoVSSr7qkRje
	 rTVPeis17fEEvoTXvKvGg+AIOxihkgjZC9qMY206Y1AyMg1Phi0BSBEFHSkKwQOD3C
	 DOC5UYPFAaNS/ZG9SWOTU7VRyWiY8+01ZKr0wNlQ6n2dBw1Ocimo44jV0JJDqbb4i0
	 ITeGBQ29iNPJlku+yXuagqzkf64XmzQKG924BDXbeOAltzE41rNnkHgTP98eMiirvn
	 SM/9q8E0WU8Om+hF670pns+nf0ttL83h9OWZu80cEX9rPhNw1aPFmMcE3nhbh5OCTD
	 FOzX1n6oHKfLA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	michael.riesch@wolfvision.net,
	f.fainelli@gmail.com,
	kuba@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.19 05/29] arm64: dts: rockchip: fix upper usb port on BPI-R2-Pro
Date: Sun,  2 Oct 2022 18:48:58 -0400
Message-Id: <20221002224922.238837-5-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221002224922.238837-1-sashal@kernel.org>
References: <20221002224922.238837-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221002_154937_690830_664EFCD8 
X-CRM114-Status: GOOD (  13.17  )
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

From: Frank Wunderlich <frank-w@public-files.de>

[ Upstream commit 388f9f0a7ff84b7890a24499a3a1fea0cad21373 ]

- extcon is no more needed in 5.19 - so drop it
  commit 51a9b2c03dd3 ("phy: rockchip-inno-usb2: Handle ID IRQ")
- dr_mode was changed from host to otg in rk356x.dtsi
  commit bc405bb3eeee ("arm64: dts: rockchip: enable otg/drd
    operation of usb_host0_xhci in rk356x")
  change it back on board level as id-pin on r2pro is not connected

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
Link: https://lore.kernel.org/r/20220821121929.244112-1-linux@fw-web.de
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
index 40cf2236c0b6..ca48d9a54939 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
@@ -558,7 +558,7 @@ &usb_host0_ohci {
 };
 
 &usb_host0_xhci {
-	extcon = <&usb2phy0>;
+	dr_mode = "host";
 	status = "okay";
 };
 
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

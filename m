Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0915FF8855
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 May 2026 16:52:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aQaDTGNZnoCZy5FcFw6hD+jNr6DQRVNsD/v+OXYAomA=; b=u2Y/6FXIBqnWwr
	Hpjh4IUnTLYqrv4WUPDrNuV+34TBT9qNoid/0Ylfk1KRMYABnstyZAI4NEi+CXpUQEacKgHfkJOz5
	6969qAOUndd7ocbrXVHin0xFmjun1BW3A1bL84hIobOpzJ1LS92SbBC1nUbbFpndXHo/z755sI1jQ
	R30Ba5wbsD0W/NdOzQ57+dfdZ9Pzz4fgiFFWCbwauoNA+i9mon2pyAxDkbq5Tdbkp6Sj98yoQXRTL
	MyjmfPvVp/aoxzuGm7+dK2sU4ZGAd6MJF6Q/AbH1I1bkBQRvVoeAhu4YN6nI02FsYvMHyUhI6uCgC
	1NGsRDtzKP+mzg0+RfHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKJ0w-0000000Gxci-0myA;
	Tue, 05 May 2026 16:52:54 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKJ0t-0000000Gxbm-3JOp
	for linux-rockchip@lists.infradead.org;
	Tue, 05 May 2026 16:52:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id DECC060181;
	Tue,  5 May 2026 16:52:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9AD9BC2BCB4;
	Tue,  5 May 2026 16:52:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777999970;
	bh=Uy45pCjpPeeuNDhKg0dzbRSP55OqbZOrzQT7aVDR/oc=;
	h=From:To:Cc:Subject:Date:From;
	b=tT6snsA3UR8645dy8SL2WuRvtEdwbs0owuBANHJ7aCnMXwoI2UhJ+wsjyHUOl+pmq
	 rKJQzhjLShcOhy+C/FkF1GmC0U3RIjGv2mMKr0MlIfD9qWYXWIltGuUk2ATcFlNqL+
	 1O33UMz2j2I+BKKYCH8Tut/GRJNxlNy+GnIVXPuLADIyeOJ/adaPRpCM1sq2Kj9NkE
	 fRHf0URJlrx6YvvI44c7mcv64NyutX7PPaFLNDvfkv6O8xY82fKndwfv0llAXefBPZ
	 Gea5rrxVd1aodJsf8LeR17wSMN1u+Dcydei/LNmrC/HMRY+LySNXrV+HEREASYFPlL
	 wmJ2YNULWuvTw==
From: Chen-Yu Tsai <wens@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Chen-Yu Tsai <wens@kernel.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: rk3399-nanopi-r4s-enterprise: Fix EEPROM compatible
Date: Wed,  6 May 2026 00:52:43 +0800
Message-ID: <20260505165244.1902-1-wens@kernel.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
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

The EEPROM used on the R4S (enterprise) is the 24AA025E48T-I/OT from
MicroChip. This is a 2-Kbit EEPROM with 16-byte page size. The latter
half of the EEPROM is read-only, and the last 48 bits contain a globally
unique MAC address. That is to say this is not an ordinary EEPROM.

The compatible for this type of EEPROM was introduced later that the
board. Switch over to the correct compatible now that it is available.

Signed-off-by: Chen-Yu Tsai <wens@kernel.org>
---
This should probably not be backported without the matching changes
to the DT binding and the at24 driver.

 arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s-enterprise.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s-enterprise.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s-enterprise.dts
index b76f98962076..e366f1a04b32 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s-enterprise.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s-enterprise.dts
@@ -16,7 +16,7 @@ &gmac {
 
 &i2c2 {
 	eeprom@51 {
-		compatible = "microchip,24c02", "atmel,24c02";
+		compatible = "microchip,24aa025e48";
 		reg = <0x51>;
 		pagesize = <16>;
 		size = <256>;
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

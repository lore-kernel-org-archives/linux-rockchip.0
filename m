Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50011C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 11 Dec 2021 23:39:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kSHFVOA69Np4rNcre8KJiSFZUlYdQX7UgdGAKihdbPg=; b=HvotWb45QVFQlq
	Ncv/P31ggQcPBLORmJM5pJisLkuRyqXbAjGvwMc3UgLhwC8BBcy1Qq1UcDSydikO5Yh43EdnhVnw8
	JW0iMP5dB3YDRkxKvuw+CEFzFVi6ozeh91wCv5QYO6xs/Kwym3fj6ZWTZoiUg59hI5/G+Nl+8Rrlk
	3S4lhhlAVc6DxmH+XXL3xZmoclNvCDPQAn2b+6iMfjbu7ug9LZmY+s6dcMOT8tk2Ecp/LBNjbsMc8
	F3PBomKyLuNeEz3BPlWAo+ukDxy9mIjkpPAkW77ttxVttXTVjEQ+pulRt9Yicd0MM28dXQxKRnkHu
	vrG4icKySeulb1cVZZzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwBx8-005h9a-BS; Sat, 11 Dec 2021 23:38:54 +0000
Received: from ixit.cz ([94.230.151.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwBwu-005h5t-EE; Sat, 11 Dec 2021 23:38:42 +0000
Received: from localhost.localdomain (ip-89-176-96-70.net.upcbroadband.cz
 [89.176.96.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by ixit.cz (Postfix) with ESMTPSA id 7EBA124AF0;
 Sun, 12 Dec 2021 00:38:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ixit.cz; s=dkim;
 t=1639265907;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=xWjajEwtY2wkVt9fXD7egUyXtBkTDdRKLHGRSaEMSwQ=;
 b=HUkfzoIoi9pc7KYnLff/yfNWfsFO+daPCyEYcqyHW5BPhricY6fUdPC5u7mkVoYOhyaCcY
 5CAmphLik0onMuoIQzeRQjDtLeSwSjruKaAoHIES1ELhsuFYnb7Yw9DBKkIsVerTqgzUB/
 W9i4Jc0pa1+4u6rWidbrrd6RfJFzoP8=
From: David Heidelberg <david@ixit.cz>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: ~okias/devicetree@lists.sr.ht, David Heidelberg <david@ixit.cz>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] arm64: dts: rockchip: Add missing secondary compatible
 for PX30 DSI
Date: Sun, 12 Dec 2021 00:38:17 +0100
Message-Id: <20211211233818.88482-1-david@ixit.cz>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211211_153840_656007_AAFC0E24 
X-CRM114-Status: GOOD (  10.67  )
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

Add second DSI compatible to comply with DT schema validation
comming in the second patch.

Signed-off-by: David Heidelberg <david@ixit.cz>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 00f50b05d55a..f972704dfe7a 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -1072,7 +1072,7 @@ vpu_mmu: iommu@ff442800 {
 	};
 
 	dsi: dsi@ff450000 {
-		compatible = "rockchip,px30-mipi-dsi";
+		compatible = "rockchip,px30-mipi-dsi", "snps,dw-mipi-dsi";
 		reg = <0x0 0xff450000 0x0 0x10000>;
 		interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru PCLK_MIPI_DSI>;
-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

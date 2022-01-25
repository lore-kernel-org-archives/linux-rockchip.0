Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A04A3C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jan 2022 11:50:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/rTEHx8idtn1FHfjVzss3z/NAOdQAqR1XmDmOUgpmsk=; b=WB9Y7gDvk+knrO
	CgXFzQYg3uXtLqf7sXPDAbtAyIfZ45a4EvJNqxvvfFCQ/7WjzwVqxu5ZIgDWfiFJrtSmiy/JbssWe
	Om4J5ydyTRvMT3InW1xqCB+Xj6lISWX+xu4Ix6lpUmJqr/dRqMrG/seol/tDIRylnu1rPHYg4Q86s
	x9U8NwPid+SAYcTPMUM51Q/HhNDFylfcKTndlTn3ldo9/biZEI+l4WLZNyNCw7bNLIxgJ/wXdWlaA
	yinC3TWM5g4YIoArnkvFbSgfMVXxlAK0mlqu+xuuhmFS3gGQlr9kq+Xgif2Ig7E2cfSqc18zX6OQH
	fuZ7SxHn4kEjzNDxS7VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCKLM-007hAF-TZ; Tue, 25 Jan 2022 11:50:36 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCKLB-007h9P-EA; Tue, 25 Jan 2022 11:50:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=metanate.com; s=stronger; h=Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Content-Type:Reply-To:Content-ID:Content-Description:
 In-Reply-To:References; bh=hkUccVp4P9p6ugtrSZv9QxAGFoIyyakvdi4VBQAA7go=; b=XW
 2qRRssGvSjIxDFxgFjrcKHua7lf5liOR/8IXw7ygQdDr7QPGh8L7JlbxVpApHnGzXGL+W2ww25zQu
 EOG6YVogM/72dPjlrqWl2GkpymVLsPYDo3Nk4Xg0vlSZ1bPw+4Z5eEqvOz6siigB2RROPOcZdwcmN
 JosSAevZgTe9JGFpLG2JB8ZRNSN/Xbpa4jZgTIEZWY9r5RnnrDb+HpBl8gRf6TvHhAO2hq0Kox9qE
 f96wh7gAQrAQ0P87jwSJEOWVzmhDT1Qtp8FwTgzfhE3Mg39jeUinwSze4cZaq7CUTHJBn3J8OR+o2
 87sxWRt6iFYb3iau+wmYrWmbyfJjM7Dw==;
Received: from [81.174.171.191] (helo=donbot.metanate.com)
 by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <john@metanate.com>)
 id 1nCKL5-0002Dr-3Y; Tue, 25 Jan 2022 11:50:19 +0000
From: John Keeping <john@metanate.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: John Keeping <john@metanate.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: rockchip: fix MMC compatibles for rk3288
Date: Tue, 25 Jan 2022 11:50:07 +0000
Message-Id: <20220125115007.3138311-1-john@metanate.com>
X-Mailer: git-send-email 2.35.0
MIME-Version: 1.0
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220125_035025_651697_0AFDED94 
X-CRM114-Status: GOOD (  10.00  )
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

Prior to commit 4bac670aa5cb ("mmc: dw_mmc: rockchip: use common_caps")
the mshcN aliases were used in an unusual way by the dw_mmc driver and
affected behaviour.  Now that this has been fixed, rename the mmc
aliases to use the standard form.

Signed-off-by: John Keeping <john@metanate.com>
---
 arch/arm/boot/dts/rk3288.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index aaaa61875701..50fa0a4652b5 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -25,10 +25,10 @@ aliases {
 		i2c3 = &i2c3;
 		i2c4 = &i2c4;
 		i2c5 = &i2c5;
-		mshc0 = &emmc;
-		mshc1 = &sdmmc;
-		mshc2 = &sdio0;
-		mshc3 = &sdio1;
+		mmc0 = &emmc;
+		mmc1 = &sdmmc;
+		mmc2 = &sdio0;
+		mmc3 = &sdio1;
 		serial0 = &uart0;
 		serial1 = &uart1;
 		serial2 = &uart2;
-- 
2.35.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

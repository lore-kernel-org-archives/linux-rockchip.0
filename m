Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEBB9CCF9E3
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Nov 2025 15:02:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xeejIAsfm13FVRXTk3elTPBYRHLZV2ja7LraR/3Z6u0=; b=r+1iXA2qfdWqhc
	/7IM5rPEZWQA/+Vm/eHAGY+z9NAjO0bkgj2cl2y8HraWj9BXpDXjK8hlASke6y3sau5GcSspe2LLM
	UMZvoRmqDAqkOTlFjZGYc2bLXMts6UxBfHI06xr3pPCSz4Mi6ohx/QXjWZEFfvf889bOI4xp89fsl
	OlLoPj9PAiD+iKLV1rR69Wg+XpupHXzblWIrGXIq2tYfOJLD7pMKL4hpdKGWDTbseOh+0ySdfeFcv
	LcwQCNgbxmr710WK2qg56IcYvXe1/x0lqx9NDoagXqbep7XfXPWfStZxMACQfKnAsvQIGl9900mT1
	qFUult0MX4heUoOG5l+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJCMR-000000090Jb-22SK;
	Wed, 12 Nov 2025 15:02:15 +0000
Received: from smtp-190b.mail.infomaniak.ch ([185.125.25.11])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJCMN-000000090I4-35Ua
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Nov 2025 15:02:13 +0000
Received: from smtp-4-0001.mail.infomaniak.ch (unknown [IPv6:2001:1600:7:10::a6c])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4d667f66VszfD8;
	Wed, 12 Nov 2025 16:02:06 +0100 (CET)
Received: from unknown by smtp-4-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4d667f1jG9z2cg;
	Wed, 12 Nov 2025 16:02:06 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Wed, 12 Nov 2025 16:01:53 +0100
Subject: [PATCH] arm64: dts: rockchip: disable HS400 on RK3588 Tiger
MIME-Version: 1.0
Message-Id: <20251112-tiger-hs200-v1-1-b50adac107c0@cherry.de>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x3MOwqAMBBF0a2EqQ1kIoPiVsTCzzNOo5KICMG9G
 yxPcW+mhKhI1JlMEbcmPfYCrgzN27gHWF2KyTsvzOztpQHRbsk7ZyFT24AhbS1UijNi1ee/9cP
 7fuJDspFdAAAA
X-Change-ID: 20251112-tiger-hs200-e5b87e1e5835
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.14.3
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251112_070211_937460_143EBF8F 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
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

From: Quentin Schulz <quentin.schulz@cherry.de>

We've had reports from the field that some RK3588 Tiger have random
issues with eMMC errors.

Applying commit a28352cf2d2f ("mmc: sdhci-of-dwcmshc: Change
DLL_STRBIN_TAPNUM_DEFAULT to 0x4") didn't help and seemed to have made
things worse for our board.

Our HW department checked the eMMC lines and reported that they are too
long and don't look great so signal integrity is probably not the best.

Note that not all Tigers with the same eMMC chip have errors, so the
suspicion is that we're really on the edge in terms of signal integrity
and only a handful devices are failing. Additionally, we have RK3588
Jaguars with the same eMMC chip but the layout is different and we also
haven't received reports about those so far.

Lowering the max-frequency to 150MHz from 200MHz instead of simply
disabling HS400 was briefly tested and seem to work as well. We've
disabled HS400 downstream and haven't received reports since so we'll go
with that instead of lowering the max-frequency.

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
index b44e89e1bb159..365c1d958f2d5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
@@ -382,14 +382,12 @@ &sdhci {
 	cap-mmc-highspeed;
 	mmc-ddr-1_8v;
 	mmc-hs200-1_8v;
-	mmc-hs400-1_8v;
-	mmc-hs400-enhanced-strobe;
 	mmc-pwrseq = <&emmc_pwrseq>;
 	no-sdio;
 	no-sd;
 	non-removable;
 	pinctrl-names = "default";
-	pinctrl-0 = <&emmc_bus8 &emmc_cmd &emmc_clk &emmc_data_strobe>;
+	pinctrl-0 = <&emmc_bus8 &emmc_cmd &emmc_clk>;
 	vmmc-supply = <&vcc_3v3_s3>;
 	vqmmc-supply = <&vcc_1v8_s3>;
 	status = "okay";

---
base-commit: 6bff916a7e9b6b7f6bd06eb5722e6dfbb777f13e
change-id: 20251112-tiger-hs200-e5b87e1e5835

Best regards,
-- 
Quentin Schulz <quentin.schulz@cherry.de>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

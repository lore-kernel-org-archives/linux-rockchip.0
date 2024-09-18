Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D44DECCD185
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Sep 2024 07:32:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XZfxawVuLQOUAmO8Y9YYaMUzEmA3aHmEdGxga/knjaE=; b=zmbM2SsAhVWOGN
	wepwEsesxcebHqe6LX9z8IwEvINPBA1sneOolrLri4YemFfFlZ9nzl8UEay9FS8DTUnJySSSXMpOu
	D5lx8U5EfIUOTdS97A+7bVBV16D/bmx8ZQVGRQKK7SAFnfm+pl3G8d1WQEBMtnq23qLWbLJ5GlhMi
	UKBlwVAhZUzE+D43CzFF6woNbwWS2Evmo5ROxc31K2ZON4paDuhY+3eAKDrZEKRxbboHGD6mQnijR
	iKEdwMR3QlzRgMCfw6c47pgkyU8XXXzabBnsI61PbSu/vGW+RlmcNVCmMtVs//4UYkAIdnLSOv4GG
	V0wzb5zigCxcZCoP1Ntg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqpBE-00000007fNg-4BZD;
	Wed, 18 Sep 2024 07:32:53 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqpBB-00000007fMI-46mt
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Sep 2024 07:32:51 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 48I7Wg2l001006;
	Wed, 18 Sep 2024 16:32:43 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: amadeus@jmu.edu.cn, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 2/2] arm64: dts: rockchip: remove cd-gpios property in sdmmc0 for Radxa E25
Date: Wed, 18 Sep 2024 16:32:36 +0900
Message-ID: <20240918073236.648-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240918073236.648-1-naoki@radxa.com>
References: <20240918073236.648-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240918_003250_257142_80F9DBFD 
X-CRM114-Status: UNSURE (   7.88  )
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

adding &sdmmc0_det to pinctrl-0 makes micro SD card detection work
without cd-gpios property. remove it.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v2:
- drop Fixes tag
---
 arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
index bf8f2d8e9e2a1..350eb32a48a31 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
@@ -197,11 +197,9 @@ &sata1 {
 &sdmmc0 {
 	bus-width = <4>;
 	cap-sd-highspeed;
-	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
-	/* Also used in pcie30x1_clkreqnm0 */
 	disable-wp;
 	pinctrl-names = "default";
-	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd>;
+	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;
 	sd-uhs-sdr104;
 	vmmc-supply = <&vcc3v3_sd>;
 	vqmmc-supply = <&vccio_sd>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

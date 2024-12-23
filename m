Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 113CDE77192
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Dec 2024 01:39:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BaVppJGRxm5SYxuD5Gwd+uAAhsNyslNXurjxShBCmjU=; b=NI7H5NvjrMhdEp
	m24hXBaatTUdHV6lKUL5zivW9ohBgg+NUYXOJ38cM/si6H28/JJloZsdFPwr9TpQTibvOgfCz6H5E
	2AaEMRbFdV9ZI3FHtk9ybS/i+phHp6W2ndW+SPeVfSBKviYcWVOUcQ2c1p2epTKQMf+1tuVXbvyw6
	/Iv7dWj+H5JcF6a0SDt5/v5mSRV1It8A4SpfB1B7U7PYeMO3rXWx2X1Rhi5E2PYjxYFOByLbiWPOL
	FVZCxQUzYqhNe7GGMdga73VAWy+FeSbS7YkSh7ekRDSaUYH69aovs1rxVipLCj3T2uCWxx9opiNLH
	e3GzhmHJXnzuBLKzmA9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tPXQB-000000095e5-0bqj;
	Mon, 23 Dec 2024 01:39:47 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tPXQ7-000000095au-0c21
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Dec 2024 01:39:45 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BN1dW73024519;
	Mon, 23 Dec 2024 10:39:33 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v6 4/7] arm64: dts: rockchip: Add cd-gpios for sdmmc for Radxa ROCK 5C
Date: Mon, 23 Dec 2024 01:39:23 +0000
Message-ID: <20241223013926.1134-5-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241223013926.1134-1-naoki@radxa.com>
References: <20241223013926.1134-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241222_173943_426311_23AA90BA 
X-CRM114-Status: UNSURE (   7.52  )
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

Due to the discussion about cd-gpios and sdmmmc_det pin
functionality[1], it would be better to add cd-gpios for now.

[1] https://lore.kernel.org/linux-rockchip/4920950.GXAFRqVoOG@diego/T/#u

Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v6:
- Reword commit message
Changes in v5:
- Reword commit message
Changes in v4:
- none
Changes in v3:
- none
Changes in v2:
- none
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 8b7bb382a20c..8379bc97705c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -476,6 +476,7 @@ &sdmmc {
 	bus-width = <4>;
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
+	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
 	disable-wp;
 	no-sdio;
 	no-mmc;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

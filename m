Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92B42C52D70
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Aug 2024 05:15:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a178AQ7Bkixtiy3LJuifhdRGfXlbf0hjquZMxlISpWE=; b=Qx1un/07S3HI9x
	DSbfTPIwaSCKVs56/0bEUcJqp05L4bPvgoGZ6JWG17oNm/YeEVbfdZTS1ZHNXILUZfloZ1Z494rxF
	49yoim0q0QuVElnKErg/agya6adITOc073It2mUVl+Kvf85z1Mwsv4o0d19mwVEp5Spe75ChdGdGq
	53HJsJOuZa7Wmye5NnVLUMnk1mAz6LAlNi86B2ijPYq6J207eoGnAJJuI1i2m1jhNKy8JouIxLjf1
	r2mi1uYwx7w7dCUobzt5TIvsWrD3bUMiYYOtJEBg6CiOeHx6zGDs99InI2CndjWsIPSgk1JxpHcz9
	BLv5ThKlmXpVY7lw14og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZkdV-00000007fJx-0QN9;
	Fri, 02 Aug 2024 05:15:29 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZkdQ-00000007fIn-1TaO
	for linux-rockchip@lists.infradead.org;
	Fri, 02 Aug 2024 05:15:27 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4725FGs8006120;
	Fri, 2 Aug 2024 14:15:16 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: jonas@kwiboo.se, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH] arm64: dts: rockchip: drop dr_mode for Radxa ZERO 3W/3E
Date: Fri,  2 Aug 2024 14:15:08 +0900
Message-ID: <20240802051508.498-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_221524_631628_5876A64D 
X-CRM114-Status: UNSURE (   7.89  )
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

since dr_mode = "otg" can be used for USB gadget functions for U-Boot
and Linux, there is no reason to set it to "peripheral". drop it.

Fixes: 1a5c8d307c83 ("arm64: dts: rockchip: Add Radxa ZERO 3W/3E")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
index 9cc7aa3298d0..de390d92c35e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
@@ -493,7 +493,6 @@ &uart2 {
 };
 
 &usb_host0_xhci {
-	dr_mode = "peripheral";
 	status = "okay";
 };
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

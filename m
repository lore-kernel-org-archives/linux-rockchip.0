Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AB42C54E71
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 May 2025 15:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8eAKEG+SJebi2NfXUKgpoJcfatTeB70eKRSyHvhlMN4=; b=GKBt2eFfDA54rS
	ZBErSsY3EFrta4iCOs1BoR4Gjm4x03wallAI6p2cO/oGQAvXJEdKVheT/MJmpOWalazml1WnbBcfH
	HFuCMQu3Ah+nzkRwCLe7XkaGu1o5LJ0z9xl7BcuZYNQkDAJiMKxAlclvGTqh6RBYIOc2zFmk3ynOZ
	qb6QHKx5R/gZvKNnP9BYjaf13+y0JgMdkZpUniKXeEgNqwsfuRibAbH9SPLyLq5/VKd5MBpFn5eOk
	WIk0LClJgvtB7JAJL2hWkZ5x6lEFSSQ9pPfZVnmurHXyCNWJE6SWw55zM+CbCBwTODMXM/Hfnyrpx
	h8tvVZJ/tfCDzQ6iUT6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHlec-0000000GKp0-26Xx;
	Wed, 21 May 2025 15:46:50 +0000
Received: from smtp-190f.mail.infomaniak.ch ([2001:1600:7:10::190f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHlcP-0000000GKGR-0B9Y
	for linux-rockchip@lists.infradead.org;
	Wed, 21 May 2025 15:44:35 +0000
Received: from smtp-4-0000.mail.infomaniak.ch (smtp-4-0000.mail.infomaniak.ch [10.7.10.107])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4b2bML5dJLz130Z;
	Wed, 21 May 2025 17:44:30 +0200 (CEST)
Received: from unknown by smtp-4-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4b2bML0zc0zPNr;
	Wed, 21 May 2025 17:44:30 +0200 (CEST)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Wed, 21 May 2025 17:44:19 +0200
Subject: [PATCH 1/2] arm64: dts: rockchip: add ethernet1 alias to RK3588
 Jaguar
MIME-Version: 1.0
Message-Id: <20250521-jaguar-mezz-eth-switch-v1-1-9b5c48ebb867@cherry.de>
References: <20250521-jaguar-mezz-eth-switch-v1-0-9b5c48ebb867@cherry.de>
In-Reply-To: <20250521-jaguar-mezz-eth-switch-v1-0-9b5c48ebb867@cherry.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_084433_230143_3F30564E 
X-CRM114-Status: UNSURE (   8.01  )
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

The RK3588 Jaguar exposes pins that can be muxed for GMAC1 functions to
the Mezzanine proprietary connector, so let's add the alias to prepare
for adapters using those signals in that function.

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
index 9fceea6c1398e92114dcb735cf2babb7d05d67a5..70a2569478f6165f067befb6cdfb4f58f00dd17d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
@@ -33,6 +33,7 @@ button-bios-disable {
 
 	aliases {
 		ethernet0 = &gmac0;
+		ethernet1 = &gmac1;
 		i2c10 = &i2c10;
 		mmc0 = &sdhci;
 		mmc1 = &sdmmc;

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

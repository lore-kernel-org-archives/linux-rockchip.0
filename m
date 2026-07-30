Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B139C55168
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jul 2026 13:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pfrE0vkRz29iDgzhvZvLA7mbmip4Nr2p32OlxTRnqWM=; b=Bx+2KaSSyWtHvN
	HYgmf0UK9O2SHujUn3JdBVYKPjuQCyCYG4s4TYqjPSaUTa6YDS21XTanY8AUYe31gVpIuHU/XsPsF
	tLfMWcD8DK9B/g88p4GlNvnDOlYEcdNK5CG+X4rmNQ93B09zM+4G9v3/yveY3evgtVXTS2169LMtZ
	QOd33jNTMHaiyFIINEWRITpi4a+Gn4AcfAI1l1MncH4NCUPxemRntuObkX+5gXq6UypcyhUv20lsd
	B3fPiobYOM17qKVQbcMI4qpdRxDs6ESI0+R9VnvbqNpo00wAU10oqpt5EztjNYx+Bvxweoq8Lv4CN
	8ePuLP9NYyvOdwjiNc2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpQeo-0000000AZCA-2RHb;
	Thu, 30 Jul 2026 13:18:42 +0000
Received: from smtp-8fa8.mail.infomaniak.ch ([83.166.143.168])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpQej-0000000AZ7n-2z4P
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Jul 2026 13:18:40 +0000
Received: from smtp-3-0000.mail.infomaniak.ch (smtp-3-0000.mail.infomaniak.ch [10.4.36.107])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4h9qX827g3zxMN;
	Thu, 30 Jul 2026 15:18:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0leil.net;
	s=20231125; t=1785417511;
	bh=zJqFjeEz2lMqJWlseT7sxSs4A4TdKCnjQFI/u/6gb6g=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=AvVROY5eLaGMQKosdG1L9QH4oCovMzmVI/pYhzTSyLO0nMY+QEUn9I6NAIwaJ31Pk
	 cTbyXobK6BWOkH6oSiA5zjToYeJiFwiCFy5vDGG5hyeMEjNIlOHqMCxjlizsPRDF+M
	 u0/KmPr2StSKIdcdp8+vpByOEnd6PAx1oEZ1zEg7oUwDrlHjI5A6mFKzjRXy1fzgQx
	 C+b+drSFf1bBAZq9WP2BUcf35XxeKHeiMJgaM6f9GcLxvNvDcme2GqlQVAW1G258mZ
	 cTvr+5y5srSxKHRkRc0IhSUJ73amS5jvjaWmZ1YyQg7BRULGPWKeYbuzlxrcDxVEMs
	 dCAMT1dd1KdOw==
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4h9qX72MQ1zryv;
	Thu, 30 Jul 2026 15:18:31 +0200 (CEST)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Thu, 30 Jul 2026 15:18:27 +0200
Subject: [PATCH 1/2] arm64: dts: rockchip: enable CAN0 on RK3588 Jaguar
MIME-Version: 1.0
Message-Id: <20260730-jaguar-can-v1-1-9b566bd785da@cherry.de>
References: <20260730-jaguar-can-v1-0-9b566bd785da@cherry.de>
In-Reply-To: <20260730-jaguar-can-v1-0-9b566bd785da@cherry.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Cunhao Lu <1579567540@qq.com>, Marc Kleine-Budde <mkl@pengutronix.de>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.16-dev
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_061838_047787_FA1338DC 
X-CRM114-Status: UNSURE (   7.22  )
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

RK3588 Jaguar exposes the CAN0 interface on the P5 connector on the SBC.

Enable it.

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
index 41758fe7d3689..ed6c1162bd821 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
@@ -195,6 +195,12 @@ vcc5v0_usb: regulator-vcc5v0-usb {
 	};
 };
 
+&can0 {
+	assigned-clocks = <&cru CLK_CAN0>;
+	assigned-clock-rates = <300000000>;
+	status = "okay";
+};
+
 &combphy1_ps {
 	status = "okay";
 };

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

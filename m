Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C82F1CA0EE4
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Aug 2025 12:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WDcNbwWv8OACidkIi/ZvytYtBUOa4TaiRwwMXR71jCE=; b=2YofjeK5J1WyYO
	D+KxtikkUMFnEjEAZlxm7/FIQgmzjMTBpNgsg9wbTJRaeyS4kifRzdDnyv2AQAiFImAZAqB91L9UF
	JTBue57EJLvRhFhjSw1hEjQdT8OLTmAAz0iSKVm9VNN+fZQEMAe/ilNt4uCnGUF2cQ1RCWDWKiG3l
	5nqGI9T8N0+ApuAdwYRJAgWd6v3cFNcueWgeCuPF5WyJoQrx7JACDIb9PmliZ2YqnqmCt9WUucftE
	6ddwfwRpRegSpYAkaVXIBsfaYGuPSn6MgKieEynhLiLBy0tzNJ0HD/l3XIqldUmzRDT3Nrn4W2w9i
	fqFo5sg0Y64qn9jJlviQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upnlh-00000004m7S-1UuK;
	Sat, 23 Aug 2025 12:54:49 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upnbH-00000004l3W-071J;
	Sat, 23 Aug 2025 12:44:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id A9B95A58A1F;
	Sat, 23 Aug 2025 12:44:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3ABCDC4FDF9;
	Sat, 23 Aug 2025 12:43:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755953034;
	bh=B0yWv5F7kSvazoMcjgU+eIFJl5bLPubYgvJIyWU40a4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=Is+9f/LKlPgXOnVoQjCbpl0SRkyPIhdLVusrD1VHKH4EhAX0rOXLL76gpa93j1Uka
	 YEaQNCztshxn2SyniYROzQjnTCF5MRuz9omm8IRZGZs9mFqnIivO+IreUMWKBeuID8
	 zxJNgOTuUrJo7qYvLB363lOnT7OuGKRDakkCNnlE6dZleVTE7LKmuxGM3sDe76QwcG
	 BPed3Z+7askIlg6pPFfJrS/26E3jysNElOV91/HBqnzWtfYkxxe9TstmdN6x3de0dz
	 LtOGOBFu9xDk4xoQDzShFgmza6EL2LCe7z+y+/O2VyDShlcTFACJ0qqvsvAUsRS4eN
	 k499aE2fooCVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 321B6CA0EE4;
	Sat, 23 Aug 2025 12:43:54 +0000 (UTC)
From: Maud Spierings via B4 Relay <devnull+maud_spierings.hotmail.com@kernel.org>
Date: Sat, 23 Aug 2025 14:43:50 +0200
Subject: [PATCH 1/3] arm64: dts: rockchip: Fix the headphone detection on
 the orangepi 5 plus
MIME-Version: 1.0
Message-Id: <20250823-orangepi5-v1-1-ae77dd0e06d7@hotmail.com>
References: <20250823-orangepi5-v1-0-ae77dd0e06d7@hotmail.com>
In-Reply-To: <20250823-orangepi5-v1-0-ae77dd0e06d7@hotmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Ondrej Jirman <megi@xff.cz>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Maud Spierings <maud_spierings@hotmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755953033; l=1342;
 i=maud_spierings@hotmail.com; s=20241110; h=from:subject:message-id;
 bh=kGPjNY4n/uxG/MNPreW3TR8PtxdOfCOti3K91Nz2Q5M=;
 b=DIIVLpd0YMMUOmcU63vKLqzgA2GVop3tml6nsagnUg28WHgYFNVQa1U8unq2gIzeNRFYO+3xa
 zedfsD0szo3C/pGzsmbaED6YJPXVZCsHsZqCDvRN/JxRx91zW/Cx/Jk
X-Developer-Key: i=maud_spierings@hotmail.com; a=ed25519;
 pk=CeFKVnZvRfX2QjB1DpdiAe2N+MEjwLEB9Yhx/OAcxRc=
X-Endpoint-Received: by B4 Relay for maud_spierings@hotmail.com/20241110
 with auth_id=273
X-Original-From: Maud Spierings <maud_spierings@hotmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250823_054403_133380_FD6C9C11 
X-CRM114-Status: GOOD (  12.32  )
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
Reply-To: maud_spierings@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Maud Spierings <maud_spierings@hotmail.com>

The logic of the headphone detect pin seems to be inverted, with this
change headphones actually output sound when plugged in.

Verified by checking /sys/kernel/debug/gpio and by listening.

Fixes: 236d225e1ee7 ("arm64: dts: rockchip: Add board device tree for rk3588-orangepi-5-plus")
Signed-off-by: Maud Spierings <maud_spierings@hotmail.com>
---
There was a big change at some point so it will take some effor to port
it back that far.
---
 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
index 121e4d1c3fa5dab0d08edf7cba692a765b48f7b4..8222f1fae8fadc5cbb4ef16b3db5ed975ed43915 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
@@ -77,7 +77,7 @@ &analog_sound {
 	pinctrl-names = "default";
 	pinctrl-0 = <&hp_detect>;
 	simple-audio-card,aux-devs = <&speaker_amp>, <&headphone_amp>;
-	simple-audio-card,hp-det-gpios = <&gpio1 RK_PD3 GPIO_ACTIVE_LOW>;
+	simple-audio-card,hp-det-gpios = <&gpio1 RK_PD3 GPIO_ACTIVE_HIGH>;
 	simple-audio-card,widgets =
 		"Microphone", "Onboard Microphone",
 		"Microphone", "Microphone Jack",

-- 
2.50.1



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

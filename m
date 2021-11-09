Return-Path: <SRS0=ojj+=P4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C60BEC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Nov 2021 23:15:11 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 924D7610F8
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Nov 2021 23:15:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 924D7610F8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bXthCf5KrsbTCQDwMc4B+luNdksNi1WnBXHZjVj4XJQ=; b=wC9h/KkLEFG0Vo
	70U9bU3LyTemwNL+V2DChaeIAyNVpLHhYUR3txmM/O4IgTTRjaZmbSv6YFxVupfiSyhFj5WmeISlp
	1F9MIk5KIFGz9dXkWJ3t4+p0bP0ONJPVnZuMSZ8OCNJ4kzYbfM4we/opOSeQlkrJEKz2TsP3gXttS
	fPelbj/wAC2EqH4Le3DW4II2nuzVupajPO4sUPceTeV657hZoqXCRxNefvAge42MTwmB9smYoJiVK
	qrhXqpojj0l+Qhg7UVc/Z7NQglFAZNff1aEJ6Hq9drdkauT2aTI4FTBaVMa1Sb2vuVgOuc2wdMb9F
	WPTWXVrvzt83fcuvWC8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mkaKZ-003m1V-Ve; Tue, 09 Nov 2021 23:15:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mkZUX-003Nn5-Mc; Tue, 09 Nov 2021 22:21:23 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id DCD426137F;
 Tue,  9 Nov 2021 22:21:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1636496481;
 bh=rEvDH9e3e1/shQ8LDA401Gfc3RUsnKGokhs7qjYwDd0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Av22EoRo0u8DkelP9vHS+nmfQ2PGhKiOKzaYg/rzMshUfM0WUp29UDF9uxAQAKwEt
 s7OiosbKtO3dgxWEzfJWVpaZLLLqjUvE0fnEvseONy4ioc4eImVOk0pBBicoAZoOBL
 rTCHkO6+cbRLMiD4YvBJM8Nmmmk1h1p34u26HF7ENVjAcFy5u6Xa+4/cCYDYSvE5yv
 M6CvoN6A6VcpKLHSMhkEEzmXf5XaxIDRus9cNJKxvih6trEU2tt6YKG1mk/qqNatkk
 VX4RfgHf2C5DyAhORKU+4jPs+KgK36WXnYzEp+fK94+KUcD4q3SOBEO9xlcqzR4cp/
 9uqEX8XkWlVQw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Matthias Brugger <mbrugger@suse.com>,
 Guillaume Gardet <guillaume.gardet@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Sasha Levin <sashal@kernel.org>,
 robh+dt@kernel.org, pawel.moll@arm.com, mark.rutland@arm.com,
 ijc+devicetree@hellion.org.uk, galak@codeaurora.org,
 catalin.marinas@arm.com, will.deacon@arm.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.10 09/50] arm64: dts: rockchip: Disable CDN DP on
 Pinebook Pro
Date: Tue,  9 Nov 2021 17:20:22 -0500
Message-Id: <20211109222103.1234885-9-sashal@kernel.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211109222103.1234885-1-sashal@kernel.org>
References: <20211109222103.1234885-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211109_142121_812633_EF450711 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
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

From: Matthias Brugger <mbrugger@suse.com>

[ Upstream commit 2513fa5c25d42f55ca5f0f0ab247af7c9fbfa3b1 ]

The CDN DP needs a PHY and a extcon to work correctly. But no extcon is
provided by the device-tree, which leads to an error:
cdn-dp fec00000.dp: [drm:cdn_dp_probe [rockchipdrm]] *ERROR* missing extcon or phy
cdn-dp: probe of fec00000.dp failed with error -22

Disable the CDN DP to make graphic work on the Pinebook Pro.

Reported-by: Guillaume Gardet <guillaume.gardet@arm.com>
Signed-off-by: Matthias Brugger <mbrugger@suse.com>
Link: https://lore.kernel.org/r/20210715164101.11486-1-matthias.bgg@kernel.org
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index 219b7507a10fb..4297c1db5a413 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -379,10 +379,6 @@
 	};
 };
 
-&cdn_dp {
-	status = "okay";
-};
-
 &cpu_b0 {
 	cpu-supply = <&vdd_cpu_b>;
 };
-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

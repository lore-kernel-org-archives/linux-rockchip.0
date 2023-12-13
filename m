Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C72CC3DA79
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Dec 2023 18:51:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tpUYKySxGxBPES8efSceqCDrAH5WR1/lDDthno9vTpE=; b=nFx2sdzktaCCaN
	vSto7T5rKf2lg0dLf96UVtYdkD1A6OUJXnqw4/hLuy9x4T1Xpby3itVWPTeM2qRVMCDBV6im4RbSM
	96E25vJXyrgMssdmgb+DSufKyoOTpMSAHBbJIATy+EqVJ0xh17PC4D9eK7wDnArpU8Vr+DEkov5Iz
	OxME+NiHIvlWT76UZk2gszY5jjMRaJaW3eq2KjG01wee5eAPXr6L+3uR2+Ns4Qtur0jAby68tnzSM
	vBU2KaqbZRysmnkChee5c1xdaoFXI75jdq3Q/jUfTXDzdwm6mkmwnwXET00JttpoEv8QK9tCOdglT
	yWyvSqIVrqMd+rEa70Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDUKJ-00FlJy-07;
	Wed, 13 Dec 2023 18:51:23 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDUKG-00FlIY-0o
	for linux-rockchip@lists.infradead.org;
	Wed, 13 Dec 2023 18:51:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1702493476;
	bh=UCS+KPsxvcp4BORj2nXaNk+rHiVu0HA6p/TRoZ/FmIA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=MWLfB7DNmAEZk5yiIGOD6VtQ4pER8tPRkgFLOrOA4h4Pjw28IbewKE/a+2gM/c2Yq
	 FrnzYLdsYMe9Ak7NSvh2zMzH4o9elDzhR7pwIeVpLYGMUu3RAiyZqCYG5kEA2H5vVw
	 zMeGdzlUbrUIhjbPCCSWfnqdurEbGBfYQEj/4u7MLSn4fapnnKuTCUeRDg7BO4sUZ8
	 ntm1DKz0/iBlKwWRig1G2x6qVCYQdvBwQQqTb8mqON0SMHT6TQgjdpmUks34RS4asl
	 v1V5BsWnVsRw40+2e3P6zxzXOFZ/Qit/kiSR2E0fRfZgAIOZ4GoOluWdXqF21oywNu
	 jspGazUgVi3cQ==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id ABFDF378149C;
	Wed, 13 Dec 2023 18:51:16 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 36A64480104; Wed, 13 Dec 2023 19:51:16 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Elaine Zhang <zhangqing@rock-chips.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	linux-clk@vger.kernel.org
Cc: Kever Yang <kever.yang@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	huangtao@rock-chips.com,
	andy.yan@rock-chips.com,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v7 2/7] dt-bindings: clock: rk3588: drop CLK_NR_CLKS
Date: Wed, 13 Dec 2023 19:46:47 +0100
Message-ID: <20231213185114.47565-3-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231213185114.47565-1-sebastian.reichel@collabora.com>
References: <20231213185114.47565-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231213_105120_448449_9677C661 
X-CRM114-Status: UNSURE (   9.78  )
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

CLK_NR_CLKS should not be part of the binding. Let's drop it, since
the kernel code no longer uses it either.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 include/dt-bindings/clock/rockchip,rk3588-cru.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/include/dt-bindings/clock/rockchip,rk3588-cru.h b/include/dt-bindings/clock/rockchip,rk3588-cru.h
index 5790b1391201..7c6f0ec7c979 100644
--- a/include/dt-bindings/clock/rockchip,rk3588-cru.h
+++ b/include/dt-bindings/clock/rockchip,rk3588-cru.h
@@ -734,8 +734,6 @@
 #define PCLK_AV1_PRE			719
 #define HCLK_SDIO_PRE			720
 
-#define CLK_NR_CLKS			(HCLK_SDIO_PRE + 1)
-
 /* scmi-clocks indices */
 
 #define SCMI_CLK_CPUL			0
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

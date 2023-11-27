Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FFF9C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 08:14:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4BC5M5h5Lf9G+bHxFrBPlHb7+55bZqzyUXj0DZStDOc=; b=uhU252Jc5G1qZH
	ev74nMW3Egv2zVQHam7KTLOBeJ+6lMgonWKCEJAklEPIEI+ZmbV73HbHZmMZutQu6Ap+KVdNuQvW4
	xhc1mQiPCYQ9ILYz0WD+peiHMeDps/2U8MnXBR6TDnzak7JWbgk5YPMkMo44I+FZqf8Bovslx+IAu
	li6RbcPdmnDr4PgS7c+YE9V8fVxLw2Q1+ZvrktKBcJqBZEkvqGu9UYJp/meel1rahNenM/T0zDWlN
	GnT8djsIACOgHH65MbgIocZvnubxtAfk3Kt7EfnjbQ5OT6RM50O/vVX2+qgMGgE0soGI6WFtHw7V+
	qiukRU7EykocvPJG00FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7Wl9-001nxh-24;
	Mon, 27 Nov 2023 08:14:27 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7Wl6-001nwB-2T;
	Mon, 27 Nov 2023 08:14:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 43C592F4;
	Mon, 27 Nov 2023 00:15:08 -0800 (PST)
Received: from e129166.arm.com (unknown [10.57.4.90])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E7FBF3F6C4;
	Mon, 27 Nov 2023 00:14:18 -0800 (PST)
From: Lukasz Luba <lukasz.luba@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: lukasz.luba@arm.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	daniel.lezcano@linaro.org
Subject: [PATCH] arm64: dts: rockchip: Add dynamic-power-coefficient to rk3399 GPU
Date: Mon, 27 Nov 2023 08:15:11 +0000
Message-Id: <20231127081511.1911706-1-lukasz.luba@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_001424_902567_1C2C839C 
X-CRM114-Status: UNSURE (   7.59  )
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

Add dynamic-power-coefficient to the GPU node. That will create Energy
Model for the GPU based on the coefficient and OPP table information.
It will enable mechanism such as DTMP or IPA to work with the GPU DVFS.
In similar way the Energy Model for CPUs in rk3399 is created, so both
are aligned in power scale. The maximum power used from this coefficient
is 1.5W at 600MHz.

Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 9da0b6d77c8d..87cfdf570b19 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -2113,6 +2113,7 @@ gpu: gpu@ff9a0000 {
 		interrupt-names = "job", "mmu", "gpu";
 		clocks = <&cru ACLK_GPU>;
 		#cooling-cells = <2>;
+		dynamic-power-coefficient = <2640>;
 		power-domains = <&power RK3399_PD_GPU>;
 		status = "disabled";
 	};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 019B1D31A03
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jan 2026 01:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1BkUBVwhB11gqq9wPR3Hxh29nhGjM8V5v/n1bxN6UWE=; b=GF1MJcSYhVkHZI
	lcicgvF0en8G7eu1Jf2n5h+t8m1chv5tkXoXf5rmUlKJ1nqDmUKLHnNlRUDtdwxqbMGLjBQxhJz9p
	cP79nWvSoHbAFiJyPI8pKDRP5pEBgijA2tBUnO6iwSxQPgk191lQ/uAd52xrVu4ZzLRx3oDCRFkUI
	Tzz0ifrws2yczMz1Szf41n4AY74nndSrMHhZTA1vP187vGx1HapDgo5hqGwAJOFJE750cJF0bTka/
	qH3uqDn7n2Mt/HN6rRzYexwIc3KlJCDwRscoT4A8rffCcTOD/S3wNnxnfMjGC6Gbqqd0fMclDZuA2
	KziSzFXtlhNNMbKuJoVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfpyv-00000007xk1-1GpP;
	Wed, 14 Jan 2026 01:47:33 +0000
Received: from mail-m15579.qiye.163.com ([101.71.155.79])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfpys-00000007xhJ-29Sy
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Jan 2026 01:47:31 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 308c2b3f2;
	Wed, 14 Jan 2026 09:47:26 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	FUKAUMI Naoki <naoki@radxa.com>,
	Marco Schirrmeister <mschirrmeister@gmail.com>,
	John Clark <inindev@gmail.com>,
	Tianling Shen <cnsztl@gmail.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v3 3/3] arm64: dts: rockchip: Add cd-gpios for sdmmc of RK3576 EVB1
Date: Wed, 14 Jan 2026 09:46:54 +0800
Message-Id: <1768355214-198361-4-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1768355214-198361-1-git-send-email-shawn.lin@rock-chips.com>
References: <1768355214-198361-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9bba2fb1c709cckunmdcf78111428428
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGR1IHlZKGRhLHklPQk1OSkhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=TtkmPHHnHMZ4s1H8rTixX3PpxfIunRdAYtGiCRqwp5FEbd3r5iJD0jtMUeb2XXGO68xWaDWb5zAEDyd/zeSsXQEVYB0dE4JxyEZqJ/xqueibvl6Hoy0Zlwm/Z+c9MsCN06zNdAbLFABcbCfUaDU2L3z7JKh+u2o90KU1pgaLTfY=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=InKQePmcX/j9l0HAXLBjN5cQb6WCehstA9IdFLhiYmc=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_174730_731011_381614F1 
X-CRM114-Status: UNSURE (   8.44  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Without cd-gpios, the sdmmc would not be detected, because during
runtime PM, the clock is gated which prevents the irq from issuing.

Fixes: f135a1a07352 ("arm64: dts: rockchip: Add rk3576 evb1 board")
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v3: None
Changes in v2:
- add fixes tag

 arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
index 0789733..b583cec 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
@@ -958,6 +958,7 @@
 	bus-width = <4>;
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
+	cd-gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
 	disable-wp;
 	max-frequency = <200000000>;
 	no-sdio;
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

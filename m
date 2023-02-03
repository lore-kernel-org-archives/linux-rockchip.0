Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D1BBC636D4
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Feb 2023 12:56:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cHHw2QHDjfaGj/Ar5d885KaWD5P9jtLt6cwBvVP694w=; b=onl8qSXItAOBF4
	jgqCSxhy5VacoeR/w3oZlPl5jBgbSb3nCkCwn/+zivEicJzTxVD5h1aCFWT809mIxuLwEjYYTBuAR
	gWNYr7n62istELp2vyIpjot3DOirD141kgqtoAnT0F5jal0rPPQsV86AQIVkuNPq6fxHGEMP9YIwN
	EUg96bVYJvbEsWmcFsi1ZIRL5JG+TJJl5A/6dS1jxUHbATXxMn7L1Pe1AhLD5nk4ZPx+xPTuMmH+d
	ws2LyB2meUtVJmoKFrRcOUBdcK31ILJjtp3jF3ME3c7rUdJM73AY4Rf1v/9qNQYYn5HcYMW0WJnqW
	bWNCAK/yjxTbee7CG0Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNvcD-001tA2-H6; Fri, 03 Feb 2023 12:56:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNvWT-001q2d-RQ
	for linux-rockchip@bombadil.infradead.org; Fri, 03 Feb 2023 12:50:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=IbamO55A5NJ/lVcNdBm7yQ2DxJhuj3fp3jyii4pzJ4o=; b=HPt1sdivrE7PSgqNBN0/3fxl8j
	vxrInoJ+HDACSjuK6ZIpZpnLU5Rtv55m7zbk+qinomV9F3QT9VLZmQnKCHJaXYqFLgWai6qFD96dF
	PYohX3DZCaI0nSPSI/iML/r7domA3Dt5eucbCYHqNAqcnKWgrq98gltCDC1dnuQwiHM/80EU/YPHX
	+zkg9rxT35MQKG+A7jRNlzd6k7n/JhyHiWMADFowKeLqJq5A6CMdBf2PHNANexFD1LCqKlvKm0N6H
	MgF9ed2d7fTMpevCNKIR9SoqfM998NbR1n5PhXY8W2AvwTPRHKxvFQvx5j2JfFobzT3oNdcmyFvNb
	ZUYbmKQg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pNvVo-005VfO-10
	for linux-rockchip@lists.infradead.org;
	Fri, 03 Feb 2023 12:49:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pNvWI-0000bU-GK; Fri, 03 Feb 2023 13:50:22 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pNvWB-002Oq3-Jd; Fri, 03 Feb 2023 13:50:16 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pNvWA-000ZmV-7v; Fri, 03 Feb 2023 13:50:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	kernel@pegutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 17/18] arm64: dts: rockchip: rk356x: Add DFI
Date: Fri,  3 Feb 2023 13:50:11 +0100
Message-Id: <20230203125012.3804008-18-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230203125012.3804008-1-s.hauer@pengutronix.de>
References: <20230203125012.3804008-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_124952_629571_9091308A 
X-CRM114-Status: GOOD (  11.96  )
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

The DFI unit can be used to measure DRAM utilization using perf. Add the
node to the device tree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 5706c3e24f0a0..8d818b98a5e65 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -947,6 +947,12 @@ qos_vop_m1: qos@fe1a8100 {
 		reg = <0x0 0xfe1a8100 0x0 0x20>;
 	};
 
+	dfi: dfi@fe230000 {
+		compatible = "rockchip,rk3568-dfi";
+		reg = <0x00 0xfe230000 0x00 0x400>;
+		rockchip,pmu = <&pmugrf>;
+	};
+
 	pcie2x1: pcie@fe260000 {
 		compatible = "rockchip,rk3568-pcie";
 		reg = <0x3 0xc0000000 0x0 0x00400000>,
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB47FC77B7C
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 May 2023 11:40:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ULpGpWFcuuVMCxR2iG1frjlhMNRPb0RR0jiEeo9oOKc=; b=EQq0NqA+7WYK1x
	wqKzF3aqUxAmyDkhSsPhAHPNgE8aYWaRBS8VxuCs8+CSoIOKsZzJ9Dx0pvn02+ChgsLWIrJgkEDQG
	l74MLZlKOiTS6QGt7q1zRWae+1sjb6yKLkIAjE/KmvR8Qsl1Ys8+TjR07OgIrRNUhp9mFPBwNj/vc
	qHN08E3Zw5sQisLBL1zSGsam5uoExhdLufgPaXPQgTKnQbuUY1yL6FKRQNo8z7b2bFDffPSEo1i0U
	OStaTuabzRpmPs50sYbSjE6+N7iRUKkP8TfLN+XgxfSe0DY1ygYmSEKVKUJ/tsCJ232BDo0R9QUck
	FflNPN8jO5HoSo2Z92dA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1putnF-00AjkI-1Z;
	Fri, 05 May 2023 11:40:09 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1putmW-00Aj8N-1v
	for linux-rockchip@bombadil.infradead.org;
	Fri, 05 May 2023 11:39:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Jd+IIpTgwrMa9+uGXeszVlN29VuPYmh/lG3XWp6DvqI=; b=REzWQ4AkVu5oy8yo/HWNuUdQ/G
	xTdNmcQ8SFNk5ifa6TPzlOyVAyv+OGpZhACUw8eFT5Y4ZuH/ThV5cRkKiEtifRxR3FXaIhRuu/cPk
	gcMiWcT/ZKJbHv26OXMoFoynPu7hAaSC7TDZaFevPlXNTPIatTlCMf9S94vY/aIBQKw8OdensiQZ9
	A9vaGY1UVH9WfK574cCzEK8uyjf8PRFGY/Pq48eIYWFIQADf2lUYPc8X8UXD3DGoMUQeogPjp5cgH
	2Grd3XVb+prUy9SBWGaPhNdxA98kL4TcV0/OZpojgUVOJ7gBhUyw5k40YtSgcogZs597x4Mho8dwQ
	b9feyyyA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1putmP-00BS2o-9t
	for linux-rockchip@lists.infradead.org; Fri, 05 May 2023 11:39:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1putmB-0001Vj-Qx; Fri, 05 May 2023 13:39:03 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1putmB-001Hbj-02; Fri, 05 May 2023 13:39:03 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1putm8-003Rpk-Eh; Fri, 05 May 2023 13:39:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v4 19/21] arm64: dts: rockchip: rk3399: Enable DFI
Date: Fri,  5 May 2023 13:38:54 +0200
Message-Id: <20230505113856.463650-20-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230505113856.463650-1-s.hauer@pengutronix.de>
References: <20230505113856.463650-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_123917_447364_8E3664DD 
X-CRM114-Status: GOOD (  11.57  )
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

the DFI unit can provide useful data for measuring DDR utilization
and works without any configuration from the board, so enable it in the
dtsi file directly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 1881b4b71f91d..4806afb8fd8ae 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1331,7 +1331,6 @@ dfi: dfi@ff630000 {
 		interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH 0>;
 		clocks = <&cru PCLK_DDR_MON>;
 		clock-names = "pclk_ddr_mon";
-		status = "disabled";
 	};
 
 	vpu: video-codec@ff650000 {
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

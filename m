Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC189C77B75
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 May 2023 11:41:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kZuaIkFaaXNXCfsiCZPYUr+/QiJ/SV6NrdV5q5LQB1U=; b=WsasrCCubII3KV
	QwA2Lu8yW+U18UgKNY7P048EPxU++jrsP/zzuEga99wLGXBgRImwRd8W07wFGRcZBsMj9L6jxyx4n
	nOrXPf0B6/EL0HfLRwIZLFsLfG/XxLzfr+Cau02Ww5eoCuybbem1Rr+lQo2j2peaBMWKDaz31n9gO
	+nEjwA14CVVuaeLwXoNAaocvNMAaGlGkFXhZ3eAGmvV6jhJ2CF5rzimIDjSuUESEk/Rc7qt0AYMQM
	6/1fjU+msDbY652RP6dsyy+/7XwWIo9xc3jXrRC3lj9wqfNIwzi6/9FR0XSM8Q/OnSIFQjzk1blY+
	WTO/RfPqQGiGDTAWGJXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puto7-00AkYr-1Z;
	Fri, 05 May 2023 11:41:03 +0000
Received: from desiato.infradead.org ([90.155.92.199])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1putmg-00AjFV-1U
	for linux-rockchip@bombadil.infradead.org;
	Fri, 05 May 2023 11:39:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=aVjqV4MtE5ITqix7sUnBspHZ5Gr6w7Zhk4wt8spFKPo=; b=dZqDHz5RpO1gNbsA8Pcz9hG0WJ
	1960xt1s+tbnaAj+XOe+w/i3PWF/gPsV6zYN1zwcAzDqkKqOJxElVivEegJREE8KMw069EuCYHVaw
	xEF97Q7sbyKatA5n2iNBh+HAdowEwyK40BagKAxzKaDrjb9mYl+g4yHLNjPCOIxZktA5ugvgIZj4f
	NDngvC2oh+hg6tePrnIq1i4fq4keJ9D76p8DmHsK8RCzp4rlWP/dpu8pXV9TYvlY/1j/Bp/haivbh
	W85hPbcSLqcy5kTcskmAJP/1tFjmetuG5hZ+huN7p7iwUChLFXezKJG/E1WcABY2/iHPh7d3MZpFX
	C0cw893g==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1putmP-003EU2-0l
	for linux-rockchip@lists.infradead.org;
	Fri, 05 May 2023 11:39:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1putmC-0001Xy-C6; Fri, 05 May 2023 13:39:04 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1putmB-001Hbx-Js; Fri, 05 May 2023 13:39:03 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1putm8-003Rpu-FM; Fri, 05 May 2023 13:39:00 +0200
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
Subject: [PATCH v4 20/21] arm64: dts: rockchip: rk356x: Add DFI
Date: Fri,  5 May 2023 13:38:55 +0200
Message-Id: <20230505113856.463650-21-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230505113856.463650-1-s.hauer@pengutronix.de>
References: <20230505113856.463650-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_123922_870090_1F4499A1 
X-CRM114-Status: GOOD (  11.31  )
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
index eed0059a68b8d..2fe297e125410 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -948,6 +948,12 @@ qos_vop_m1: qos@fe1a8100 {
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
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

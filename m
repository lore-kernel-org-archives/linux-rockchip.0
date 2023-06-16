Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A6E4EB64D8
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jun 2023 06:23:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/S3Dae+y0FgC/9g+z1WskJC0HES/bf12QP6sAPOY1/8=; b=3FCR+cM87SkIHw
	8Jhjh82HcD7Y7SKFr7H542QsOqDHIb2JKzfFTfJ+W30H/90Gag8Jd4Q7ylPybvDh8gYFOlFVPCE6n
	hs5YoUQknM2WCjnxoLufre579eRSx3dEZZLGFyGBHjtqCzJifUSAKKkSLup/4+78nVZ1wb+RcqX4I
	vvmiHB3j4aFHWzcnmKxbM1Ge4LipKhn5Uhm35oSyibojIpRgCMtIHKJWbKa7jITdt35ea5FpfCvlK
	B+hr7CM3LIO51tGFGPZDBt/I9sjK2VH0MvHyydxXPKuO+XvQjn3LBczIBo8lvY8AMnh1pIkqrVrJD
	1MLWWnXIpG1Xkxvnc1jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qA2ri-00H0qF-0N;
	Fri, 16 Jun 2023 06:23:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qA2qf-00Gzt8-29
	for linux-rockchip@bombadil.infradead.org;
	Fri, 16 Jun 2023 06:22:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=nPUmlReWZjdjqhiEw3A06PqT9nUExktvl86kDh+a2k8=; b=oRNmqoApP1BkRhVwFHffiOAp+Q
	/6PjmxV0MCjGmP15xA84NcfKjaZSBTNkSeRQ7qCJIFqmClu8KMAmChEfAjIpvAY9knpkb9aVyiJqN
	BXxoztUej8M6SuelSW4PIg3tFmoJf0zC3AOT3M6GtF1RDFkDvTA1zrj1XuXyYtONUnbWKT2Dd4/tx
	Mn4gLoShRiyF4U2CrCiar1potH0yvPRlIySVj3d9Dk9v58OFdFTkWtLtNacvw/GPUWcC7EtVVFs+H
	f347vKO2ATQIUCxrcB0CUreAjAo4TXHwjjySm+03+dnONr6wp+oqJhAfIy7kfs8yCsRp/GcKh2Zpk
	JsxZCtgg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qA2qM-00Coro-0Q
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Jun 2023 06:22:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qA2q9-0006qr-Mz; Fri, 16 Jun 2023 08:21:45 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qA2q8-007kyb-Rx; Fri, 16 Jun 2023 08:21:44 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qA2q5-003FVp-LV; Fri, 16 Jun 2023 08:21:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Robin Murphy <robin.murphy@arm.com>,
	Vincent Legoll <vincent.legoll@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v6 24/26] arm64: dts: rockchip: rk3399: Enable DFI
Date: Fri, 16 Jun 2023 08:20:59 +0200
Message-Id: <20230616062101.601837-25-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230616062101.601837-1-s.hauer@pengutronix.de>
References: <20230616062101.601837-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230616_072202_322683_2A98D844 
X-CRM114-Status: GOOD (  12.13  )
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

Link: https://lore.kernel.org/r/20230524083153.2046084-24-s.hauer@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 928948e7c7bbb..fa0a5dbd1b0ec 100644
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

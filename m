Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E034FCD11C2
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Apr 2024 07:39:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zGWL8KzTek6xtxrkmzrldN1sd94WqJPEnPzPbiXxJHM=; b=KRou9nxOJO+XFJ
	P0iMK0W3pMLjV7Tn5fKLyqeiRe2qslzB1fdGQvXAjcTYks1VH+30HM2adgZTOpBu0z52R9hYxipuy
	wQbsjCEfrIH9JukX4p91Um7FJghX0jvUMFIU99a9mN0XIxsJwezGeJnc2KTlxDMmbrY0Qh5NqN2jW
	IgvykN8e0Sz9LE+XCNuHzPdwCu7X+IZ36mzHXcehuOFTjGxAYFmrN6X7tT0UxFA5bnyKoXa+X4VKF
	YjYjoHB4FAfWWg82MGdLbk6Vq/lnwfD6qr8GCCN63CooXNBF7qKZZa074S0ZmW/ZQlhGlZ60NN8cT
	25SuZTbdevJcJFTNC7Lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rseA7-00000005hgr-0Ez3;
	Fri, 05 Apr 2024 07:38:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rseA0-00000005hcI-3SFC
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Apr 2024 07:38:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rse9n-0005mh-Ok; Fri, 05 Apr 2024 09:38:39 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rse9m-00AWpw-TY; Fri, 05 Apr 2024 09:38:38 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rse9m-008vil-2g;
	Fri, 05 Apr 2024 09:38:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 0/2] clk: rockchip: clk-rk3568.c: Add missing USB480M_PHY
 mux
Date: Fri, 05 Apr 2024 09:38:35 +0200
Message-Id: <20240405-clk-rk3568-usb480m-phy-mux-v1-0-6c89de20a6ff@pengutronix.de>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAHuqD2YC/x3MSwqEMAwA0KtI1hOI2mrxKoOLWqMGxw8tFUW8+
 xSXb/NuCOyFAzTZDZ4PCbKtCfknAzfZdWSUPhkKKhQp0uh+M/q51JXBGDplaMF9unCJJ7KtjR3
 I5ew0pGD3PMj55t/2ef5cjpvlbAAAAA==
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>, 
 David Jander <david@protonic.nl>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1712302718; l=597;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=vQ7YjdW+WbHpC0xLIHJMSfC4F3iRv6PGDZttPLSFsQQ=;
 b=pwLH7RsZeVqeRv+Hs6sgkNUdr9dYoH7nRa3mc+avkQ5L0thZNLZkWIUmnH8EIQpNAd0kaGpop
 qFfriVyuetMDyKDQu35LoOEtdH7ufuWyAF8Cz+6tgl5EKGYVtWF1AjH
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: s.hauer@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_003852_963645_2D5FEC31 
X-CRM114-Status: UNSURE (   8.15  )
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

This series adds a missing clock for the Rockchip RK3568.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
David Jander (1):
      clk: rockchip: clk-rk3568.c: Add missing USB480M_PHY mux

Sascha Hauer (1):
      dt-bindings: clock: rockchip: add USB480M_PHY mux

 drivers/clk/rockchip/clk-rk3568.c      | 4 ++++
 include/dt-bindings/clock/rk3568-cru.h | 1 +
 2 files changed, 5 insertions(+)
---
base-commit: 39cd87c4eb2b893354f3b850f916353f2658ae6f
change-id: 20240405-clk-rk3568-usb480m-phy-mux-ea78af0c1ec5

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

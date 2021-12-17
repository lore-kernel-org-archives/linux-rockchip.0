Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4A37C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Dec 2021 13:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FNQO3/TLOYdyFJOzyR/119kLujW1qgRAACF7k2dMEj0=; b=JYb/V8fk821tdF
	7YF8WXAsXAHxZeNKeGrUw+cB2tmlgQ/zO6WiJVqhgDoqQb/PYK8QRgWoNEjadV1NiHlwWVmDOzPgU
	V7Od6lb5JU6CIc6RDVd/45+nmZRul1CIYqbrz276QlZu1EqsNujhzE0CFjetmEnyo58u13oidgOS9
	N4z0Uc9lSw4kWBipTS3AIrwqSU6l2qpkoKB+TzwmZsE6lIVYdbByRM9RdZsGZ7kamZx9RVt9T+f3O
	rNVpYbB7pC6vmPhfVZYMXhC5KydOPCdQahtgCEfyimDngvT3WqGBg6zsYayfI6k4/+ZXWNgcOcRaN
	fCql1Cef41H1lNS4KTAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1myCzl-00AIyu-Dm; Fri, 17 Dec 2021 13:09:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1myCzO-00AIof-Kr
 for linux-rockchip@lists.infradead.org; Fri, 17 Dec 2021 13:09:39 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1myCzF-0004Uo-9K; Fri, 17 Dec 2021 14:09:25 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1myCzD-00Cjpy-V7; Fri, 17 Dec 2021 14:09:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 0/4] soc: rockchip: power-domain: Add regulator support
Date: Fri, 17 Dec 2021 14:09:15 +0100
Message-Id: <20211217130919.3035788-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211217_050934_739884_79CE92AA 
X-CRM114-Status: GOOD (  12.37  )
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

This series adds the possibility to add supplies to the rockchip power
domains. This is a bit more complicated then it should be as we can
get a regulator from a device node only when a device is attached to
it, so this series starts by moving the power domains into a device.
Overall this series makes the clock handling nicer because we no longer
have to use of_clk_get(), but can use a plain devm_clk_bulk_get_all()
to retrieve the domain clocks.

All this is needed for the RK3568-EVB board where the power domain of
the GPU is supplied by an external regulator.

Sascha Hauer (4):
  soc: rockchip: power-domain: register device for each domain
  soc: rockchip: power-domain: Use devm_clk_bulk_get_all()
  soc: rockchip: power-domain: Add regulator support
  dt-bindings: power: rockchip: Add power-supply to domain nodes

 .../power/rockchip,power-controller.yaml      |   6 +
 drivers/soc/rockchip/pm_domains.c             | 322 ++++++++----------
 2 files changed, 157 insertions(+), 171 deletions(-)

-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

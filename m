Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5019CCD199
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Oct 2025 15:00:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u6GIQ48ZuMZ1WeFhRZLtSeFXK3KIcF+OOF/T5VmFUlQ=; b=RQYZ8EXjUPTIWi
	QUHVQ1m9XwKyo+f2UkgHVrxrmH+zOTs42Hy5fS0KAkdTXrkL8GfMsg1h4Y54Zs2LJ5kf6YuxT/d9T
	iYjTwL//Vtfux3XvraIZ3DfOLKtKZAwdhzO6bUV/QkMCHoMMKDdyo8XwKmwtBYau4n46fQS4uVcT2
	YPAZ6bOBeby2G4NzDa1SLWLmC5dX8bxWXnC5m3Fa7GKrBIfDGR8YOqGOqmnIYrS2lzQot2Dy2czxE
	5h/ce6qXf2KOxUX1aMogL5xrjozgSZoW42/fFAauJxWKO18geWdngQKq5OSySU/t+WK4/zRjh9lqY
	UoQ3lMz9a3xiKdNWUUdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9lwb-00000008BoT-26Rt;
	Fri, 17 Oct 2025 15:00:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9lwa-00000008BmI-0hft
	for linux-rockchip@bombadil.infradead.org;
	Fri, 17 Oct 2025 15:00:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=acA95Xvg9priKPeRhiKIT1XQiR8GD1M4gNqXOoAK4Tk=; b=gS3L4LQdQ4bo+Sy3HFAJ9aVqkZ
	T9BapsPPlFKsN2pG+yAPdS8ulbZRUNtQfVvtot+akar/0VxFK2jPeqXJfEc0Ycf3BvrO0gLa46wLK
	VYumfJUifmZTLM5I4gRJwgHpFFTegL7yjU2cmsUPeRqL+M08GGrq78MarVjKMuEOB0N0SgAhMMBtz
	Fz/j5eItLMnv6cphjj5AVVyWGfCCujcruSX3ruDZIdEjNqHhD51Ix3tkmGUUL9AT551l8s1e0iSh/
	v4p8FKFGgo7CNwsQs9iKB3qst9GrlAfHFyIluLCzfMxofyYTMkipZhxfYEn/yQyQ4tManTvfnzDb8
	xgPR/F+g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9lwT-00000007fGA-1WKp
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Oct 2025 15:00:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1v9lwJ-00028D-Pd; Fri, 17 Oct 2025 17:00:19 +0200
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1v9lwI-0044jX-3B;
	Fri, 17 Oct 2025 17:00:19 +0200
Received: from hardanger.blackshift.org (p54b152ce.dip0.t-ipconnect.de [84.177.82.206])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id A0CA4489289;
	Fri, 17 Oct 2025 15:00:18 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Fri, 17 Oct 2025 16:59:59 +0200
Subject: [PATCH can 1/3] can: bxcan: bxcan_start_xmit(): use
 can_dev_dropped_skb() instead of can_dropped_invalid_skb()
MIME-Version: 1.0
Message-Id: <20251017-fix-skb-drop-check-v1-1-556665793fa4@pengutronix.de>
References: <20251017-fix-skb-drop-check-v1-0-556665793fa4@pengutronix.de>
In-Reply-To: <20251017-fix-skb-drop-check-v1-0-556665793fa4@pengutronix.de>
To: Dario Binacchi <dario.binacchi@amarulasolutions.com>, 
 Vincent Mailhol <mailhol@kernel.org>, 
 Oliver Hartkopp <socketcan@hartkopp.net>, 
 =?utf-8?q?Stefan_M=C3=A4tje?= <stefan.maetje@esd.eu>, socketcan@esd.eu, 
 Heiko Stuebner <heiko@sntech.de>
Cc: kernel@pengutronix.de, linux-can@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Marc Kleine-Budde <mkl@pengutronix.de>
X-Mailer: b4 0.15-dev-2196b
X-Developer-Signature: v=1; a=openpgp-sha256; l=1070; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=xRvDLRixebYPSYwTuPzWzUvQiPgr3KsCHUzve9UgeMQ=;
 b=owEBbQGS/pANAwAKAQx0Zd/5kJGcAcsmYgBo8ln88IspOhek6G2ZvTtEwUJ3WTyKkZgEMRnh/
 Xvh67H1RCmJATMEAAEKAB0WIQSf+wzYr2eoX/wVbPMMdGXf+ZCRnAUCaPJZ/AAKCRAMdGXf+ZCR
 nIuUB/9w+vSk2ohkks7AVj4R3v9dUk0UVMeZh6rLYXJttbgEDD5Iv1UYMk2x8GtaF+ZDd/GtVU5
 nUsNekRejup2UXxGHA5RcfV0NccrtMld77ji+CTAGLJC5W2pk5BX68ymXPgVUYnOgbz8rtxZEji
 7WlOq/5rId3SDasoTD65ab5l8QXfMos5rZyq0lubMlT87lZSCQ0h3a242+mEUqq0GyHjDq1FDC5
 7QMoYNtWIeB2CXW7IjEkaeVn6dwnmTSErotlhsWX8x5IMnvwteY4GAll2Sfnb5Q6tvqBaUa2Fmz
 oymQfHOG1wvdzJaSKWrlHeKgln1Ym4K1HBNTxk+0KTYHh/KN
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251017_160029_623010_E5A97035 
X-CRM114-Status: GOOD (  12.41  )
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

In addition to can_dropped_invalid_skb(), the helper function
can_dev_dropped_skb() checks whether the device is in listen-only mode and
discards the skb accordingly.

Replace can_dropped_invalid_skb() by can_dev_dropped_skb() to also drop
skbs in for listen-only mode.

Reported-by: Marc Kleine-Budde <mkl@pengutronix.de>
Closes: https://lore.kernel.org/all/20251017-bizarre-enchanted-quokka-f3c704-mkl@pengutronix.de/
Fixes: f00647d8127b ("can: bxcan: add support for ST bxCAN controller")
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/net/can/bxcan.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/can/bxcan.c b/drivers/net/can/bxcan.c
index bfc60eb33dc3..333ad42ea73b 100644
--- a/drivers/net/can/bxcan.c
+++ b/drivers/net/can/bxcan.c
@@ -842,7 +842,7 @@ static netdev_tx_t bxcan_start_xmit(struct sk_buff *skb,
 	u32 id;
 	int i, j;
 
-	if (can_dropped_invalid_skb(ndev, skb))
+	if (can_dev_dropped_skb(ndev, skb))
 		return NETDEV_TX_OK;
 
 	if (bxcan_tx_busy(priv))

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

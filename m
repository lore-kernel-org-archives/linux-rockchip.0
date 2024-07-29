Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC81EC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jul 2024 13:15:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c3OAty0pnRok7EMxkgAIadQ6GM81CzvJ2R2PNbVRqL0=; b=GzfTK9T3nGziGR
	zDjW8fAq7/qEPIyvdnxesSZD9NxCzpGu23Ep/YltCJw2i2KaroRJdwA/XMb4CWqWn0XJHnnZKNy4k
	TKQps3ORb/qsl9UAU/fTpLH7tHVUxUNNgVgpuc4bHfnmNDotPWFEvR4QyCBqCkJAkX6BWYzd7+bKG
	UH9y1/txwcuBo78HXVRdBSGH5m9Ah/fnTFHBqVNTZeWQjDOsP6/ddFS0Oao86BVAIGtPepjb4wgPO
	qRMMr0WogAskiXIKlCB7JlpB3zkTFplOxwpiaf1terHC+6BlGtPcfT4lpUIgD2xUXA4Rr1KOC4UE5
	lj/lZXcwad5GB23CCGUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYQEA-0000000BOiL-044S;
	Mon, 29 Jul 2024 13:15:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYQ5y-0000000BLPj-01Y4
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Jul 2024 13:07:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1sYQ5w-0000xE-Ku
	for linux-rockchip@lists.infradead.org; Mon, 29 Jul 2024 15:07:20 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1sYQ5v-0033K6-7f
	for linux-rockchip@lists.infradead.org; Mon, 29 Jul 2024 15:07:19 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id E2E90310EDA
	for <linux-rockchip@lists.infradead.org>; Mon, 29 Jul 2024 13:07:18 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id 89EA2310E73;
	Mon, 29 Jul 2024 13:07:10 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id f6604ea6;
	Mon, 29 Jul 2024 13:06:31 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon, 29 Jul 2024 15:05:49 +0200
Subject: [PATCH can-next 18/21] can: rockchip_canfd: enable full TX-FIFO
 depth of 2
MIME-Version: 1.0
Message-Id: <20240729-rockchip-canfd-v1-18-fa1250fd6be3@pengutronix.de>
References: <20240729-rockchip-canfd-v1-0-fa1250fd6be3@pengutronix.de>
In-Reply-To: <20240729-rockchip-canfd-v1-0-fa1250fd6be3@pengutronix.de>
To: kernel@pengutronix.de, Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Elaine Zhang <zhangqing@rock-chips.com>, 
 David Jander <david.jander@protonic.nl>
Cc: linux-can@vger.kernel.org, netdev@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Marc Kleine-Budde <mkl@pengutronix.de>
X-Mailer: b4 0.15-dev-37811
X-Developer-Signature: v=1; a=openpgp-sha256; l=829; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=X2bxg+jou4U5hGaXKiE7cV5iCANBwwffLWJgMLlPWoE=;
 b=owEBbQGS/pANAwAKASg4oj56LbxvAcsmYgBmp5PQtF+eEcFBaoKWOLSlstAvHYWEUjMBDUWiY
 fxko0qCh22JATMEAAEKAB0WIQRQQLqG4LYE3Sm8Pl8oOKI+ei28bwUCZqeT0AAKCRAoOKI+ei28
 b3w3CACYdDk9GeFyKi7g79Gyp3surxMmUdrsl4PSQB+H1Il+2FPl2JLRqrMADLqi9FWGqZgFhJD
 3j/JAATZOFKD3WDX3tOq17WgGfJHv4rBJR/3m1F0vOgbZtKtdu+dYfCZGXVp6RghzIw3DhMaC0q
 LOeq244aXgpSeSt0UMFMxRhPZTxiD/Z9HATyRxq+6RTgngibM7ddoqAmVjnnPQ4piCOfoEWGvDp
 SO3nQmwfnBFAekEA++2N24LbA4Wu0h27JurPtM+54pja/LBdk6BDUeDHdegEuKqUsqEAe+sYwQi
 G1PTwhAErtbdIXaidqZSgUYc+3zdyolS6R1Cw2mWr1KdZe8L
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_060722_111646_6E99B1C8 
X-CRM114-Status: GOOD (  12.25  )
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

The previous commit prepared the TX path to make use of the full
TX-FIFO depth as much as possible. Increase the available TX-FIFO
depth to the hardware maximum of 2.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/net/can/rockchip/rockchip_canfd.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/can/rockchip/rockchip_canfd.h b/drivers/net/can/rockchip/rockchip_canfd.h
index 3c1d61c8632f..f06f6a83b77f 100644
--- a/drivers/net/can/rockchip/rockchip_canfd.h
+++ b/drivers/net/can/rockchip/rockchip_canfd.h
@@ -287,7 +287,7 @@
 
 #define DEVICE_NAME "rockchip_canfd"
 #define RKCANFD_NAPI_WEIGHT 32
-#define RKCANFD_TXFIFO_DEPTH 1
+#define RKCANFD_TXFIFO_DEPTH 2
 #define RKCANFD_TX_STOP_THRESHOLD 1
 #define RKCANFD_TX_START_THRESHOLD 1
 

-- 
2.43.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

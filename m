Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2C68C021AA
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Feb 2025 11:18:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IA9sYW7eaVHT/PXub9hcKVN8fcPmbmMM3CN0b3+3HOw=; b=x/ySbQ1Mv+s2ax
	5eGyx7FQF0lacEuc4i2UvUNv3tIp3lwhW5b7KpVwxA+cNZw1DLY85B2gal/ArTt3huqakD+SbdAiv
	LKEWJV3HTZFgFTboIl4vUJTLBsuGVW7mad958n7l9l/kdELf62MAqgjIAkdhoHCujBx1Js3WWz114
	M9xHB1J0a6AqpqI3WeT3Y2RA3XJmH7M7cOoiCRkuWnD7/3vOxTLmL/s/EcHnlKqlSWpn7Pa8pyHQP
	VU18+uR9zhTnO3y29H6s4ouCqsOL46fMf4bKvDLGZ2MpJnOsf7GeiQ7S8WYsteRM/v/q3RAq83L3n
	iBZkQD1EfGaoduUPmpOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tki5x-0000000CM9N-0VaE;
	Wed, 19 Feb 2025 11:18:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tki3U-0000000CLVX-0LMY
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Feb 2025 11:15:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1tki3R-0007iF-L8
	for linux-rockchip@lists.infradead.org; Wed, 19 Feb 2025 12:15:49 +0100
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1tki3R-001kv2-1S
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Feb 2025 12:15:49 +0100
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id 0DD033C68B3
	for <linux-rockchip@lists.infradead.org>; Wed, 19 Feb 2025 11:15:49 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id 8761B3C68B1;
	Wed, 19 Feb 2025 11:15:48 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id 6b31c62b;
	Wed, 19 Feb 2025 11:15:47 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed, 19 Feb 2025 12:15:43 +0100
Subject: [PATCH] can: rockchip_canfd: rkcanfd_chip_fifo_setup(): remove
 duplicated setup of RX FIFO
MIME-Version: 1.0
Message-Id: <20250219-rk3568-canfd-v1-1-453869358c72@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAF69tWcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDI0NL3aJsY1MzC93kxLy0FN1EgzTLZEMDY3NTw1QloJaCotS0zAqwcdG
 xtbUAoxA+Ql4AAAA=
X-Change-ID: 20250219-rk3568-canfd-a0f9c103751e
To: kernel@pengutronix.de, Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-can@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Robin van der Gracht <robin@protonic.nl>, 
 Marc Kleine-Budde <mkl@pengutronix.de>
X-Mailer: b4 0.15-dev-42535
X-Developer-Signature: v=1; a=openpgp-sha256; l=1388; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=0jv/61mY47TiBPd7dSSwJFiyxZt74jw07+buK5Y0ayc=;
 b=owEBbQGS/pANAwAKAQx0Zd/5kJGcAcsmYgBntb1hbnXZkPMz9MY3Cfse6k0cP85QCzJJp31vP
 upyoPxOHZOJATMEAAEKAB0WIQSf+wzYr2eoX/wVbPMMdGXf+ZCRnAUCZ7W9YQAKCRAMdGXf+ZCR
 nDx2B/wMkgexjMLtIBIpBULLQeVoO4zztTTxqk7ktd02LkxjPIUwI38QEVc3Vz6jtzX3glN8l5L
 pJz15GesciFTiuy1BokVMkOHy0Lb7psPmunMBM/MdUSMMRVSh1Nu/Yt653ADtd5mkMi2WrsxndT
 3TCUtUbeHBSeiMwzcs82KOIMnxM06R035C6mOl7B2rL+k2qya2j44KHM9RxOiF4gkla0EeB/MIw
 CygC8fSuYPNLojiahS8Ql9FOEiUlluPhEFivU4g8UBmiEDnXNSyFC77J+PDWUKahmw3RrguWKt5
 5CervoNvuD7w/YeofUArG6ySVl8qwad6AeaB/RnWVt8QusTt
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_031552_115874_BF24CB04 
X-CRM114-Status: GOOD (  10.17  )
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

From: Robin van der Gracht <robin@protonic.nl>

The rockchip_canfd driver doesn't make use of the TXE FIFO.

Although the comment states that the TXE FIFO is setup, it's actually
a setup of the RX FIFO. The regular setup of the RX FIFO follows.

Remove the duplicated setup of the RX FIFO.

Fixes: ff60bfbaf67f ("can: rockchip_canfd: add driver for Rockchip CAN-FD controller")
Signed-off-by: Robin van der Gracht <robin@protonic.nl>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/net/can/rockchip/rockchip_canfd-core.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/net/can/rockchip/rockchip_canfd-core.c b/drivers/net/can/rockchip/rockchip_canfd-core.c
index d9a937ba126c..46201c126703 100644
--- a/drivers/net/can/rockchip/rockchip_canfd-core.c
+++ b/drivers/net/can/rockchip/rockchip_canfd-core.c
@@ -236,11 +236,6 @@ static void rkcanfd_chip_fifo_setup(struct rkcanfd_priv *priv)
 {
 	u32 reg;
 
-	/* TXE FIFO */
-	reg = rkcanfd_read(priv, RKCANFD_REG_RX_FIFO_CTRL);
-	reg |= RKCANFD_REG_RX_FIFO_CTRL_RX_FIFO_ENABLE;
-	rkcanfd_write(priv, RKCANFD_REG_RX_FIFO_CTRL, reg);
-
 	/* RX FIFO */
 	reg = rkcanfd_read(priv, RKCANFD_REG_RX_FIFO_CTRL);
 	reg |= RKCANFD_REG_RX_FIFO_CTRL_RX_FIFO_ENABLE;

---
base-commit: aefd232de5eb2e77e3fc58c56486c7fe7426a228
change-id: 20250219-rk3568-canfd-a0f9c103751e

Best regards,
-- 
Marc Kleine-Budde <mkl@pengutronix.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

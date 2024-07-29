Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 202B5C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jul 2024 13:16:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4cTN/6GmXDDssh02omt8QL85mZcB5qTu8fGL2KDdGcg=; b=W9jfl4kaX2Rjwa
	xO7Ex66QTQuGeebPvENlSb6detCNBbT66kv/Iki5EQVeh9QNgOJX6PBM+LZ0tQ4S45eCDfEvAccAe
	j7PzhpQUyIxdCi0+TcSHAGxGoqlLDuafuESqJVLmO46cZ4W8nOi20HYEsN/VT0WFjbjzLL6zAUMpM
	U8uyjhw5p9WxNO8jzUaypYkDZQ/YH5LM1bZ7KS6nJw8D0AfUHL+gJ+gPGQEFp2VfJAacNGG3u2isO
	k9mNNob9hYOT63Wv/EOKWKrkBbCCgG9uTuwWM3xbMCA0T4bZRmXknJaYfn/7YFJzz4hua20IbaEf3
	PXkLIrauULoaSoSCSDuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYQEw-0000000BOwR-40E0;
	Mon, 29 Jul 2024 13:16:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYQ63-0000000BLTs-2O48
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Jul 2024 13:07:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1sYQ61-00018B-GZ
	for linux-rockchip@lists.infradead.org; Mon, 29 Jul 2024 15:07:25 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1sYQ60-0033NR-EJ
	for linux-rockchip@lists.infradead.org; Mon, 29 Jul 2024 15:07:24 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id 22B32310F43
	for <linux-rockchip@lists.infradead.org>; Mon, 29 Jul 2024 13:07:24 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id B22A5310EAB;
	Mon, 29 Jul 2024 13:07:15 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id 0ecf2821;
	Mon, 29 Jul 2024 13:06:31 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon, 29 Jul 2024 15:05:52 +0200
Subject: [PATCH can-next 21/21] can: rockchip_canfd: add support for
 CAN_CTRLMODE_BERR_REPORTING
MIME-Version: 1.0
Message-Id: <20240729-rockchip-canfd-v1-21-fa1250fd6be3@pengutronix.de>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2351; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=O7o30P7hShu1XtTUvch+nVWHTD4AhV6r3e4zx/idkYk=;
 b=owEBbQGS/pANAwAKASg4oj56LbxvAcsmYgBmp5PV3sM8XXwISbRrCXTRd3/WF66LzSY+ThFzv
 91v381LmIyJATMEAAEKAB0WIQRQQLqG4LYE3Sm8Pl8oOKI+ei28bwUCZqeT1QAKCRAoOKI+ei28
 bz6kB/0e0fjGnXKDinEzWEnti0xrTb1g2WSP5u6CPX4kQo5ADTXqMBkBmFIEKKcOYS5J97xCNRP
 u2gZ3o8d0Q5+smqeLMe5FfOFyZFjZnaBAX665joolosCxTreNJNrXsOtgxLOhweEwspf+hdVyMW
 /kNHClCLseJu+tvUPGi8D986D1wjcLMwqAj8IC7pyBT9dwI0Zxsk4UXI3yC154VURUFgYcxwV0Q
 /2GD+6O4987GAdneE92aO7JPsVq1PnmweFbHiI5mw82PPDG0J+2dr5sttFr9xv1aXWywpqo8mpm
 FSE7ZD/l5S0V2w4F4y8Ddtu5PWJk06lf6xfsPU0vD9BzzBSE
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_060727_806140_B6BFD323 
X-CRM114-Status: GOOD (  16.11  )
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

Add support for Bus Error Reporting.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/net/can/rockchip/rockchip_canfd-core.c | 25 +++++++++++++++++--------
 1 file changed, 17 insertions(+), 8 deletions(-)

diff --git a/drivers/net/can/rockchip/rockchip_canfd-core.c b/drivers/net/can/rockchip/rockchip_canfd-core.c
index 2d6eca8d23be..6daaee7dfe56 100644
--- a/drivers/net/can/rockchip/rockchip_canfd-core.c
+++ b/drivers/net/can/rockchip/rockchip_canfd-core.c
@@ -293,6 +293,12 @@ static void rkcanfd_chip_start(struct rkcanfd_priv *priv)
 		RKCANFD_REG_INT_OVERLOAD_INT |
 		RKCANFD_REG_INT_TX_FINISH_INT;
 
+	/* Do not mask the bus error interrupt if the bus error
+	 * reporting is requested.
+	 */
+	if (!(priv->can.ctrlmode & CAN_CTRLMODE_BERR_REPORTING))
+		priv->reg_int_mask_default |= RKCANFD_REG_INT_ERROR_INT;
+
 	memset(&priv->bec, 0x0, sizeof(priv->bec));
 
 	rkcanfd_chip_fifo_setup(priv);
@@ -533,14 +539,16 @@ static int rkcanfd_handle_error_int(struct rkcanfd_priv *priv)
 	if (!reg_ec)
 		return 0;
 
-	skb = rkcanfd_alloc_can_err_skb(priv, &cf, &timestamp);
-	if (cf) {
-		struct can_berr_counter bec;
+	if (priv->can.ctrlmode & CAN_CTRLMODE_BERR_REPORTING) {
+		skb = rkcanfd_alloc_can_err_skb(priv, &cf, &timestamp);
+		if (cf) {
+			struct can_berr_counter bec;
 
-		rkcanfd_get_berr_counter_corrected(priv, &bec);
-		cf->can_id |= CAN_ERR_PROT | CAN_ERR_BUSERROR | CAN_ERR_CNT;
-		cf->data[6] = bec.txerr;
-		cf->data[7] = bec.rxerr;
+			rkcanfd_get_berr_counter_corrected(priv, &bec);
+			cf->can_id |= CAN_ERR_PROT | CAN_ERR_BUSERROR | CAN_ERR_CNT;
+			cf->data[6] = bec.txerr;
+			cf->data[7] = bec.rxerr;
+		}
 	}
 
 	rkcanfd_handle_error_int_reg_ec(priv, cf, reg_ec);
@@ -902,7 +910,8 @@ static int rkcanfd_probe(struct platform_device *pdev)
 	priv->can.clock.freq = clk_get_rate(priv->clks[0].clk);
 	priv->can.bittiming_const = &rkcanfd_bittiming_const;
 	priv->can.data_bittiming_const = &rkcanfd_data_bittiming_const;
-	priv->can.ctrlmode_supported = CAN_CTRLMODE_LOOPBACK;
+	priv->can.ctrlmode_supported = CAN_CTRLMODE_LOOPBACK |
+		CAN_CTRLMODE_BERR_REPORTING;
 	if (!(priv->devtype_data.quirks & RKCANFD_QUIRK_CANFD_BROKEN))
 		priv->can.ctrlmode_supported |= CAN_CTRLMODE_FD;
 	priv->can.do_set_mode = rkcanfd_set_mode;

-- 
2.43.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

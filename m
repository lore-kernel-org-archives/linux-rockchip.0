Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8ED76CA1009
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Aug 2024 19:42:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KE7IbEp6SkyXQQHEEineaVQwad3jnf6/xAhpkTWJgJI=; b=j4tgJX/RLwUzuv
	3NUnFXlzmZOy//UCP90J/741do43uK7hAfA2w9N1mr2OR5kcPywu6XaHIr4GwB2YpacwqtEsf1gXx
	WaMPcqklh9Gt5bE7+PrvV3spvC2JtQLPXD83WrvKo9ZeFR0y+PsYlgmcF5lFqqKGhTb5ve71alO9F
	GVu41IPKlTE/YwHNWcyYFaY+/nyfsghOT067hFsuzwlwivLqssOF95IHQohQ/VtcROC6GZ/Tl0yvd
	XIWifByBC+a/cA9TSsMFeFj76YVQPjf25XNXtSRamzDcfrkXLBxbd1YHzGtg1YIwwzmLnz2O4IEcw
	S5KFYrNE5ToJmvj27dxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk7WH-00000007VuQ-2zs3;
	Fri, 30 Aug 2024 19:42:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk7HO-00000007RdZ-0F1h
	for linux-rockchip@bombadil.infradead.org;
	Fri, 30 Aug 2024 19:27:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=FpR/UK/AYumXQ1qWK9ZkOXcjNVhkkvODXdN+USv6x9E=; b=dqqnnEEKhmh8RjNl5Im9o3goTc
	QIVR5UPZlPTrIRzd4JsLaQDbPYMrk/+JN87bm9OHg0GcnH/mL/dO5UfrnBfBCZ3RBbFSU7jk0hDYA
	iM/IHIMEkJow4wkK81A5fKuqxa30javCpQYZLb0hT6qEcZkaE7vi3A1N9BAOYac/9/03ClE/rq1t+
	P03OrYHyOco5d14mS3UERlTsc2Q1dmzr/LRSVOQNVE3YssQPxppB3QH0e7+b5i82GCXfDWQfUccS8
	1/I/XGaJAQN3mmvHgMMVv0poT9xj64F+EfNhfrr7PLi0ZDKuvTYMjws/5DIQNHPRCHfpbZbtCivf/
	Bh1Gaddg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk7H1-0000000Bk8s-3Xi3
	for linux-rockchip@lists.infradead.org;
	Fri, 30 Aug 2024 19:27:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1sk7Gw-0006FT-7k
	for linux-rockchip@lists.infradead.org; Fri, 30 Aug 2024 21:27:02 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1sk7Go-004DkL-EY
	for linux-rockchip@lists.infradead.org; Fri, 30 Aug 2024 21:26:54 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id ECD1832E1D6
	for <linux-rockchip@lists.infradead.org>; Fri, 30 Aug 2024 19:26:53 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id 66FC832E113;
	Fri, 30 Aug 2024 19:26:47 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id 4a7dea85;
	Fri, 30 Aug 2024 19:26:45 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Fri, 30 Aug 2024 21:26:11 +0200
Subject: [PATCH can-next v3 14/20] can: rockchip_canfd:
 rkcanfd_get_berr_counter_corrected(): work around broken {RX,TX}ERRORCNT
 register
MIME-Version: 1.0
Message-Id: <20240830-rockchip-canfd-v3-14-d426266453fa@pengutronix.de>
References: <20240830-rockchip-canfd-v3-0-d426266453fa@pengutronix.de>
In-Reply-To: <20240830-rockchip-canfd-v3-0-d426266453fa@pengutronix.de>
To: kernel@pengutronix.de, Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Elaine Zhang <zhangqing@rock-chips.com>, 
 David Jander <david.jander@protonic.nl>
Cc: Simon Horman <horms@kernel.org>, linux-can@vger.kernel.org, 
 netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Marc Kleine-Budde <mkl@pengutronix.de>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=openpgp-sha256; l=6870; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=DJ+fhm2Yj2TmsuGIAwwI2LYdWTC/F0r0cDuJqYQdeZk=;
 b=owEBbQGS/pANAwAKASg4oj56LbxvAcsmYgBm0hzqYIJEK7iHbPJ+hnw1BQMI1jU1YdhsAlVxi
 0fnn0tmrb6JATMEAAEKAB0WIQRQQLqG4LYE3Sm8Pl8oOKI+ei28bwUCZtIc6gAKCRAoOKI+ei28
 b28gCACJ2SKUL8GptaakLs71H5Pd/rF0QUJjljnAwEhstL9Juua7uBc3dDxBc+ac4Sl/thXJ7h0
 rZe1uSVhujtY/Buv1VUBj3l375wsLpNwes0wUeFlQaiCQueiGS2UVpA8279OhOKqIBPRuXIYH/l
 0/HDl0qh+rv14SHAhgDs8J7y87NmGHZFmg8tYluQU3UrFUFbHUc3fVaS/DuAL3ZrAb8b+e/HyKp
 L9vfGO/JhPTo0VcereXA+bUrPAm+KUvAoHojUl0g5WM81cZnXgdPz92QP+pL4qp9sxgRLn6x/2+
 4ZEPyHDrMOYBjqbspmrQ/PPaY919TsX7yTha7fRDWmmlQVXw
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_202716_275826_15C8CC79 
X-CRM114-Status: GOOD (  20.60  )
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

Tests show that sometimes both CAN bus error counters read 0x0, even
if the controller is in warning mode
(RKCANFD_REG_STATE_ERROR_WARNING_STATE in RKCANFD_REG_STATE
set).

To work around this issue, if both error counters read from hardware
are 0x0, use the structure priv->bec, otherwise save the read value in
priv->bec.

In rkcanfd_handle_rx_int_one() decrement the priv->bec.rxerr for
successfully RX'ed CAN frames.

In rkcanfd_handle_tx_done_one() decrement the priv->bec.txerr for
successfully TX'ed CAN frames.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/net/can/rockchip/rockchip_canfd-core.c | 50 ++++++++++++++++++++++----
 drivers/net/can/rockchip/rockchip_canfd-rx.c   | 15 ++++++++
 drivers/net/can/rockchip/rockchip_canfd-tx.c   |  8 +++++
 drivers/net/can/rockchip/rockchip_canfd.h      |  2 ++
 4 files changed, 69 insertions(+), 6 deletions(-)

diff --git a/drivers/net/can/rockchip/rockchip_canfd-core.c b/drivers/net/can/rockchip/rockchip_canfd-core.c
index 700702e4d2ed..cf176180a282 100644
--- a/drivers/net/can/rockchip/rockchip_canfd-core.c
+++ b/drivers/net/can/rockchip/rockchip_canfd-core.c
@@ -159,11 +159,47 @@ static int rkcanfd_set_bittiming(struct rkcanfd_priv *priv)
 	return 0;
 }
 
-static void rkcanfd_get_berr_counter_raw(struct rkcanfd_priv *priv,
-					 struct can_berr_counter *bec)
+static void rkcanfd_get_berr_counter_corrected(struct rkcanfd_priv *priv,
+					       struct can_berr_counter *bec)
 {
+	struct can_berr_counter bec_raw;
+	u32 reg_state;
+
 	bec->rxerr = rkcanfd_read(priv, RKCANFD_REG_RXERRORCNT);
 	bec->txerr = rkcanfd_read(priv, RKCANFD_REG_TXERRORCNT);
+	bec_raw = *bec;
+
+	/* Tests show that sometimes both CAN bus error counters read
+	 * 0x0, even if the controller is in warning mode
+	 * (RKCANFD_REG_STATE_ERROR_WARNING_STATE in RKCANFD_REG_STATE
+	 * set).
+	 *
+	 * In case both error counters read 0x0, use the struct
+	 * priv->bec, otherwise save the read value to priv->bec.
+	 *
+	 * rkcanfd_handle_rx_int_one() handles the decrementing of
+	 * priv->bec.rxerr for successfully RX'ed CAN frames.
+	 *
+	 * Luckily the controller doesn't decrement the RX CAN bus
+	 * error counter in hardware for self received TX'ed CAN
+	 * frames (RKCANFD_REG_MODE_RXSTX_MODE), so RXSTX doesn't
+	 * interfere with proper RX CAN bus error counters.
+	 *
+	 * rkcanfd_handle_tx_done_one() handles the decrementing of
+	 * priv->bec.txerr for successfully TX'ed CAN frames.
+	 */
+	if (!bec->rxerr && !bec->txerr)
+		*bec = priv->bec;
+	else
+		priv->bec = *bec;
+
+	reg_state = rkcanfd_read(priv, RKCANFD_REG_STATE);
+	netdev_vdbg(priv->ndev,
+		    "%s: Raw/Cor: txerr=%3u/%3u rxerr=%3u/%3u Bus Off=%u Warning=%u\n",
+		    __func__,
+		    bec_raw.txerr, bec->txerr, bec_raw.rxerr, bec->rxerr,
+		    !!(reg_state & RKCANFD_REG_STATE_BUS_OFF_STATE),
+		    !!(reg_state & RKCANFD_REG_STATE_ERROR_WARNING_STATE));
 }
 
 static int rkcanfd_get_berr_counter(const struct net_device *ndev,
@@ -176,7 +212,7 @@ static int rkcanfd_get_berr_counter(const struct net_device *ndev,
 	if (err)
 		return err;
 
-	rkcanfd_get_berr_counter_raw(priv, bec);
+	rkcanfd_get_berr_counter_corrected(priv, bec);
 
 	pm_runtime_put(ndev->dev.parent);
 
@@ -252,6 +288,8 @@ static void rkcanfd_chip_start(struct rkcanfd_priv *priv)
 		RKCANFD_REG_INT_OVERLOAD_INT |
 		RKCANFD_REG_INT_TX_FINISH_INT;
 
+	memset(&priv->bec, 0x0, sizeof(priv->bec));
+
 	rkcanfd_chip_fifo_setup(priv);
 	rkcanfd_timestamp_init(priv);
 	rkcanfd_set_bittiming(priv);
@@ -488,7 +526,7 @@ static int rkcanfd_handle_error_int(struct rkcanfd_priv *priv)
 	if (cf) {
 		struct can_berr_counter bec;
 
-		rkcanfd_get_berr_counter_raw(priv, &bec);
+		rkcanfd_get_berr_counter_corrected(priv, &bec);
 		cf->can_id |= CAN_ERR_PROT | CAN_ERR_BUSERROR | CAN_ERR_CNT;
 		cf->data[6] = bec.txerr;
 		cf->data[7] = bec.rxerr;
@@ -517,7 +555,7 @@ static int rkcanfd_handle_state_error_int(struct rkcanfd_priv *priv)
 	u32 timestamp;
 	int err;
 
-	rkcanfd_get_berr_counter_raw(priv, &bec);
+	rkcanfd_get_berr_counter_corrected(priv, &bec);
 	can_state_get_by_berr_counter(ndev, &bec, &tx_state, &rx_state);
 
 	new_state = max(tx_state, rx_state);
@@ -570,7 +608,7 @@ rkcanfd_handle_rx_fifo_overflow_int(struct rkcanfd_priv *priv)
 	if (skb)
 		return 0;
 
-	rkcanfd_get_berr_counter_raw(priv, &bec);
+	rkcanfd_get_berr_counter_corrected(priv, &bec);
 
 	cf->can_id |= CAN_ERR_CRTL | CAN_ERR_CNT;
 	cf->data[1] = CAN_ERR_CRTL_RX_OVERFLOW;
diff --git a/drivers/net/can/rockchip/rockchip_canfd-rx.c b/drivers/net/can/rockchip/rockchip_canfd-rx.c
index 31cee3362f1e..eff08948840c 100644
--- a/drivers/net/can/rockchip/rockchip_canfd-rx.c
+++ b/drivers/net/can/rockchip/rockchip_canfd-rx.c
@@ -167,6 +167,13 @@ static int rkcanfd_rxstx_filter(struct rkcanfd_priv *priv,
 
 	/* Affected by Erratum 6 */
 
+	/* Manual handling of CAN Bus Error counters. See
+	 * rkcanfd_get_corrected_berr_counter() for detailed
+	 * explanation.
+	 */
+	if (priv->bec.txerr)
+		priv->bec.txerr--;
+
 	*tx_done = true;
 
 	stats->tx_packets++;
@@ -229,6 +236,14 @@ static int rkcanfd_handle_rx_int_one(struct rkcanfd_priv *priv)
 			return 0;
 	}
 
+	/* Manual handling of CAN Bus Error counters. See
+	 * rkcanfd_get_corrected_berr_counter() for detailed
+	 * explanation.
+	 */
+	if (priv->bec.rxerr)
+		priv->bec.rxerr = min(CAN_ERROR_PASSIVE_THRESHOLD,
+				      priv->bec.rxerr) - 1;
+
 	if (header->frameinfo & RKCANFD_REG_FD_FRAMEINFO_FDF)
 		skb = alloc_canfd_skb(priv->ndev, &skb_cfd);
 	else
diff --git a/drivers/net/can/rockchip/rockchip_canfd-tx.c b/drivers/net/can/rockchip/rockchip_canfd-tx.c
index 9db6d90a4e7f..f8e74e814b3b 100644
--- a/drivers/net/can/rockchip/rockchip_canfd-tx.c
+++ b/drivers/net/can/rockchip/rockchip_canfd-tx.c
@@ -113,6 +113,14 @@ void rkcanfd_handle_tx_done_one(struct rkcanfd_priv *priv, const u32 ts,
 	unsigned int tx_tail;
 
 	tx_tail = rkcanfd_get_tx_tail(priv);
+
+	/* Manual handling of CAN Bus Error counters. See
+	 * rkcanfd_get_corrected_berr_counter() for detailed
+	 * explanation.
+	 */
+	if (priv->bec.txerr)
+		priv->bec.txerr--;
+
 	stats->tx_bytes +=
 		can_rx_offload_get_echo_skb_queue_timestamp(&priv->offload,
 							    tx_tail, ts,
diff --git a/drivers/net/can/rockchip/rockchip_canfd.h b/drivers/net/can/rockchip/rockchip_canfd.h
index 3fe6ddcdd8ac..67f135fbcfb9 100644
--- a/drivers/net/can/rockchip/rockchip_canfd.h
+++ b/drivers/net/can/rockchip/rockchip_canfd.h
@@ -459,6 +459,8 @@ struct rkcanfd_priv {
 	u32 reg_int_mask_default;
 	struct rkcanfd_devtype_data devtype_data;
 
+	struct can_berr_counter bec;
+
 	struct reset_control *reset;
 	struct clk_bulk_data *clks;
 	int clks_num;

-- 
2.45.2



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

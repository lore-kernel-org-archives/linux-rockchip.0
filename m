Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7CBACD3431
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Sep 2024 08:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z6vttJq/PGONLkDnfHdEWBNA4Fp/9RBNz/6gm7962lY=; b=w0Eq6+JDCJtSdu
	BHrlgKhlPl7tPSw2yvgJxXRGuiFLYIjrBf8mbNdwriiKQflBiUDc8eddomvdOThQ+vuzHjnb5jYOL
	HUbOdTdC1abbfDgd8qWt1cbnAVa7kqs11pSkYRpPkZAlSuS6M49TA+MoPPOHWIDr7YBGaSNxq8LNi
	Iw6GFy9fd8apH4qYwpHrOcAn/aAhUHsFjTU2SJhJkjO9bG3QP+rmPr7/PxrqGR4YI77rXD7dzQz+w
	AXrPMeNoo6fSeuZtv5kH94ZndBNDe7YGriFVfrLehQ/ZW9OnfoAVbAfsFPDVlndgOmKInikBhGgq8
	a+TyrMSJeQYFKdLZulDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sllRO-00000003Q8b-2GmV;
	Wed, 04 Sep 2024 08:32:38 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sll9I-00000003KsM-3li7
	for linux-rockchip@bombadil.infradead.org;
	Wed, 04 Sep 2024 08:13:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=FwyuCAmZVYzzVHYFnjm8qCI/UOM8C8G12XBK8OcMRvQ=; b=DL93l7P2ASuMPqnITZanhgk+PQ
	iSIoT41eVidFgPQNgwy60zzhioyNrJtGZlj9vpvb8heDZBoPlKYtYujjiytWiwGrLWii7Q75wKscK
	exa/OrZQI7IlkazMEjCndBxLdnIA4ZMFa+NvT0s3s+sJIqhDY6bzibW2np6XzUpoD0VXd7wipddPt
	6B3t9olU7U8hlY3jWwHV6ujlUH/Ekh9c2zuoijXLNb3/mr5UD5fw5hGA4cQCgOG2aMyBnZWWMR8uk
	IpaVun0wTJ5WnXbH0TuUglRgjMfKRjE+zRTL1KRom0oWmprj7BfJLNr3tjHvVTbWZ8xBJDIJHGGYH
	prbEF0Mw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sll94-00000000Akx-0Cb4
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Sep 2024 08:13:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1sll8y-0007di-Oz
	for linux-rockchip@lists.infradead.org; Wed, 04 Sep 2024 10:13:36 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1sll8s-005Osb-Me
	for linux-rockchip@lists.infradead.org; Wed, 04 Sep 2024 10:13:30 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id 36F9D332035
	for <linux-rockchip@lists.infradead.org>; Wed, 04 Sep 2024 08:13:30 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id 03023331F6D;
	Wed, 04 Sep 2024 08:13:23 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id 0f7ecbcc;
	Wed, 4 Sep 2024 08:13:20 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed, 04 Sep 2024 10:12:56 +0200
Subject: [PATCH can-next v5 12/20] can: rockchip_canfd: implement
 workaround for erratum 6
MIME-Version: 1.0
Message-Id: <20240904-rockchip-canfd-v5-12-8ae22bcb27cc@pengutronix.de>
References: <20240904-rockchip-canfd-v5-0-8ae22bcb27cc@pengutronix.de>
In-Reply-To: <20240904-rockchip-canfd-v5-0-8ae22bcb27cc@pengutronix.de>
To: kernel@pengutronix.de, Alibek Omarov <a1ba.omarov@gmail.com>, 
 Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=5113; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=sRQubshaT5v9vsvCT2lafCYIN0VsPNipEULSKOD/rxg=;
 b=owEBbQGS/pANAwAKASg4oj56LbxvAcsmYgBm2BaT36djS2ulKpjFOj0CWU/oo7b1+mQ9/VcTt
 t5PkWqMo6yJATMEAAEKAB0WIQRQQLqG4LYE3Sm8Pl8oOKI+ei28bwUCZtgWkwAKCRAoOKI+ei28
 b/2UCACJxIIraCUKbQ9/fg7sP04TuVx4QIIV/sLceJ4On1YMyiY4v82axt6DiAVQT8QUESKI33R
 y9+KJ4p2gvXQ532vTFkCaIJKw6Vtz+bh3enqYi7tXENzOVSu3irkz3JooflqqPqggMDfIr3JK1u
 Aj2f3AoAoVoO/XqfAMS6y/05PXeXO+8liLkw1N6/vW7Z6Jmhe+TKhnZFvSQAjWsTjtF97koD+Vj
 n0Kv/U8k2Q5V0ASUjEr5vZcwkf8wcOtQUVe9aRNwunQZrQqHoyvtQOV0fwiNM8UshOxtymx+ahK
 9Df07dJB0vS8uQko3MClh+Tbqzkq+dI1xG19920x7bVQnkQk
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_091342_448397_9CE35990 
X-CRM114-Status: GOOD (  21.21  )
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

The rk3568 CAN-FD errata sheet as of Tue 07 Nov 2023 11:25:31 +08:00
says:

| The CAN controller's transmission of extended frames may
| intermittently change into standard frames.
|
| When using the CAN controller to send extended frames, if the
| 'tx_req' is configured as 1 and coincides with the internal
| transmission point, the extended frame will be transmitted onto the
| bus in the format of a standard frame.

To work around Erratum 6, the driver is in self-receiving mode (RXSTX)
and all received CAN frames are passed through rkcanfd_rxstx_filter().

Add a check in rkcanfd_rxstx_filter() whether the received frame
corresponds to the current outgoing frame, but the extended CAN ID has
been mangled to a standard ID. In this case re-send the original CAN
frame.

Tested-by: Alibek Omarov <a1ba.omarov@gmail.com>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/net/can/rockchip/rockchip_canfd-rx.c | 44 ++++++++++++++++++++++++++++
 drivers/net/can/rockchip/rockchip_canfd-tx.c |  8 +++++
 drivers/net/can/rockchip/rockchip_canfd.h    | 19 ++++++++++++
 3 files changed, 71 insertions(+)

diff --git a/drivers/net/can/rockchip/rockchip_canfd-rx.c b/drivers/net/can/rockchip/rockchip_canfd-rx.c
index 650dfd41e0a0..31cee3362f1e 100644
--- a/drivers/net/can/rockchip/rockchip_canfd-rx.c
+++ b/drivers/net/can/rockchip/rockchip_canfd-rx.c
@@ -95,6 +95,7 @@ static int rkcanfd_rxstx_filter(struct rkcanfd_priv *priv,
 				const struct canfd_frame *cfd_rx, const u32 ts,
 				bool *tx_done)
 {
+	struct net_device_stats *stats = &priv->ndev->stats;
 	const struct canfd_frame *cfd_nominal;
 	const struct sk_buff *skb;
 	unsigned int tx_tail;
@@ -130,6 +131,49 @@ static int rkcanfd_rxstx_filter(struct rkcanfd_priv *priv,
 		return 0;
 	}
 
+	if (!(priv->devtype_data.quirks & RKCANFD_QUIRK_RK3568_ERRATUM_6))
+		return 0;
+
+	/* Erratum 6: Extended frames may be send as standard frames.
+	 *
+	 * Not affected if:
+	 * - TX'ed a standard frame -or-
+	 * - RX'ed an extended frame
+	 */
+	if (!(cfd_nominal->can_id & CAN_EFF_FLAG) ||
+	    (cfd_rx->can_id & CAN_EFF_FLAG))
+		return 0;
+
+	/* Not affected if:
+	 * - standard part and RTR flag of the TX'ed frame
+	 *   is not equal the CAN-ID and RTR flag of the RX'ed frame.
+	 */
+	if ((cfd_nominal->can_id & (CAN_RTR_FLAG | CAN_SFF_MASK)) !=
+	    (cfd_rx->can_id & (CAN_RTR_FLAG | CAN_SFF_MASK)))
+		return 0;
+
+	/* Not affected if:
+	 * - length is not the same
+	 */
+	if (cfd_nominal->len != cfd_rx->len)
+		return 0;
+
+	/* Not affected if:
+	 * - the data of non RTR frames is different
+	 */
+	if (!(cfd_nominal->can_id & CAN_RTR_FLAG) &&
+	    memcmp(cfd_nominal->data, cfd_rx->data, cfd_nominal->len))
+		return 0;
+
+	/* Affected by Erratum 6 */
+
+	*tx_done = true;
+
+	stats->tx_packets++;
+	stats->tx_errors++;
+
+	rkcanfd_xmit_retry(priv);
+
 	return 0;
 }
 
diff --git a/drivers/net/can/rockchip/rockchip_canfd-tx.c b/drivers/net/can/rockchip/rockchip_canfd-tx.c
index 668a902f4c2a..e98e7a836b83 100644
--- a/drivers/net/can/rockchip/rockchip_canfd-tx.c
+++ b/drivers/net/can/rockchip/rockchip_canfd-tx.c
@@ -14,6 +14,14 @@ static void rkcanfd_start_xmit_write_cmd(const struct rkcanfd_priv *priv,
 	rkcanfd_write(priv, RKCANFD_REG_CMD, reg_cmd);
 }
 
+void rkcanfd_xmit_retry(struct rkcanfd_priv *priv)
+{
+	const unsigned int tx_head = rkcanfd_get_tx_head(priv);
+	const u32 reg_cmd = RKCANFD_REG_CMD_TX_REQ(tx_head);
+
+	rkcanfd_start_xmit_write_cmd(priv, reg_cmd);
+}
+
 int rkcanfd_start_xmit(struct sk_buff *skb, struct net_device *ndev)
 {
 	struct rkcanfd_priv *priv = netdev_priv(ndev);
diff --git a/drivers/net/can/rockchip/rockchip_canfd.h b/drivers/net/can/rockchip/rockchip_canfd.h
index a4688411e586..3fe6ddcdd8ac 100644
--- a/drivers/net/can/rockchip/rockchip_canfd.h
+++ b/drivers/net/can/rockchip/rockchip_canfd.h
@@ -342,6 +342,24 @@
 
 /* Erratum 6: The CAN controller's transmission of extended frames may
  * intermittently change into standard frames
+ *
+ * Work around this issue by activating self reception (RXSTX). If we
+ * have pending TX CAN frames, check all RX'ed CAN frames in
+ * rkcanfd_rxstx_filter().
+ *
+ * If it's a frame we've send and it's OK, call the TX complete
+ * handler: rkcanfd_handle_tx_done_one(). Mask the TX complete IRQ.
+ *
+ * If it's a frame we've send, but the CAN-ID is mangled, resend the
+ * original extended frame.
+ *
+ * To reproduce:
+ * host:
+ *   canfdtest -evx -g can0
+ *   candump any,0:80000000 -cexdtA
+ * dut:
+ *   canfdtest -evx can0
+ *   ethtool -S can0
  */
 #define RKCANFD_QUIRK_RK3568_ERRATUM_6 BIT(5)
 
@@ -499,6 +517,7 @@ int rkcanfd_handle_rx_int(struct rkcanfd_priv *priv);
 
 void rkcanfd_timestamp_init(struct rkcanfd_priv *priv);
 
+void rkcanfd_xmit_retry(struct rkcanfd_priv *priv);
 int rkcanfd_start_xmit(struct sk_buff *skb, struct net_device *ndev);
 void rkcanfd_handle_tx_done_one(struct rkcanfd_priv *priv, const u32 ts,
 				unsigned int *frame_len_p);

-- 
2.45.2



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

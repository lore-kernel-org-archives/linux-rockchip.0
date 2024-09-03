Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23850CD3420
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 09:41:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jvl6HIY8Xw5XR1sqE7fmuXLij0/eOur4I+GGaAqvceo=; b=DWGFE9ar+Muspb
	ZgNHyve+1MzXuVdXUY8uuqPHqMaS/u1ME107t47mdtEak4Pd+cM1SxLESH544BD5wRkb0MlvRtceX
	APhvQ2dwyv/JIQROe2pItoexmSSGBTvu+QzK5Dz2wFkdFYj6bFHxSOBlq5xY81rwVWLPQlZ5Q96Fb
	XUbvuzGbKj8IYWGwZb/9vgZLMaxD6babq2z4j7KhpTC/A6Bh5wLr4/4ZCoaHhl7zUUjtBOVuT0X6X
	kbAl0wXQEy/rZOGRE+r8PMlfnFtJaVBEAzT5xc84DKBlvvZ9t0DVwqxfoEb+1lUXcGwa+abOcQv5F
	va/XOQOrJeX9puMJFkBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slQ2q-0000000HDMV-1NYh;
	Tue, 03 Sep 2024 09:41:52 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slPkg-0000000H7fG-2LDt
	for linux-rockchip@bombadil.infradead.org;
	Tue, 03 Sep 2024 09:23:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=rEjPeYQ5aYA7kD2J/UPdH3WgcsnGLqq9qzBjS8BZX0Q=; b=GSjQDLKe+Pujq4mq8gOaTqMC7U
	TZ4iyPQmMWVYCJOObbvJdSQwCh7MKJCQkNAltjnwpJ89pLLU8v4Uo2oaBH7NP5xnQVid4heyhfLCA
	TY6zQY/qAoCumLkN/CZR3no1b4afB0kbM5LL23T/jacUjW3DY9KAfAKFRQRrtgxVk/pwWMLKMIWGD
	zcV5PKh+JYaJnh84wT4O7SJNzv4VQsvEBYYEt1zIazt5ThesKeECVDglHZqL0jz06y35AYguZPrhR
	8bsRp0Q/Ol7RwMure0aSmHZIfJY3wE9Wj/IZD3c0jszmSghDmOOnKmZht4h+GdQQxyxXBjK3YDxmZ
	Y66wdCgA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1slPkb-0000000815O-3wmm
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Sep 2024 09:23:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1slPkM-0000xj-PY
	for linux-rockchip@lists.infradead.org; Tue, 03 Sep 2024 11:22:46 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1slPkG-0059as-R8
	for linux-rockchip@lists.infradead.org; Tue, 03 Sep 2024 11:22:40 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id 8246E3311FA
	for <linux-rockchip@lists.infradead.org>; Tue, 03 Sep 2024 09:22:40 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id 7AD3333104B;
	Tue, 03 Sep 2024 09:22:28 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id 0c64953b;
	Tue, 3 Sep 2024 09:22:26 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 03 Sep 2024 11:21:58 +0200
Subject: [PATCH can-next v4 16/20] can: rockchip_canfd: prepare to use full
 TX-FIFO depth
MIME-Version: 1.0
Message-Id: <20240903-rockchip-canfd-v4-16-1dc3f3f32856@pengutronix.de>
References: <20240903-rockchip-canfd-v4-0-1dc3f3f32856@pengutronix.de>
In-Reply-To: <20240903-rockchip-canfd-v4-0-1dc3f3f32856@pengutronix.de>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4204; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=ED+6kXSWduHUUw+tb/Y+Bv3E1QgFzMPcR/SJgL9GEXg=;
 b=owEBbQGS/pANAwAKASg4oj56LbxvAcsmYgBm1tVKdyzomYbx2dJM03mLpXCidh70lO/4sYfEA
 aTM5kYI9r2JATMEAAEKAB0WIQRQQLqG4LYE3Sm8Pl8oOKI+ei28bwUCZtbVSgAKCRAoOKI+ei28
 byeBB/9QWTgN7Qxu2mzTYTgpzVCa8XmPRQmQqSS7fsdzpncPww5EZEyMk2KqTxhlB+tvTG2zKoU
 RD+5t9foz3gFkWVLNJv6hT+cnq8ZnacDWC4zEaSy+PEt0QeOdtmeXWWbfQ6sGJLRy74LnmXrQD2
 bBhxi4POK+47ciYsfHtHS3I8/4DB8JxPhzXmw4oAfQvfwvIMikEwWVXx86WligpLZIbQw/+RLH6
 18s/EVVhcegMzhP57LcTyudHaLyvK0ofeST5wqhxP5KM9jjJ8Lr7spJXiZAQcsENlRCx6Rwz3Db
 26m5AVqJU8qwtO3ZR1M0HwwGPDzNC2xvu/QMknSFGMnn3UTt
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_102302_010985_23D3E0C9 
X-CRM114-Status: GOOD (  16.55  )
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

So far the TX-FIFO is only used with a depth of 1, although the
hardware offers a depth of 2.

The workaround for the chips that are affected by erratum 6, i.e. EFF
frames may be send as standard frames, is to re-send the EFF frame.
This means the driver cannot queue the next frame for sending, as long
ad the EFF frame has not been successfully send out.

Introduce rkcanfd_get_effective_tx_free() that returns "0" space in
the TX-FIFO if an EFF frame is pending and the actual free space in
the TX-FIFO otherwise. Then replace rkcanfd_get_tx_free() with
rkcanfd_get_effective_tx_free() everywhere.

Tested-by: Alibek Omarov <a1ba.omarov@gmail.com>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/net/can/rockchip/rockchip_canfd-rx.c |  2 +-
 drivers/net/can/rockchip/rockchip_canfd-tx.c | 38 ++++++++++++++++++++++++++--
 drivers/net/can/rockchip/rockchip_canfd.h    |  1 +
 3 files changed, 38 insertions(+), 3 deletions(-)

diff --git a/drivers/net/can/rockchip/rockchip_canfd-rx.c b/drivers/net/can/rockchip/rockchip_canfd-rx.c
index 9f72483dab18..bacef5e5dc39 100644
--- a/drivers/net/can/rockchip/rockchip_canfd-rx.c
+++ b/drivers/net/can/rockchip/rockchip_canfd-rx.c
@@ -124,7 +124,7 @@ static int rkcanfd_rxstx_filter(struct rkcanfd_priv *priv,
 
 		WRITE_ONCE(priv->tx_tail, priv->tx_tail + 1);
 		netif_subqueue_completed_wake(priv->ndev, 0, 1, frame_len,
-					      rkcanfd_get_tx_free(priv),
+					      rkcanfd_get_effective_tx_free(priv),
 					      RKCANFD_TX_START_THRESHOLD);
 
 		*tx_done = true;
diff --git a/drivers/net/can/rockchip/rockchip_canfd-tx.c b/drivers/net/can/rockchip/rockchip_canfd-tx.c
index f8e74e814b3b..d10da548ba71 100644
--- a/drivers/net/can/rockchip/rockchip_canfd-tx.c
+++ b/drivers/net/can/rockchip/rockchip_canfd-tx.c
@@ -8,6 +8,40 @@
 
 #include "rockchip_canfd.h"
 
+static bool rkcanfd_tx_tail_is_eff(const struct rkcanfd_priv *priv)
+{
+	const struct canfd_frame *cfd;
+	const struct sk_buff *skb;
+	unsigned int tx_tail;
+
+	if (!rkcanfd_get_tx_pending(priv))
+		return false;
+
+	tx_tail = rkcanfd_get_tx_tail(priv);
+	skb = priv->can.echo_skb[tx_tail];
+	if (!skb) {
+		netdev_err(priv->ndev,
+			   "%s: echo_skb[%u]=NULL tx_head=0x%08x tx_tail=0x%08x\n",
+			   __func__, tx_tail,
+			   priv->tx_head, priv->tx_tail);
+
+		return false;
+	}
+
+	cfd = (struct canfd_frame *)skb->data;
+
+	return cfd->can_id & CAN_EFF_FLAG;
+}
+
+unsigned int rkcanfd_get_effective_tx_free(const struct rkcanfd_priv *priv)
+{
+	if (priv->devtype_data.quirks & RKCANFD_QUIRK_RK3568_ERRATUM_6 &&
+	    rkcanfd_tx_tail_is_eff(priv))
+		return 0;
+
+	return rkcanfd_get_tx_free(priv);
+}
+
 static void rkcanfd_start_xmit_write_cmd(const struct rkcanfd_priv *priv,
 					 const u32 reg_cmd)
 {
@@ -42,7 +76,7 @@ int rkcanfd_start_xmit(struct sk_buff *skb, struct net_device *ndev)
 		return NETDEV_TX_OK;
 
 	if (!netif_subqueue_maybe_stop(priv->ndev, 0,
-				       rkcanfd_get_tx_free(priv),
+				       rkcanfd_get_effective_tx_free(priv),
 				       RKCANFD_TX_STOP_THRESHOLD,
 				       RKCANFD_TX_START_THRESHOLD)) {
 		if (net_ratelimit())
@@ -99,7 +133,7 @@ int rkcanfd_start_xmit(struct sk_buff *skb, struct net_device *ndev)
 	rkcanfd_start_xmit_write_cmd(priv, reg_cmd);
 
 	netif_subqueue_maybe_stop(priv->ndev, 0,
-				  rkcanfd_get_tx_free(priv),
+				  rkcanfd_get_effective_tx_free(priv),
 				  RKCANFD_TX_STOP_THRESHOLD,
 				  RKCANFD_TX_START_THRESHOLD);
 
diff --git a/drivers/net/can/rockchip/rockchip_canfd.h b/drivers/net/can/rockchip/rockchip_canfd.h
index f24a1d18be66..37d90400429f 100644
--- a/drivers/net/can/rockchip/rockchip_canfd.h
+++ b/drivers/net/can/rockchip/rockchip_canfd.h
@@ -533,6 +533,7 @@ int rkcanfd_handle_rx_int(struct rkcanfd_priv *priv);
 
 void rkcanfd_timestamp_init(struct rkcanfd_priv *priv);
 
+unsigned int rkcanfd_get_effective_tx_free(const struct rkcanfd_priv *priv);
 void rkcanfd_xmit_retry(struct rkcanfd_priv *priv);
 int rkcanfd_start_xmit(struct sk_buff *skb, struct net_device *ndev);
 void rkcanfd_handle_tx_done_one(struct rkcanfd_priv *priv, const u32 ts,

-- 
2.45.2



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FBAECD3427
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 09:41:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uoGCEtsOkOYhhzbUWzF1vApl+tjn0B/txy4Hfg4XwjM=; b=Ab8LkUr3uTWAA5
	AijtJUwSgFgr1mv0xhI8eyEQuB9aNLPLENi7jsY9bMeX5wz6Cl/j7338+jxtqt090e99un5po9cpm
	JwFrwG+QFcPoxPjqf8QDCrIod8apgBJfG8pzX8mUX9bf1bOpOokExftHdprFWk1M7zgGkcGUffp4W
	q4TRcvNjSKJDTfQdz7oNYgPY1tc04pcu0aci1Aae0GXeU3lnpEGx7spGi4jvkBa0Oq6Z2j7cQZwSp
	1y+AWzXQPXCoZdbBAHVopiH0Y6oIcOGtNxuXg6XPU5YDYNUA+ya2RKyFHHU7tyn0Bgnw+nYj8/bWy
	XOEfoUFCOmteBzBte59w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slQ2p-0000000HDM1-3nZl;
	Tue, 03 Sep 2024 09:41:51 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slPke-0000000H7dw-3pIa
	for linux-rockchip@bombadil.infradead.org;
	Tue, 03 Sep 2024 09:23:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=nATq/uPChFkRwUQ5FN9yZFFkTGWv3GQJfawgnzHLtPg=; b=F9HB8ZdO1OgG3a222aSTx7NGg5
	1KqvkllVMyxEsQsXDFRZXm3HnYg+5Z7pQylisG77VqbTHD6G0zNI1l6L5BXvNkOoKuAXnlf648o1e
	oWCU81XfyMdXH+RwJ/HzvDmlVpveWa2SULKGLSOaX1vQpz9rncf/NC7NmJAYtfjg9WL+Nme8ekm3P
	PzBsmvMnazCqj3hUQ4w9Pew02CMJEqLBak3SFZsPM6foOnWDnLcoNJaQSVuC+tJbKPSEEfB2LFVag
	VHsXRkvpyIJ1WGQIhVv6W2YVS1zBqS4kgRqPKCghlz2K++Dph2CpDBgPf2fnawymW/972wXDlbUMh
	TJPjr65Q==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1slPkb-0000000815P-3YMZ
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Sep 2024 09:23:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1slPkM-0000x9-RW
	for linux-rockchip@lists.infradead.org; Tue, 03 Sep 2024 11:22:46 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1slPkG-0059aE-H2
	for linux-rockchip@lists.infradead.org; Tue, 03 Sep 2024 11:22:40 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id 332233311F1
	for <linux-rockchip@lists.infradead.org>; Tue, 03 Sep 2024 09:22:40 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id 67B40331049;
	Tue, 03 Sep 2024 09:22:28 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id 973d053d;
	Tue, 3 Sep 2024 09:22:26 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 03 Sep 2024 11:21:57 +0200
Subject: [PATCH can-next v4 15/20] can: rockchip_canfd: add stats support
 for errata workarounds
MIME-Version: 1.0
Message-Id: <20240903-rockchip-canfd-v4-15-1dc3f3f32856@pengutronix.de>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=6752; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=M8RAQjNTeDBT8nZWTnxb7Ws+IsIfE4vLrIdAxoZeDu8=;
 b=owEBbQGS/pANAwAKASg4oj56LbxvAcsmYgBm1tVJXJDu50tV9ffdiERYwNiKXQ2MS3jukUWvV
 zmIk8KxOimJATMEAAEKAB0WIQRQQLqG4LYE3Sm8Pl8oOKI+ei28bwUCZtbVSQAKCRAoOKI+ei28
 b3pVB/4+Hbo01jqqTSYm97mOfa3nDc+epnd7bfxFZRFQJPp+Ei0Nx4RYZn0RWnzH5nt7TDsr1JX
 CrySMgBHr33nLPeu1oDrh2MgNjxy4WNY3AnQm+F46A8JmreGN4qJbnedzcAtdog2y93qUO6mThC
 fZa4MAAGjZAndglnTHFIaHLieg4nv1O29cuzwpgkjw6LjYApyFsy34ECFY6P9aMcg7CNyP11hgG
 9WkjnvqLG6CinnTYHU2BL6fduwSZWi0jI6aq+sA+pVYmfmxKJMPNrbUvK/jvILbygJmOF3cs+Jl
 gz0v3UlOWyPrkPTf0RiA5xT0DMUT49Xfr/+4toJoI9zp76T1
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_102301_939079_E8D52FC9 
X-CRM114-Status: GOOD (  20.85  )
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

The driver contains workarounds for some of the rk3568v2 errata. Add
ethtool-based statistics ("ethtool -S") to track how often an erratum
workaround was needed.

Tested-by: Alibek Omarov <a1ba.omarov@gmail.com>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/net/can/rockchip/Makefile                 |  1 +
 drivers/net/can/rockchip/rockchip_canfd-core.c    |  2 +
 drivers/net/can/rockchip/rockchip_canfd-ethtool.c | 73 +++++++++++++++++++++++
 drivers/net/can/rockchip/rockchip_canfd-rx.c      | 13 +++-
 drivers/net/can/rockchip/rockchip_canfd.h         | 14 +++++
 5 files changed, 102 insertions(+), 1 deletion(-)

diff --git a/drivers/net/can/rockchip/Makefile b/drivers/net/can/rockchip/Makefile
index 4eb7c50d8d5b..3760d3e1baa3 100644
--- a/drivers/net/can/rockchip/Makefile
+++ b/drivers/net/can/rockchip/Makefile
@@ -4,6 +4,7 @@ obj-$(CONFIG_CAN_ROCKCHIP_CANFD) += rockchip_canfd.o
 
 rockchip_canfd-objs :=
 rockchip_canfd-objs += rockchip_canfd-core.o
+rockchip_canfd-objs += rockchip_canfd-ethtool.o
 rockchip_canfd-objs += rockchip_canfd-rx.o
 rockchip_canfd-objs += rockchip_canfd-timestamp.o
 rockchip_canfd-objs += rockchip_canfd-tx.o
diff --git a/drivers/net/can/rockchip/rockchip_canfd-core.c b/drivers/net/can/rockchip/rockchip_canfd-core.c
index cf176180a282..4db552bfc4db 100644
--- a/drivers/net/can/rockchip/rockchip_canfd-core.c
+++ b/drivers/net/can/rockchip/rockchip_canfd-core.c
@@ -800,6 +800,8 @@ static int rkcanfd_register(struct rkcanfd_priv *priv)
 	if (err)
 		goto out_pm_runtime_disable;
 
+	rkcanfd_ethtool_init(priv);
+
 	err = register_candev(ndev);
 	if (err)
 		goto out_pm_runtime_put_sync;
diff --git a/drivers/net/can/rockchip/rockchip_canfd-ethtool.c b/drivers/net/can/rockchip/rockchip_canfd-ethtool.c
new file mode 100644
index 000000000000..0084f37b2b9f
--- /dev/null
+++ b/drivers/net/can/rockchip/rockchip_canfd-ethtool.c
@@ -0,0 +1,73 @@
+// SPDX-License-Identifier: GPL-2.0
+//
+// Copyright (c) 2023, 2024 Pengutronix,
+//               Marc Kleine-Budde <kernel@pengutronix.de>
+//
+
+#include <linux/ethtool.h>
+
+#include "rockchip_canfd.h"
+
+enum rkcanfd_stats_type {
+	RKCANFD_STATS_TYPE_RX_FIFO_EMPTY_ERRORS,
+	RKCANFD_STATS_TYPE_TX_EXTENDED_AS_STANDARD_ERRORS,
+};
+
+static const char rkcanfd_stats_strings[][ETH_GSTRING_LEN] = {
+	[RKCANFD_STATS_TYPE_RX_FIFO_EMPTY_ERRORS] = "rx_fifo_empty_errors",
+	[RKCANFD_STATS_TYPE_TX_EXTENDED_AS_STANDARD_ERRORS] = "tx_extended_as_standard_errors",
+};
+
+static void
+rkcanfd_ethtool_get_strings(struct net_device *ndev, u32 stringset, u8 *buf)
+{
+	switch (stringset) {
+	case ETH_SS_STATS:
+		memcpy(buf, rkcanfd_stats_strings,
+		       sizeof(rkcanfd_stats_strings));
+	}
+}
+
+static int rkcanfd_ethtool_get_sset_count(struct net_device *netdev, int sset)
+{
+	switch (sset) {
+	case ETH_SS_STATS:
+		return ARRAY_SIZE(rkcanfd_stats_strings);
+	default:
+		return -EOPNOTSUPP;
+	}
+}
+
+static void
+rkcanfd_ethtool_get_ethtool_stats(struct net_device *ndev,
+				  struct ethtool_stats *stats, u64 *data)
+{
+	struct rkcanfd_priv *priv = netdev_priv(ndev);
+	struct rkcanfd_stats *rkcanfd_stats;
+	unsigned int start;
+
+	rkcanfd_stats = &priv->stats;
+
+	do {
+		start = u64_stats_fetch_begin(&rkcanfd_stats->syncp);
+
+		data[RKCANFD_STATS_TYPE_RX_FIFO_EMPTY_ERRORS] =
+			u64_stats_read(&rkcanfd_stats->rx_fifo_empty_errors);
+		data[RKCANFD_STATS_TYPE_TX_EXTENDED_AS_STANDARD_ERRORS] =
+			u64_stats_read(&rkcanfd_stats->tx_extended_as_standard_errors);
+	} while (u64_stats_fetch_retry(&rkcanfd_stats->syncp, start));
+}
+
+static const struct ethtool_ops rkcanfd_ethtool_ops = {
+	.get_ts_info = ethtool_op_get_ts_info,
+	.get_strings = rkcanfd_ethtool_get_strings,
+	.get_sset_count = rkcanfd_ethtool_get_sset_count,
+	.get_ethtool_stats = rkcanfd_ethtool_get_ethtool_stats,
+};
+
+void rkcanfd_ethtool_init(struct rkcanfd_priv *priv)
+{
+	priv->ndev->ethtool_ops = &rkcanfd_ethtool_ops;
+
+	u64_stats_init(&priv->stats.syncp);
+}
diff --git a/drivers/net/can/rockchip/rockchip_canfd-rx.c b/drivers/net/can/rockchip/rockchip_canfd-rx.c
index eff08948840c..9f72483dab18 100644
--- a/drivers/net/can/rockchip/rockchip_canfd-rx.c
+++ b/drivers/net/can/rockchip/rockchip_canfd-rx.c
@@ -96,6 +96,7 @@ static int rkcanfd_rxstx_filter(struct rkcanfd_priv *priv,
 				bool *tx_done)
 {
 	struct net_device_stats *stats = &priv->ndev->stats;
+	struct rkcanfd_stats *rkcanfd_stats = &priv->stats;
 	const struct canfd_frame *cfd_nominal;
 	const struct sk_buff *skb;
 	unsigned int tx_tail;
@@ -166,6 +167,9 @@ static int rkcanfd_rxstx_filter(struct rkcanfd_priv *priv,
 		return 0;
 
 	/* Affected by Erratum 6 */
+	u64_stats_update_begin(&rkcanfd_stats->syncp);
+	u64_stats_inc(&rkcanfd_stats->tx_extended_as_standard_errors);
+	u64_stats_update_end(&rkcanfd_stats->syncp);
 
 	/* Manual handling of CAN Bus Error counters. See
 	 * rkcanfd_get_corrected_berr_counter() for detailed
@@ -211,8 +215,15 @@ static int rkcanfd_handle_rx_int_one(struct rkcanfd_priv *priv)
 			 cfd->data, sizeof(cfd->data));
 
 	/* Erratum 5: Counters for TXEFIFO and RXFIFO may be wrong */
-	if (rkcanfd_fifo_header_empty(header))
+	if (rkcanfd_fifo_header_empty(header)) {
+		struct rkcanfd_stats *rkcanfd_stats = &priv->stats;
+
+		u64_stats_update_begin(&rkcanfd_stats->syncp);
+		u64_stats_inc(&rkcanfd_stats->rx_fifo_empty_errors);
+		u64_stats_update_end(&rkcanfd_stats->syncp);
+
 		return 0;
+	}
 
 	len = rkcanfd_fifo_header_to_cfd_header(priv, header, cfd);
 
diff --git a/drivers/net/can/rockchip/rockchip_canfd.h b/drivers/net/can/rockchip/rockchip_canfd.h
index 67f135fbcfb9..f24a1d18be66 100644
--- a/drivers/net/can/rockchip/rockchip_canfd.h
+++ b/drivers/net/can/rockchip/rockchip_canfd.h
@@ -446,6 +446,16 @@ struct rkcanfd_fifo_header {
 	u32 ts;
 };
 
+struct rkcanfd_stats {
+	struct u64_stats_sync syncp;
+
+	/* Erratum 5 */
+	u64_stats_t rx_fifo_empty_errors;
+
+	/* Erratum 6 */
+	u64_stats_t tx_extended_as_standard_errors;
+};
+
 struct rkcanfd_priv {
 	struct can_priv can;
 	struct can_rx_offload offload;
@@ -461,6 +471,8 @@ struct rkcanfd_priv {
 
 	struct can_berr_counter bec;
 
+	struct rkcanfd_stats stats;
+
 	struct reset_control *reset;
 	struct clk_bulk_data *clks;
 	int clks_num;
@@ -515,6 +527,8 @@ rkcanfd_get_tx_free(const struct rkcanfd_priv *priv)
 	return RKCANFD_TXFIFO_DEPTH - rkcanfd_get_tx_pending(priv);
 }
 
+void rkcanfd_ethtool_init(struct rkcanfd_priv *priv);
+
 int rkcanfd_handle_rx_int(struct rkcanfd_priv *priv);
 
 void rkcanfd_timestamp_init(struct rkcanfd_priv *priv);

-- 
2.45.2



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

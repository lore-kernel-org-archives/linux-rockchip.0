From: Shuyu Wei <wsy2220@gmail.com>
Subject: [PATCH] ethernet:arc: Fix racing of TX ring buffer
Date: Sun, 15 May 2016 00:16:02 +0800
Message-ID: <20160514161602.GA3347@debian-dorm>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <netdev-owner@vger.kernel.org>
Content-Disposition: inline; filename="mail1.txt"
Sender: netdev-owner@vger.kernel.org
To: wxt@rock-chips.com, davem@davemloft.net
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, netdev@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

The tail of the ring buffer(txbd_dirty) should never go ahead of the
head(txbd_curr) or the ring buffer will corrupt. 

This is the root cause of racing.

Besides, setting the FOR_EMAC flag should be the last step of modifying
the buffer descriptor, or possible racing will occur.

Signed-off-by: Shuyu Wei <sy.w@outlook.com>
---

diff --git a/drivers/net/ethernet/arc/emac_main.c b/drivers/net/ethernet/arc/emac_main.c
index a3a9392..5ece05b 100644
--- a/drivers/net/ethernet/arc/emac_main.c
+++ b/drivers/net/ethernet/arc/emac_main.c
@@ -155,7 +155,7 @@ static void arc_emac_tx_clean(struct net_device *ndev)
        struct net_device_stats *stats = &ndev->stats;
        unsigned int i;
 
-       for (i = 0; i < TX_BD_NUM; i++) {
+       for (i = priv->txbd_dirty; i != priv->txbd_curr; i = (i + 1) % TX_BD_NUM) {
                unsigned int *txbd_dirty = &priv->txbd_dirty;
                struct arc_emac_bd *txbd = &priv->txbd[*txbd_dirty];
                struct buffer_state *tx_buff = &priv->tx_buff[*txbd_dirty];
@@ -686,12 +686,12 @@ static int arc_emac_tx(struct sk_buff *skb, struct net_device *ndev)
 
        skb_tx_timestamp(skb);
 
+       priv->tx_buff[*txbd_curr].skb = skb;
        *info = cpu_to_le32(FOR_EMAC | FIRST_OR_LAST_MASK | len);
 
        /* Make sure info word is set */
        wmb();
 
-       priv->tx_buff[*txbd_curr].skb = skb;
 
        /* Increment index to point to the next BD */
        *txbd_curr = (*txbd_curr + 1) % TX_BD_NUM;

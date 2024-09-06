Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C35E7E6FE46
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 20:27:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z3c/BXVlSxKXc7WY+y8JuBLAraaOpRKgAyhtxjzSz9o=; b=W1WfbfrD0SbpPz
	1KFLfQayfaW3ZAov6SRrga+wVd3iajEY1ntAqLxLQxoWwBta0NLckx97tbzNU1Xq3fOA7+IPRlaKd
	s0INWPbg5jbZ1vLvxuz5IzHgphuDBrfD+okff9TGREn6h8TxWZELPBR6RSBFdWHsWH+NZ5zrK6fLO
	WDCUH3X29/tu7s+iN4Rk3HWXVxnx9Q0a9Is6zFh6LV+v5+/dpUpV38GGPCuC/U3lOn+zVVh8bhEWa
	d4QiXLVOVDP8IWvuUmiHBCK20zL45firxfJ3CeORJPxhRPlc0WV4y3Y/5iNeWT3KgNS+P1yU4cKuv
	HU4Rd6ancx3HZUGcdkSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smfYd-0000000DXoo-3CML;
	Fri, 06 Sep 2024 20:27:51 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smfXd-0000000DXgP-3AeF;
	Fri, 06 Sep 2024 20:26:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 507AFA45264;
	Fri,  6 Sep 2024 20:26:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 822D9C4CEC4;
	Fri,  6 Sep 2024 20:26:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725654408;
	bh=MPbtgiPJVj+l9qLuZhnBJN2NfyrB5fLloQlhRvm4ZxE=;
	h=From:Date:Subject:To:Cc:From;
	b=Q29skeIBfe/ADVoArWG1Z7hNhEn79RUO7d9jC8IzbYgH6bbtkp70z4T1432vtX+KP
	 /YJTZ9AaIPxGj0LGEtN88z34p3gU7PdCYob0wv8lLlKPszV5sxhHmqplY+1kYDIiL0
	 7HeD5+mtxvrc84AT+StpsQPdVrWpO+ZVTot4Rr6kMO+kIJYLtITBkHQEYiLTlg5uy4
	 qBWPfEf2obH7Djd+hkHct1y65KfVd6yuD8gMtncSEz1sisJQ1KOGZtuIindbKNW8zO
	 rc5TLhM8RehPOV7Gu2BOtXcGXPK4pL72Fb9prz1C7yEBhtQmC7z42HdIeV7oJLK9mr
	 KmOUzsTowHfGQ==
From: Nathan Chancellor <nathan@kernel.org>
Date: Fri, 06 Sep 2024 13:26:41 -0700
Subject: [PATCH] can: rockchip_canfd: fix return type of
 rkcanfd_start_xmit()
MIME-Version: 1.0
Message-Id: <20240906-rockchip-canfd-wifpts-v1-1-b1398da865b7@kernel.org>
X-B4-Tracking: v=1; b=H4sIAIBl22YC/x3MSwqAMAwA0atI1gZqFX9XERc1phqEWlpRQby7x
 eVbzDwQOQhH6LMHAp8SZXcJRZ4BrcYtjDIng1a6Up2qMey00SoeyTg74yXWHxFL001NzQ1p3UJ
 qfWAr9/8dxvf9AOTsc0xnAAAA
X-Change-ID: 20240906-rockchip-canfd-wifpts-3a9b76e7c228
To: Marc Kleine-Budde <mkl@pengutronix.de>, kernel@pengutronix.de, 
 Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-can@vger.kernel.org, netdev@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 llvm@lists.linux.dev, patches@lists.linux.dev, 
 Nathan Chancellor <nathan@kernel.org>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=3084; i=nathan@kernel.org;
 h=from:subject:message-id; bh=MPbtgiPJVj+l9qLuZhnBJN2NfyrB5fLloQlhRvm4ZxE=;
 b=owGbwMvMwCUmm602sfCA1DTG02pJDGm3U9szRYMXm7c84v3/ZNn6WTP2T6iQYVi3aNeksn/LY
 qpF9vxu7ChlYRDjYpAVU2Spfqx63NBwzlnGG6cmwcxhZQIZwsDFKQATEa1l+Kd7zNbk8zyJx4ER
 BQcVQl5fKFF6dOPIzBk1p8T3G9nlWDIzMnwJnJfpp7pxdcWLS/ZrO2e1ydZZ1Qs6Ptx11P2OeZz
 3ExYA
X-Developer-Key: i=nathan@kernel.org; a=openpgp;
 fpr=2437CB76E544CB6AB3D9DFD399739260CB6CB716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_132649_960353_6F339688 
X-CRM114-Status: GOOD (  13.48  )
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

With clang's kernel control flow integrity (kCFI, CONFIG_CFI_CLANG),
indirect call targets are validated against the expected function
pointer prototype to make sure the call target is valid to help mitigate
ROP attacks. If they are not identical, there is a failure at run time,
which manifests as either a kernel panic or thread getting killed. A
warning in clang aims to catch these at compile time, which reveals:

  drivers/net/can/rockchip/rockchip_canfd-core.c:770:20: error: incompatible function pointer types initializing 'netdev_tx_t (*)(struct sk_buff *, struct net_device *)' (aka 'enum netdev_tx (*)(struct sk_buff *, struct net_device *)') with an expression of type 'int (struct sk_buff *, struct net_device *)' [-Werror,-Wincompatible-function-pointer-types-strict]
    770 |         .ndo_start_xmit = rkcanfd_start_xmit,
        |                           ^~~~~~~~~~~~~~~~~~

->ndo_start_xmit() in 'struct net_device_ops' expects a return type of
'netdev_tx_t', not 'int' (although the types are ABI compatible). Adjust
the return type of rkcanfd_start_xmit() to match the prototype's to
resolve the warning.

Fixes: ff60bfbaf67f ("can: rockchip_canfd: add driver for Rockchip CAN-FD controller")
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/net/can/rockchip/rockchip_canfd-tx.c | 2 +-
 drivers/net/can/rockchip/rockchip_canfd.h    | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/can/rockchip/rockchip_canfd-tx.c b/drivers/net/can/rockchip/rockchip_canfd-tx.c
index f954f38b955f6dc26b856e4c2f40e20256a7f114..865a15e033a9e50f44af342eec43d4ba10b40fa7 100644
--- a/drivers/net/can/rockchip/rockchip_canfd-tx.c
+++ b/drivers/net/can/rockchip/rockchip_canfd-tx.c
@@ -63,7 +63,7 @@ void rkcanfd_xmit_retry(struct rkcanfd_priv *priv)
 	rkcanfd_start_xmit_write_cmd(priv, reg_cmd);
 }
 
-int rkcanfd_start_xmit(struct sk_buff *skb, struct net_device *ndev)
+netdev_tx_t rkcanfd_start_xmit(struct sk_buff *skb, struct net_device *ndev)
 {
 	struct rkcanfd_priv *priv = netdev_priv(ndev);
 	u32 reg_frameinfo, reg_id, reg_cmd;
diff --git a/drivers/net/can/rockchip/rockchip_canfd.h b/drivers/net/can/rockchip/rockchip_canfd.h
index 3efd7f174e14c2b67b1feef897bc34336f578226..93131c7d7f54d036727356ca9a2d36dcf24d702b 100644
--- a/drivers/net/can/rockchip/rockchip_canfd.h
+++ b/drivers/net/can/rockchip/rockchip_canfd.h
@@ -546,7 +546,7 @@ void rkcanfd_timestamp_stop_sync(struct rkcanfd_priv *priv);
 
 unsigned int rkcanfd_get_effective_tx_free(const struct rkcanfd_priv *priv);
 void rkcanfd_xmit_retry(struct rkcanfd_priv *priv);
-int rkcanfd_start_xmit(struct sk_buff *skb, struct net_device *ndev);
+netdev_tx_t rkcanfd_start_xmit(struct sk_buff *skb, struct net_device *ndev);
 void rkcanfd_handle_tx_done_one(struct rkcanfd_priv *priv, const u32 ts,
 				unsigned int *frame_len_p);
 

---
base-commit: 52fc70a32573707f70d6b1b5c5fe85cc91457393
change-id: 20240906-rockchip-canfd-wifpts-3a9b76e7c228

Best regards,
-- 
Nathan Chancellor <nathan@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

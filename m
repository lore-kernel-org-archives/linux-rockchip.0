Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76D01CCA462
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 09:46:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TRo9W1IF6fHsFAbKX00GIkG29ZK9mKEJXM6cz8AGdOI=; b=SO7z/3naRF4fco
	8pAmijvE0r17YibLlbOcp7hKwY1LfjuU6R+TLfNKDGLMzexbNTHpysQSJVmXydw8r2/vrn4elxUN5
	MWR/dYmyHzdJPIZsiGo9mjGuV2dIEr1IOu6Z2BFu9btaIhuNhqaNjkoKHyH2BudKVW6fv7ZSrUW/q
	FB97NGPp54Ra+OdUiu25ZCxF6oIXBm7XMMqHIV5v4x6BpY3nn6qIiiAVe4WQJh81/MNO5M6mVhV42
	xuc7/4RGf6qklSEgRRlb2obHhXFDPEz3SwXKkF+rIi8ypqTf5ZIsTMLDr/sRKmk18JOoemanTH8kJ
	hqlQiScaQG9suxv6azzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHI2H-0000000HJDT-2MYd;
	Thu, 15 Oct 2026 09:46:05 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHI2G-0000000HJBy-0lW5;
	Thu, 15 Oct 2026 09:46:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id EB3B043A78;
	Thu, 15 Oct 2026 09:46:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C55C4C2BCF4;
	Thu, 15 Oct 2026 09:46:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792057563;
	bh=ezz9X8LCg9d+XCwZ3z22UMCSEaqyTLaQMTVDqp8Flk4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=oMwUU0yX7cyUqp6YbrMYWdwtKziUaUQOWmQejKuviONmRSAREkq4XcifHnDssIJmn
	 b+ZohOJk2B8rdnmPqmoqb5CdD5i9A1ut9ciSbpnBycwZe7Ebg2rHRSuuena6+fZNGM
	 KGA5SXkAiz6f0Mh4AKl5hJ0hpZMeOifMFIKh7WfE4c5+vA0gPDc/DSwHBT1JX1Rdgg
	 QvbJLCOogIuP6VAWUQWZjIOdjz/GvWKjBvpPMrhMpNqSaukCfg6LqUrYIWcSeBB6Rl
	 ie37f04e9LzhYHKlJ5g05fSth8GIhc9DETuTjkMnqgWHnBjS1igwqcpJOS9ae8z9Ys
	 HcWzslmD9yTyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6D25CC6B38;
	Thu, 15 Oct 2026 09:46:03 +0000 (UTC)
From: Cunhao Lu via B4 Relay <devnull+1579567540.qq.com@kernel.org>
Date: Thu, 15 Oct 2026 17:45:02 +0800
Subject: [PATCH net v5 1/6] can: dev: prevent bus-off recovery when the
 interface is not running
MIME-Version: 1.0
Message-Id: <20261015-rockchip-canfd-restart-close-v5-1-ae77327037c9@qq.com>
References: <20261015-rockchip-canfd-restart-close-v5-0-ae77327037c9@qq.com>
In-Reply-To: <20261015-rockchip-canfd-restart-close-v5-0-ae77327037c9@qq.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>, 
 Vincent Mailhol <mailhol@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 "David S. Miller" <davem@davemloft.net>, 
 Wolfgang Grandegger <wg@grandegger.com>, 
 Oliver Hartkopp <socketcan@hartkopp.net>, kernel@pengutronix.de
Cc: linux-can@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 stable@vger.kernel.org, Cunhao Lu <1579567540@qq.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792057562; l=2288;
 i=1579567540@qq.com; s=20261015; h=from:subject:message-id;
 bh=uB+Pk/mygKqGhQYSoYzTiXpubbzalD/v2yRTUeNfoh0=;
 b=aDOVh3yRyfci2lDw37N9t4OltHL3UIkjn85vsXX0VOGrJzTsJ1xhkohkB/hfFvLNhdyYilBYW
 zcqn9mCt1FnC1WfK015mmaWiq53KoChOnxQLi8kAAL6d+geWBHlGaTh
X-Developer-Key: i=1579567540@qq.com; a=ed25519;
 pk=sUTWrzlIwT4C7ctjNfVZAzzg0G7QUn2XxRGpYsw4RtM=
X-Endpoint-Received: by B4 Relay for 1579567540@qq.com/20261015 with
 auth_id=1177
X-Original-From: Cunhao Lu <1579567540@qq.com>
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
Reply-To: 1579567540@qq.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Cunhao Lu <1579567540@qq.com>

The networking core clears __LINK_STATE_START before calling ndo_stop(),
but CAN bus-off recovery neither checks this state before queuing work
nor before calling the driver's restart callback. Recovery can therefore
be queued or started after the interface has begun closing, potentially
re-enabling hardware while the driver is tearing it down.

Check netif_running() in can_restart() before flushing echo skbs, sending
the restart notification or enabling the carrier. Keep the existing
unsupported-operation check first. In can_bus_off(), only schedule
recovery for a running interface and make the log message reflect that
decision. Keep reporting bus-off and disabling the carrier.

These checks do not wait for recovery that has already passed the check,
nor serialize the check with work submission. Drivers still need to
cancel restart work before tearing down resources and quiesce its
producers before their final cleanup.

Fixes: 39549eef3587 ("can: CAN Network device driver and Netlink interface")
Cc: stable@vger.kernel.org
Signed-off-by: Cunhao Lu <1579567540@qq.com>
---
 drivers/net/can/dev/dev.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/net/can/dev/dev.c b/drivers/net/can/dev/dev.c
index 769745e22a3c7..92492c503446e 100644
--- a/drivers/net/can/dev/dev.c
+++ b/drivers/net/can/dev/dev.c
@@ -198,6 +198,9 @@ static int can_restart(struct net_device *dev)
 	if (!priv->do_set_mode)
 		return -EOPNOTSUPP;
 
+	if (!netif_running(dev))
+		return -ENETDOWN;
+
 	if (netif_carrier_ok(dev))
 		netdev_err(dev, "Attempt to restart for bus-off recovery, but carrier is OK?\n");
 
@@ -264,8 +267,9 @@ int can_restart_now(struct net_device *dev)
 void can_bus_off(struct net_device *dev)
 {
 	struct can_priv *priv = netdev_priv(dev);
+	const bool restart = priv->restart_ms && netif_running(dev);
 
-	if (priv->restart_ms)
+	if (restart)
 		netdev_info(dev, "bus-off, scheduling restart in %d ms\n",
 			    priv->restart_ms);
 	else
@@ -273,7 +277,7 @@ void can_bus_off(struct net_device *dev)
 
 	netif_carrier_off(dev);
 
-	if (priv->restart_ms)
+	if (restart)
 		schedule_delayed_work(&priv->restart_work,
 				      msecs_to_jiffies(priv->restart_ms));
 }

-- 
2.34.1



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

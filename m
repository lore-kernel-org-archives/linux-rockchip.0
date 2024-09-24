Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB3C0CF9C71
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Sep 2024 09:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cZ3wBNKx+pDfdcVz1S+LCwh8+yL3ubjKNgFJRmr2joM=; b=Q3emGbjbLKCnwg
	Ph5hTRzOweGLkDbSVQm1Z5qkgIf9n+5lPNiowmPrwiGP3xvGim0FslUnPxCFcJzKP4yFhkRtypTK2
	ImecLTwzL4GEzRVPxLfNnk+VbRhsmmmw3bP7N3daIW1cyq95LZOKdwGFHheCtkLrzi06tEJvaTZ18
	ja8FkbJSkmLL5VTtpxurFhxaVqFzU23WkzEGX3gjOaSjNbFORH+qZO511UF8PmthyVCDyc83M+F+j
	eETzDQUCwpyQOYZjEsNmfLjvEZFg9Yi44bb1Cv5IzZrNHrNZnbwQ4MBooV6oqEXrAEF33jno5LZy6
	x+jlPRPWEqrNf+NjLTxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1st1kA-00000001mJT-084w;
	Tue, 24 Sep 2024 09:22:02 +0000
Received: from laurent.telenet-ops.be ([2a02:1800:110:4::f00:19])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1st1iK-00000001m0j-3S9S
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Sep 2024 09:20:11 +0000
Received: from ramsan.of.borg ([84.195.187.55])
	by laurent.telenet-ops.be with cmsmtp
	id G9Kw2D00J1C8whw019Kw7X; Tue, 24 Sep 2024 11:20:02 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1st1dq-000ShT-KK;
	Tue, 24 Sep 2024 11:15:34 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1st1du-0003Zv-Gj;
	Tue, 24 Sep 2024 11:15:34 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
	kernel@pengutronix.de,
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Cc: "David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-can@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] can: CAN_ROCKCHIP_CANFD should depend on ARCH_ROCKCHIP
Date: Tue, 24 Sep 2024 11:15:31 +0200
Message-Id: <a4b3c8c1cca9515e67adac83af5ba1b1fab2fcbc.1727169288.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_022009_055366_375E6F09 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
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

The Rockchip CAN-FD controller is only present on Rockchip SoCs.  Hence
add a dependency on ARCH_ROCKCHIP, to prevent asking the user about this
driver when configuring a kernel without Rockchip platform support.

Fixes: ff60bfbaf67f219c ("can: rockchip_canfd: add driver for Rockchip CAN-FD controller")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/net/can/rockchip/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/can/rockchip/Kconfig b/drivers/net/can/rockchip/Kconfig
index e029e2a3ca4b04df..fd8d9f5eeaa434ac 100644
--- a/drivers/net/can/rockchip/Kconfig
+++ b/drivers/net/can/rockchip/Kconfig
@@ -3,6 +3,7 @@
 config CAN_ROCKCHIP_CANFD
 	tristate "Rockchip CAN-FD controller"
 	depends on OF || COMPILE_TEST
+	depends on ARCH_ROCKCHIP || COMPILE_TEST
 	select CAN_RX_OFFLOAD
 	help
 	  Say Y here if you want to use CAN-FD controller found on
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

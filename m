Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86543CA0FE8
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Aug 2024 19:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vg4CuLJkbNOUTC/uV8ZM0X8H9L7prpLE5kJFT6XkVR4=; b=N+MFpZjYRZe1aE
	90foaRBHMHm0yrb9dmk0OSWyKbRQrnEhLGVrKfBgfXKujMLjCNO3lI6d00OrQXg654vPkbdG5T8gr
	T/vWJ9om+zG2STBaqEbBpUsUuecBLyS9A+ThholtcUQGgIA4jeut5SqWLLS6WYxhDn2/0K04maxoH
	bQKRce0x+juRdbfby7hsyFe/cONaTFL9bSzINbdoDMrZkWTIICynB/63Lxfoj6VVLdcc9cnmW/weT
	9xu6117gGUSa4RR+uM2T2DgaU+TzdiYh+Q5jB2nMyDebeCzIGK4pLIUvRqK9DwDun6gpbgzK0AjnQ
	b+NzYndaVnHFL99s9xGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk7XH-00000007WGl-3AzF;
	Fri, 30 Aug 2024 19:43:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk7IX-00000007SGS-0y9t
	for linux-rockchip@bombadil.infradead.org;
	Fri, 30 Aug 2024 19:28:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=4SvbK1wjeW/ERXiS9UqxXa1yRBdT2XB7FjvXQTYntM4=; b=rAT+Hw2BSNcbEFo9HejMitPQca
	FsnOSPGJrpFh2rxu0/bELhOa1ZGTiNrQa/KAFpTXq9wodpKMj6N5l05yF21MIZiO3xwlgaWfiGtDT
	poWr78Pex77/2nDWYnaMLgTXAXpwtV5aQwc+C3Fl0JRE9f/IppOvGG51ZEsYdXFED2K5wjH8GxqrV
	eargmFo/xmH/irwdRtvUwMmUdFKBOHpF5FQ5cyIQFTGUt3EcOZCtQqfSr03Np3Ma3mfoa9l/6EvvM
	vDAgX1D7X5VLG/Pu2D1RuD+oQ1VJU0lh/IAMSpHNBiEmAin12+rUq0a2j9UQcPg5EO3jeOH7S2U9x
	L4kWNqTA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk7H9-0000000Bk8l-0Mdc
	for linux-rockchip@lists.infradead.org;
	Fri, 30 Aug 2024 19:28:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1sk7Gu-0006F8-HY
	for linux-rockchip@lists.infradead.org; Fri, 30 Aug 2024 21:27:00 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1sk7Go-004Djo-A9
	for linux-rockchip@lists.infradead.org; Fri, 30 Aug 2024 21:26:54 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id B06EC32E1C9
	for <linux-rockchip@lists.infradead.org>; Fri, 30 Aug 2024 19:26:53 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id 07AA132E107;
	Fri, 30 Aug 2024 19:26:47 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id a697fdc8;
	Fri, 30 Aug 2024 19:26:45 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Fri, 30 Aug 2024 21:26:07 +0200
Subject: [PATCH can-next v3 10/20] can: rockchip_canfd:
 rkcanfd_register_done(): add warning for erratum 5
MIME-Version: 1.0
Message-Id: <20240830-rockchip-canfd-v3-10-d426266453fa@pengutronix.de>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1385; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=y0d1r7AKHz0UNb79ePpfEEpNKI/dMUqJeszbCY2XjeA=;
 b=owGbwMvMwMWoYbHIrkp3Tz7jabUkhrRLMk9WSnI6zdqm+rqubaJv0Hpum/wXK/fkxl9rrD/3x
 C1yxVvjTkZjFgZGLgZZMUWWAIddbQ+2sdzV3GMXDzOIlQlkCgMXpwBMpHIBB8MUlfxqvebQibof
 HCpOrjyp1xLP+rfNSWaNuZ7wI0VvhoQYZ3/+u/flZjR4Giqr6H/mYNV9uCxpPUfX7unP/kRz71V
 /oLHil2p19UP78sJe3Sm3w6XNl71wteHXbixoTjurdE9xUeDKQ3y3nv0XXNKf8V5eYOL6KK8VV2
 Q1nZ/d+P5OYHl6llNR5E/j6fNWNzw6I8i7ZMLmq3HGs89Jt4ctKL7Gtshc/1P+gfB2/cw/j2TUc
 28orzBQuhp9XEJie8HnWhUHc76zYlWZmwwjVu6sXr6vZX8H8wO5FYFvb6vU/a5NMDHRjDu+7mXu
 xSldAYnpq4xrOi17fI+8Weci8/6LxZUIZWPDRu/I633vAQ==
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_202833_347903_593B745F 
X-CRM114-Status: GOOD (  11.65  )
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

Tests on the rk3568v2 and rk3568v3 show that a reduced "baudclk" (e.g.
80MHz, compared to the standard 300MHz) significantly increases the
possibility of incorrect FIFO counters, i.e. erratum 5.

Print an info message if the clock is below the known good value of
300MHz.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/net/can/rockchip/rockchip_canfd-core.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/net/can/rockchip/rockchip_canfd-core.c b/drivers/net/can/rockchip/rockchip_canfd-core.c
index 40911bb63623..d6c0f2fe8d2b 100644
--- a/drivers/net/can/rockchip/rockchip_canfd-core.c
+++ b/drivers/net/can/rockchip/rockchip_canfd-core.c
@@ -738,6 +738,13 @@ static void rkcanfd_register_done(const struct rkcanfd_priv *priv)
 		    FIELD_GET(RKCANFD_REG_RTL_VERSION_MAJOR, dev_id),
 		    FIELD_GET(RKCANFD_REG_RTL_VERSION_MINOR, dev_id),
 		    priv->devtype_data.quirks);
+
+	if (priv->devtype_data.quirks & RKCANFD_QUIRK_RK3568_ERRATUM_5 &&
+	    priv->can.clock.freq < RKCANFD_ERRATUM_5_SYSCLOCK_HZ_MIN)
+		netdev_info(priv->ndev,
+			    "Erratum 5: CAN clock frequency (%luMHz) lower than known good (%luMHz), expect degraded performance\n",
+			    priv->can.clock.freq / MEGA,
+			    RKCANFD_ERRATUM_5_SYSCLOCK_HZ_MIN / MEGA);
 }
 
 static int rkcanfd_register(struct rkcanfd_priv *priv)

-- 
2.45.2



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

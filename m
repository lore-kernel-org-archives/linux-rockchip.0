Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A674EC2BA4C
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jan 2022 15:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NtQQSCiMLYisF9pOlX+WdKHFJmjld9FoNhyksyDNi4k=; b=o10haxh03IJrWU
	F1fw5Yzc1JMZJ0MLF/ZZspabkRwKyTftfifRGoa4gCZDPmUv+IT6jONmOSHbWM+hE2xUcLqP+sZ+F
	yK7eJXYt4o2Oazj0JpV7PXJDeYyB1sOikExgLZeMxMKfcWEO9DnkDAltbGn0pX4aCTI9S7QfSyAFn
	sTthsN6F0uNzlhsj5mWQLX2Xxfh/lZargqpZeuiww/yD6O3oad92ob/lZb826c1KL5A4+rO1ckJr9
	I+MkPSranKijuXWfZsujdDvBefUIWSOAnLzpmX1ZMkoFqL+Z6FonTYoK11mNV8ZEM6dtQZVD7FlI5
	PVvalW9XGO9lRZ8NKklA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCk1T-00CCKp-2h; Wed, 26 Jan 2022 15:15:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCjku-00C4PR-BR
 for linux-rockchip@bombadil.infradead.org; Wed, 26 Jan 2022 14:58:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=VmtKkGEYIILoUvyFeviEiIONhKyKzyepLHwdpsvWlR8=; b=Jo6yxGJezpv5TO2RVr3+FcUdsu
 muQzrgy3icsbtjytsnv6oHXPY75MYTLElpzGfGzlIuR+grKnTsneh1uQkGn5oinJamP/bkUo+Wr7z
 rFUpJOx6HJ3ms9d/3ubojt7WImGn4tNNESsa7wlpr/J9xP5RcKr5rHvTC9oTe/Z+dW43fa0SE30yo
 LOunmsO3h8/7WwmqgKhkWUZP+56pr75gKZ7t1Yj4l6w2JxvHAuD1iTxpWmcuZ90X4O9KOTcYC3BUX
 IlkEEscgz7YJctAs+QEvfAG6vWO8VBBXgOQ4jf0+RKyjvKWh77jQN11VFyaJCgoOVsjIRySqHi1MW
 lKQWv6eg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCjkl-003pic-0g
 for linux-rockchip@lists.infradead.org; Wed, 26 Jan 2022 14:58:38 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nCjkb-0005fK-TN; Wed, 26 Jan 2022 15:58:21 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nCjka-002l6X-J8; Wed, 26 Jan 2022 15:58:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Nickey Yang <nickey.yang@rock-chips.com>,
 Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 10/27] drm/rockchip: dw_hdmi: add default 594Mhz clk for
 4K@60hz
Date: Wed, 26 Jan 2022 15:55:32 +0100
Message-Id: <20220126145549.617165-11-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220126145549.617165-1-s.hauer@pengutronix.de>
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_145831_251700_6DC84A89 
X-CRM114-Status: GOOD (  10.41  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

From: Nickey Yang <nickey.yang@rock-chips.com>

add 594Mhz configuration parameters in rockchip_phy_config

Changes since v3:
- new patch

Change-Id: Iaa335cdd90059817fd9892877e574f8b84f2b5dc
Signed-off-by: Nickey Yang <nickey.yang@rock-chips.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 77f82a4fd027..c038674271b2 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -187,6 +187,7 @@ static const struct dw_hdmi_phy_config rockchip_phy_config[] = {
 	{ 74250000,  0x8009, 0x0004, 0x0272},
 	{ 148500000, 0x802b, 0x0004, 0x028d},
 	{ 297000000, 0x8039, 0x0005, 0x028d},
+	{ 594000000, 0x8039, 0x0000, 0x019d},
 	{ ~0UL,	     0x0000, 0x0000, 0x0000}
 };
 
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3370E7718B
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Dec 2024 03:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7JQqoZpCIB3rsLpQprcRfd+Shuc5Sej1Yru56lCJQY4=; b=h05R/g0XRSM7sm
	kI0E8Yu1JtC5rQA7tvGz0tRXnhp6zy7EYp6P4Y4YdDvgecS8i8L9xBoQcapLJBt7w2SMX3aZrfk+2
	yamFGXItt5P7XgcD2rDmG88L7aJrFTw9QXklHVtluwPeu6OB8MabiQDdOM5M4PxWXLYI5LNELaf3B
	662oivywth+PvoBf1q1xCWNRV5X1SenqfsGZQ5YQyXLN5hiMk2wctAgvABnO4nXnvqS0qjEc2MnPl
	IlOBqbpme7t2T1F1Ka3+wlRkFtFw8l3I6lJ5SI+3Lfq22MrXGBRrroZAkTHCxQCeIPpLTIPqQ5c4j
	WuvYglh5xLHu/ysJ5krQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tPCH3-00000007iqT-3q0x;
	Sun, 22 Dec 2024 03:04:57 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tPCH0-00000007inZ-0d4G;
	Sun, 22 Dec 2024 03:04:56 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BM342BS020894;
	Sun, 22 Dec 2024 12:04:06 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, maz@kernel.org,
        tglx@linutronix.de, jonas@kwiboo.se, macromorgan@hotmail.com,
        andyshrk@163.com, liujianfeng1994@gmail.com, dmt.yashin@gmail.com,
        dsimic@manjaro.org, tim@feathertop.org, marcin.juszkiewicz@linaro.org,
        michael.riesch@wolfvision.net, alchark@gmail.com,
        sebastian.reichel@collabora.com, jbx6244@gmail.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 1/3] irqchip/gic-v3: Enable Rockchip 3588001 erratum workaround for RK3582
Date: Sun, 22 Dec 2024 03:03:53 +0000
Message-ID: <20241222030355.2246-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241222030355.2246-1-naoki@radxa.com>
References: <20241222030355.2246-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241221_190454_427630_1E03A4A3 
X-CRM114-Status: UNSURE (   7.70  )
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

Rockchip RK3582 is a scaled down version of Rockchip RK3588(S). Apply
Rockchip 3588001 erratum workaround to RK3582.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 drivers/irqchip/irq-gic-v3-its.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
index 92244cfa0464..c59ce9332dc0 100644
--- a/drivers/irqchip/irq-gic-v3-its.c
+++ b/drivers/irqchip/irq-gic-v3-its.c
@@ -4861,7 +4861,8 @@ static bool __maybe_unused its_enable_rk3588001(void *data)
 {
 	struct its_node *its = data;
 
-	if (!of_machine_is_compatible("rockchip,rk3588") &&
+	if (!of_machine_is_compatible("rockchip,rk3582") &&
+	    !of_machine_is_compatible("rockchip,rk3588") &&
 	    !of_machine_is_compatible("rockchip,rk3588s"))
 		return false;
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

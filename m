Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A613C021B6
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Feb 2025 22:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Afw4csH6VmOusHJ70I1+Eko/DKFa5mRTQh9CXuEcxqU=; b=ky105mgFN38a5A
	xuXLAMZEoj1J8JoAUfwuwdoBQy2cpjiD4xhdp3IaFcJWBxIvbLZVA196HzNfzCgfoLWfpftzYy5au
	1zwNXGZ/+07Zd3rOm+Zrlw2eaNvQq35otZvAKpIMMLdPGHArrj5aiVFVK421HVJMOXmrmS62nJZXY
	0xUMawhSuXrfSlwnVMGDJk8Aoc5DgGlQ6v2Oebrv+uCSqzI/z8LFyZKdFF4NbvOKzCkcjiWW/QlBU
	GRqf5up8WImEsHNbHzpXxpoPCx+mdA9hPPxcdVFF4ELQ/Tq/zEM9hRsbWF2l34HOmmoCeLT6K/bQY
	fiAFbYNWWvjDiSq0TXSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmgaH-0000000FJq2-2K9q;
	Mon, 24 Feb 2025 22:05:53 +0000
Received: from out-183.mta1.migadu.com ([95.215.58.183])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmgYs-0000000FJdp-429L
	for linux-rockchip@lists.infradead.org;
	Mon, 24 Feb 2025 22:04:28 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1740434654;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=KzttHuqwbO250SJZmkXY5X6iacccx0fS7kQMrYMCK/A=;
	b=HDsum1tiv3YaUTzCuEGY0f0iNnWNF3YkCKRoJsvAvPLZOXaHhRZ/Q1Wf0aZYIv8t/+uDev
	2+gzfBDjGTbPOg4bVCwJYvqPBX32P7zl0yq1HU/VZP1275Es9oEddZh7YPpVl9O7wFxBQy
	ewk2ywTaBya3+MtyMk43i8WPUEsLuhU=
From: Thorsten Blum <thorsten.blum@linux.dev>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Thorsten Blum <thorsten.blum@linux.dev>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: rockchip: usbdp: Remove unnecessary bool conversion
Date: Mon, 24 Feb 2025 23:03:39 +0100
Message-ID: <20250224220339.199180-2-thorsten.blum@linux.dev>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250224_140427_141406_62D0DA83 
X-CRM114-Status: UNSURE (   7.86  )
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

Remove the unnecessary bool conversion and simplify the code.

Signed-off-by: Thorsten Blum <thorsten.blum@linux.dev>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 5b1e8a3806ed..f7a36ed59ef7 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -978,7 +978,7 @@ static int rk_udphy_parse_dt(struct rk_udphy *udphy)
 
 	if (device_property_present(dev, "maximum-speed")) {
 		maximum_speed = usb_get_maximum_speed(dev);
-		udphy->hs = maximum_speed <= USB_SPEED_HIGH ? true : false;
+		udphy->hs = maximum_speed <= USB_SPEED_HIGH;
 	}
 
 	ret = rk_udphy_clk_init(udphy, dev);
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

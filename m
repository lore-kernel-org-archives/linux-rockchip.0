Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA564C38A02
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Oct 2022 22:41:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=btidiuhJxMdWrUdU8fQUpONfDSRec9nE/0GdFb+TEhY=; b=XctCwT9++J4oii
	U5czJ1Z6ZeLuftD4q+LRk7M5sRgYIQ7dB97fhDsTgk9JSXx4YwP3FblIBpvspIThMluj2G50Vm7/U
	h0PpA4f/qQkRAjZjrVkDFcajGQx3AEKvj5ic3E2Vi6H1NL9Y6WblYtbL6CSdO95EAeozewrcUmz4w
	0iAlwBUn2R3Jq/rOyF8IPak2E1KRqRyNjKQKq0WuXmZ6YS5poOMAGk6Unm/igmqjtO+pfihMuyWiG
	2qpx+h9OqCSpiZdHhljQvfM8+MPKirqG6lSHNpTZwn/iuHTH5DJpQGSL262+06swB05lBK9weJrJ4
	ieStk69pNzX+Zl45xe+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooY2V-003BER-7E; Fri, 28 Oct 2022 22:41:23 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooY2R-003BC4-No
	for linux-rockchip@lists.infradead.org; Fri, 28 Oct 2022 22:41:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1666996863; bh=9d6DFM/pqmRLeIc4cMgiNgVS1Vl84NV0vez6YtnLyiE=;
	h=From:To:Cc:Subject:Date:From;
	b=VTvQGgAfRWqUs+Btn43EM6g7Yo+S/b8Q0eBsjl3FEoDRNIdM2lNzPegowq/mKD7Ao
	 vFNmfipTSDFS7ZGzsKQ4hE1Qe6nmGpiQ6d8QP2cVYn2cKNAqSTeFrlpbdgg74kcz3f
	 XirwgNtITZGvMC9FvEx8WVwZpIUkG6l1T8jErpFc=
From: Ondrej Jirman <megi@xff.cz>
To: linux-rockchip@lists.infradead.org
Cc: Ondrej Jirman <megi@xff.cz>,
	Samuel Holland <samuel@sholland.org>,
	Sebastian Reichel <sre@kernel.org>,
	linux-pm@vger.kernel.org (open list:POWER SUPPLY CLASS/SUBSYSTEM and DRIVERS),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH] power: supply: ip5xxx: Fix integer overflow in current_now calculation
Date: Sat, 29 Oct 2022 00:40:52 +0200
Message-Id: <20221028224052.293693-1-megi@xff.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_154120_271785_107B9AFD 
X-CRM114-Status: UNSURE (   8.41  )
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

When current is larger than ~2A, the multiplication in current_now
property overflows and the kernel reports invalid negative current
value. Change the numerator and denominator while preserving their
ratio to allow up to +-6A before the overflow.

Fixes: 75853406fa27 ("power: supply: Add a driver for Injoinic power bank ICs")
Signed-off-by: Ondrej Jirman <megi@xff.cz>
---
 drivers/power/supply/ip5xxx_power.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/power/supply/ip5xxx_power.c b/drivers/power/supply/ip5xxx_power.c
index 02ee4d252a3e..f39cb2f7aa11 100644
--- a/drivers/power/supply/ip5xxx_power.c
+++ b/drivers/power/supply/ip5xxx_power.c
@@ -398,7 +398,7 @@ static int ip5xxx_battery_get_property(struct power_supply *psy,
 		ret = ip5xxx_battery_read_adc(ip5xxx, IP5XXX_BATIADC_DAT0,
 					      IP5XXX_BATIADC_DAT1, &raw);
 
-		val->intval = DIV_ROUND_CLOSEST(raw * 745985, 1000);
+		val->intval = DIV_ROUND_CLOSEST(raw * 261095, 350);
 		return 0;
 
 	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT:
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

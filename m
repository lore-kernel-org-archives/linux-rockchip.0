Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06DD6CF31B4
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Oct 2024 12:06:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sRbZZtxsNa0kAPHLiM0xVVTVgAoTLQ8lAQENWTYlvLU=; b=2fBrImQSUAKWab
	r5/H7F5cz5G/nOrLP5dMMGMq7+SFTf1AouhuJQ2Un4SN+sTlSOu5nqWPG89noja2Mcxd0LqJG5yFK
	l1RW6s69oCs5+ZguYvIe8pzmz09dJHC6+VmIq9i9mf2AHyQkMOV0Wlibg5bfG0nREYrDjaHD12dMD
	1Eqcxp7Lfr84FNArhBlDoXA5pV9f2bVeo2XeOXV3zWeu64HpyROT6S5GkS6OoABVy1hYFPiM5WwN5
	zJA5tQNK3lNRnoMG/j3V/jlGd0MTpJnK7nNXEQC1SWAfhKafGf+LPlfYWCmnUex36kFbB5PJkWcxN
	4nTSpLfLsL4uGEd8unVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svy83-00000005mxY-3q4O;
	Wed, 02 Oct 2024 12:06:52 +0000
Received: from smtp-8fac.mail.infomaniak.ch ([83.166.143.172])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svy4v-00000005mEO-0EB1
	for linux-rockchip@lists.infradead.org;
	Wed, 02 Oct 2024 12:03:39 +0000
Received: from smtp-3-0000.mail.infomaniak.ch (smtp-3-0000.mail.infomaniak.ch [10.4.36.107])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4XJYNz036VzYJ0;
	Wed,  2 Oct 2024 14:03:31 +0200 (CEST)
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4XJYNy27NSzTQ8;
	Wed,  2 Oct 2024 14:03:30 +0200 (CEST)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Wed, 02 Oct 2024 14:03:03 +0200
Subject: [PATCH] pinctrl: rockchip: improve error message for incorrect
 rockchip,pins property
MIME-Version: 1.0
Message-Id: <20241002-pinctrl-rockchip-error-modulo-4-v1-1-4addb4e5732a@cherry.de>
X-B4-Tracking: v=1; b=H4sIAHY2/WYC/x3NwQqDMAyA4VeRnBdoOxnDVxk71JjOoGtKqmMgv
 vvKjt/l/w+obMIVhu4A449U0dzgLx3QHPOLUaZmCC703rmARTJttqIpLTRLQTZTw7dO+6rY4z2
 NPqZE7naN0CrFOMn3f3g8z/MHssiMT3EAAAA=
X-Change-ID: 20241002-pinctrl-rockchip-error-modulo-4-8fb1affc063a
To: Linus Walleij <linus.walleij@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_050337_257131_92B8A014 
X-CRM114-Status: GOOD (  11.30  )
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

From: Quentin Schulz <quentin.schulz@cherry.de>

If one improperly writes a rockchip,pins property, the pinctrl driver
basically just states that one in the myriad of pinctrl nodes is
improper but does not tell you which one.

Instead, let's print the full name of the Device Tree node that is
improper as well as provide more context on what the expected content
is.

Note that this should be rather unnecessary if one reads the output of
the dtbs_check as it would be highlighted as an error.

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 drivers/pinctrl/pinctrl-rockchip.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 5c1bc4d5b662ed403ea5c8e57a8e1cad913a31a5..04e85a6037c93f415670b286f91fccada0d38fbf 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -3227,7 +3227,9 @@ static int rockchip_pinctrl_parse_groups(struct device_node *np,
 	/* we do not check return since it's safe node passed down */
 	size /= sizeof(*list);
 	if (!size || size % 4)
-		return dev_err_probe(dev, -EINVAL, "wrong pins number or pins and configs should be by 4\n");
+		return dev_err_probe(dev, -EINVAL,
+				     "%pOF: rockchip,pins: expected one or more of <bank pin mux CONFIG>, got %d args instead\n",
+				     np, size);
 
 	grp->npins = size / 4;
 

---
base-commit: e32cde8d2bd7d251a8f9b434143977ddf13dcec6
change-id: 20241002-pinctrl-rockchip-error-modulo-4-8fb1affc063a

Best regards,
-- 
Quentin Schulz <quentin.schulz@cherry.de>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

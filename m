Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEBB7C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Apr 2022 14:25:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rVARgGAwy3DuyBFNXwiT6KUcayz38Lr6rBm1jaik1Eg=; b=P1Su0oTrZgptDj
	BA68IcO1KMjr4KO6O55lxCGoHSPTPZWdGrg34QM13lscnWZB/pYMo130EWho0jJJ9htiESRuVSzDq
	IegPTsvfnSbrIMkRm4iLAwHy4LzWFYt88bsudAVfHUxakSRvQO4qiZHdQ47bZEAo/ivTquC+vZJ2r
	4GyLwAi5BgBmjbj/Xvk+WGP9Nu9aNUu3heep6W84jRXEMwt7ZpjbsMog7uGug9RTqPCN8dEk8WnmF
	C/oN11O6U7+oETq0n+6Tbsc3Ce/O95b1+CxRfK4yUugbeUq+tjXsQhr6rFoL8/FA2fgbIiMoBHoGb
	vOaXjI3C6EMV0T6uk3bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhBGk-009OB4-LF; Wed, 20 Apr 2022 14:25:22 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhBGQ-009O5P-5E; Wed, 20 Apr 2022 14:25:03 +0000
Received: from melee.fritz.box (unknown [77.244.183.192])
 (Authenticated sender: luca.ceresoli@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPA id 3E61A4000C;
 Wed, 20 Apr 2022 14:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1650464699;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/lpWbOBK6IO2z3uDyg+lEKla8M6bLRGjKIKLiN7eH2A=;
 b=UeGls1/Nu2/pL7jtBXGf/ZoBeCVa/JvdTjAuW+gH9Ej7jbnWCWt34wJbLgkK9IWVhATAvM
 pbXjbYpwNtP1Sa5qXZ53HPl2riukmqPZzLwtr1WFd64nHqTL2lKaeKFGp84fDyJ1uq/DQF
 5uCyJJ9r/ha/zbKmTQX5LuLskUGTzZP780UQAqmvmtlOgZYQhsPbSt1/cgWnk3J/k3mVaJ
 2xCQ6Yu3OnUD6BJm7FZ1ePfaNzzGR/XFXL6uyujvCQcShh6anII3lySicjPq6fOz9EP+MP
 MXAcuwbhITaUwB6FJF5l7lVYB4DdxFpzctNL0irx/7RxGRrT2vuRIQn+EBPw3Q==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: linux-gpio@vger.kernel.org
Cc: Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Linus Walleij <linus.walleij@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Jianqun Xu <jay.xu@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] pinctrl: rockchip: sort the rk3308_mux_recalced_data
 entries
Date: Wed, 20 Apr 2022 16:24:32 +0200
Message-Id: <20220420142432.248565-2-luca.ceresoli@bootlin.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220420142432.248565-1-luca.ceresoli@bootlin.com>
References: <20220420142432.248565-1-luca.ceresoli@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220420_072502_375233_F7E49D3B 
X-CRM114-Status: GOOD (  10.05  )
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

All the entries are sorted according to num/pin except for two
entries. Sort them too.

Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
---
 drivers/pinctrl/pinctrl-rockchip.c | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 65fa305b5f59..2cb79e649fcf 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -512,20 +512,6 @@ static struct rockchip_mux_recalced_data rk3308_mux_recalced_data[] = {
 		.reg = 0x34,
 		.bit = 8,
 		.mask = 0xf
-	}, {
-		/* gpio3b4_sel */
-		.num = 3,
-		.pin = 12,
-		.reg = 0x68,
-		.bit = 8,
-		.mask = 0xf
-	}, {
-		/* gpio3b5_sel */
-		.num = 3,
-		.pin = 13,
-		.reg = 0x68,
-		.bit = 12,
-		.mask = 0xf
 	}, {
 		/* gpio2a2_sel */
 		.num = 2,
@@ -561,6 +547,20 @@ static struct rockchip_mux_recalced_data rk3308_mux_recalced_data[] = {
 		.reg = 0x68,
 		.bit = 6,
 		.mask = 0x3
+	}, {
+		/* gpio3b4_sel */
+		.num = 3,
+		.pin = 12,
+		.reg = 0x68,
+		.bit = 8,
+		.mask = 0xf
+	}, {
+		/* gpio3b5_sel */
+		.num = 3,
+		.pin = 13,
+		.reg = 0x68,
+		.bit = 12,
+		.mask = 0xf
 	},
 };
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F10B8CE7AED
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 08:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B93QCBvXq620X+zuQOIIFiXw4h64BA9My8VxQpHtPJY=; b=YVCZ8bOi7hFZs8
	QysNYY4iQeh/YiEXJIWYdkZK8NhAffi40dYiSE0XikoidH7CbZ3SIrkqrItw9tFU2GsXDNHhGwQDO
	EiA1BeS6jgf+O/IBZyKX7Zqb74ku5SzRXrlR5iSrqBqtxIdFpmeawUyKjqpJ7ue025A5Idog613r0
	+i2flwHRgXuvX3MNNmimhYEL133oPIeShZyiCym+xPejooHe49vFXzQA3V5lw4u99YdEQUZ4SiOau
	vx6uCvrjGcR0XIpdGxf3FTdUD1JpqBn+jLFg2oFb5wtFDJ+z2Nt9UWL/m5i0Gsw49rMLHTmN4EZ8B
	0hYk49XC6/yF6vImkpww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smUTz-0000000BMe8-09Wa;
	Fri, 06 Sep 2024 08:38:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smUHU-0000000BIro-2Nyy;
	Fri, 06 Sep 2024 08:25:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=yGq3JneIJdLWkKicCiB7nkPv7xgVLix/YDHDBEAt+dY=; b=goaq85udzdVSmxwu1bYO4dwi7M
	BEQz2255HQOnPEC6AVicypFep6WFSmVM2QuKV2pqGeLFgEOmAbGbuiXNKtF4/X/CQQhkbH9Is6bSL
	NCueNsAzH6MgkMooQA8CjMcWv7e45PrXYcELVKNqUPJv7HxelhtBZA4V/mH809jBq+RaaCXxZugaw
	sVLS0JSsJnA6BEF7y3jjGEvLq4XAYSh9cQSeYUMwQoFSBpR3dn2DDk7WSXGONeyXrL9qKM31SC0Cs
	BbpMmAvP6uQAUTAuLWxg4fPOHSogR33uZaF8MKpTkCopwz2WQFvz8BOXYWD5TnUP0alxE9VG9kORP
	gxx9cU2A==;
Received: from i5e860d0f.versanet.de ([94.134.13.15] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1smUHP-0000jF-A0; Fri, 06 Sep 2024 10:25:19 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com,
	sboyd@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-clk@vger.kernel.org,
	heiko@sntech.de,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v4 2/5] clk: clk-gpio: update documentation for gpio-gate clock
Date: Fri,  6 Sep 2024 10:25:08 +0200
Message-ID: <20240906082511.2963890-3-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240906082511.2963890-1-heiko@sntech.de>
References: <20240906082511.2963890-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_012524_786212_AF587B65 
X-CRM114-Status: GOOD (  13.67  )
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

The main documentation block seems to be from a time before the driver
handled sleeping and non-sleeping gpios and with that change it seems
updating the doc was overlooked. So do that now.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/clk/clk-gpio.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/clk-gpio.c b/drivers/clk/clk-gpio.c
index 5b114043771d..98415782f9a2 100644
--- a/drivers/clk/clk-gpio.c
+++ b/drivers/clk/clk-gpio.c
@@ -22,8 +22,9 @@
  * DOC: basic gpio gated clock which can be enabled and disabled
  *      with gpio output
  * Traits of this clock:
- * prepare - clk_(un)prepare only ensures parent is (un)prepared
- * enable - clk_enable and clk_disable are functional & control gpio
+ * prepare - clk_(un)prepare are functional and control a gpio that can sleep
+ * enable - clk_enable and clk_disable are functional & control
+ *          non-sleeping gpio
  * rate - inherits rate from parent.  No clk_set_rate support
  * parent - fixed parent.  No clk_set_parent support
  */
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

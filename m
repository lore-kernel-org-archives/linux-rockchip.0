Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DE00C54E92
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 10:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kfmupk7WHt5g76bR1K6U6jB8+t87bNhdfVznlsJUlLM=; b=Xq/+0wOwxyvUYT
	FxKjZ3of9DCDQcANc1SJR/z+VznWfri9yME0WuOW//YsCObHWIHnRDasA8liPaUNNwsVjJjlkhjbt
	/0eEdjZAEcA61Qd9sg43Y1GfigkGI1u7BfcL4k+dqGEQ7Yb/3o3iL2qKN54F0nG/2DDZWrEzsgtsB
	jhSg+4ub55wNCAZW/0qJa4bTMOjg30FRAN1q+NZv2UCGKzUJwV3JUWYeodvxZzYMNrzwgA+zsdx6a
	dg53AAPUa5XLdm8AagLTRRBu40ypA9mrZL4lgOqh1sjRno3QPzkawjLRefufEAfYVQpndkWliw1NO
	BxhiPp72NnsJngQnsI/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjFlV-0000000Etum-3IGd;
	Wed, 28 Aug 2024 10:19:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjFhy-0000000EsRd-0BqZ;
	Wed, 28 Aug 2024 10:15:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=URObYksO4gN+9lzuCPAOWuGaNp4UNR2zdQZmZnnacwI=; b=Sda/R7lYsoCJLuDum6wi0TU5bE
	CxN9bn5NOJ3MADFrG4eMp2UGcz3N6Y7nYLYOC7PjiV69uJGXswRg958TqFzb741ocfGzOYegXbOS1
	G3ekmUTAhq+dMQZ+AqfQwVqETHflTGPOh0uIqvvhwkEBHW0NVS7//iuuAoaOsHYMGc53NCWwpdPyb
	IXLTOrh4y9q9ryhCFScLBCarILEcvHlmkxl0EzMqSMKBramZJd3G1/fohQDamcJU2XvvQmCSR6D6u
	5N0JI4Mt0+9CY/X9qz+CqgwiaqnD5C0yeVBiND4ZrUDyg7QEPSXSwZaVLh9nUHyRfN2HF3FvsoHYM
	H2Tte17Q==;
Received: from i5e8616cd.versanet.de ([94.134.22.205] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sjFhs-0004M3-Oa; Wed, 28 Aug 2024 12:15:16 +0200
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
Subject: [PATCH v3 2/5] clk: clk-gpio: update documentation for gpio-gate clock
Date: Wed, 28 Aug 2024 12:15:00 +0200
Message-ID: <20240828101503.1478491-3-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240828101503.1478491-1-heiko@sntech.de>
References: <20240828101503.1478491-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_031522_105273_51A774E1 
X-CRM114-Status: GOOD (  13.53  )
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
handled sleeping and non-sleeping gpios and which that change it seems
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

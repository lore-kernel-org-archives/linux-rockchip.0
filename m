Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0482C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Apr 2022 17:13:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vuSRueP7xydnKPZH6cIWzNBvBRFQvBNoBjOghJ5utlg=; b=YBvEB10FpgBzMH
	rIMkPASgRUaATB+wZSrqvENTNdD64hYfg1MpM90pFjWwVECBBs+2JpnD8nWBapMeHPVMryFCxpNkO
	iy/44J3vvpP/0rfkINxI5oHXvL7KpoWQY+m57QTPWj9TuotwdIQrdloF89se2Cf7gst8YIiZFVrtq
	CeeqA+DBxor/CaoBj1jY+igVfafCBn1LHkdYCjc+SeRXf32oJL0tX9v7wh+ICqGwTR9U67R6Ws1tD
	wVUrj67fCfelP/C/4NWUfriubbqQ9REsXY70Rh9o05YgnfqlC85hb2bU1f+VW8aqcxEoH0FqQvbm5
	myEv5X0uDvaSF+hFCmiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhwqG-001fCZ-3a; Fri, 22 Apr 2022 17:13:12 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhwms-001dU0-2m; Fri, 22 Apr 2022 17:09:43 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id 3ED661F468EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1650647377;
 bh=OJnOlDBJ07eYyI+SyP5h/5V2/ikJgweKDP5JOFP9kCU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ZgN8VyJigWDDxIWLDaN/zAGP9L2f8cYUd2zwixg2HMdt6JgXvJyCvcWcTzlUu1++l
 GceaSwaDpm8NVPRtFTq1uhhYsGuJ0zEiR2ysLo2WFJJ7BMGzuhkpK+ZqiFpkgJqRky
 4opL3UjcOT5ABp0VnXkRmlSY/ZqwnGz2u1fNB0wZqmggE2o/QxC2CGaYdeQeE7vEp8
 3Viqy2zu+xwQ7jWLSzht7XUUIj/E/v2q/QpvxYOYIhlh7RNqYoEl911pdTunQiW1QW
 NYOMg6IyQ0xvXnG9ZKiwSGajQxvdCEXjNXV3iFOcsIzdlah4VJjS1dH+k3pZnwWXeY
 270kUC1+Zju+g==
Received: by jupiter.universe (Postfix, from userid 1000)
 id D216F4807F7; Fri, 22 Apr 2022 19:09:32 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@lists.collabora.co.uk,
 Sebastian Reichel <sebastian.reichel@collabora.com>, kernel@collabora.com
Subject: [PATCHv1 07/19] dt-bindings: mmc: sdhci-of-dwcmhsc: Add rk3588
Date: Fri, 22 Apr 2022 19:09:08 +0200
Message-Id: <20220422170920.401914-8-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220422170920.401914-1-sebastian.reichel@collabora.com>
References: <20220422170920.401914-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_100942_310511_16A42B8F 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
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

Add compatible value for the Rockchip rk3588 dwcmshc controller.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
index f300ced4cdf3..71f8e726d641 100644
--- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
+++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
@@ -17,6 +17,7 @@ properties:
   compatible:
     enum:
       - rockchip,rk3568-dwcmshc
+      - rockchip,rk3588-dwcmshc
       - snps,dwcmshc-sdhci
 
   reg:
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

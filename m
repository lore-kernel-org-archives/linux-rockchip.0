Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBB11C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 May 2022 21:41:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6MMNz5bvRbYy6DCuK0HdOZzdf3JfBaIiKJ31su1qUvQ=; b=A0uRevax2d9XYA
	QwBkE+5dIN8wRUdxtXzJcUwnVLGWV5rMVY5n2nsBxgIuWqMcndPXRCcWoSfxD3Ui08j0TVOKyAzV4
	I63s8Jzs9fB9gCR+orsH6WtLOJVJbcUnrD8FVdYoNvHqZRSV7oJ8rW/ChemtQngr64Tq5SUqBuT6c
	8NhmFjdFy/pwoqdwlx4m3xW28zzDBiAxyiLmeKhs1Rr4Qwowi54BhCUhfP8nYLkf1xP0qCq0itJz1
	WQ1rrlCRnuoFj1ORNkpw5L+C38B0tUG1WfQExrYRacxuosXTm77naYO/h1bW5WcEnQvV2pEBXbe2V
	mSsPyaHst+D0UQQAnaZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmMkR-00CtcA-3U; Wed, 04 May 2022 21:41:27 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmMcU-00Coyk-VO; Wed, 04 May 2022 21:33:27 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id 3F2D81F44C76
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1651699980;
 bh=n8ptnSaD35IA9Jtv6GAjdKZa0Tsgpb0PU5vYPYENXdI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RvvlpIDKiTkna03c2xPjjRQyNQJvEqgMl2nkN0TNATt1GPeP7vRt9pXh4j19WDx8M
 smQfRzl/FUINOQ+B8ceNMCu7EW/SqTVft59daQrzIy6fXEKM4i0mUzILU08K1bDvBc
 BwtpDq8STBogEHpd91vyFCSfrxgIAk5TCQYaznm04GpjHBNuyGUACPNZ0tyvg5nIBv
 QO4GQBmMpA/WYK7wRgPXT8zR6UBzD4ZPgl/uQ4Afi4Xo+ryZDCvnNGUZqCKWTmTDqW
 hWsn8NedRUkqWFuDmDqHEwY6UMLIL2YXmWpNkk37fNc5oeCCwerZO6fgPsls3hh4Kc
 PHgLm5qrhxCqQ==
Received: by jupiter.universe (Postfix, from userid 1000)
 id 52A6C4819D4; Wed,  4 May 2022 23:32:53 +0200 (CEST)
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
 Sebastian Reichel <sebastian.reichel@collabora.com>, kernel@collabora.com,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCHv2 15/21] dt-bindings: serial: snps-dw-apb-uart: Add Rockchip
 RK3588
Date: Wed,  4 May 2022 23:32:45 +0200
Message-Id: <20220504213251.264819-16-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220504213251.264819-1-sebastian.reichel@collabora.com>
References: <20220504213251.264819-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_143315_262928_C20B0734 
X-CRM114-Status: UNSURE (   9.58  )
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

Add a Rockchip RK3588 compatible.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
index 12137fe80acf..b5c819c5fa2c 100644
--- a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
+++ b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
@@ -33,6 +33,7 @@ properties:
               - rockchip,rk3368-uart
               - rockchip,rk3399-uart
               - rockchip,rk3568-uart
+              - rockchip,rk3588-uart
               - rockchip,rv1108-uart
           - const: snps,dw-apb-uart
       - items:
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

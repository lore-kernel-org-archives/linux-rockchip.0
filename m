Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 260E4C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 May 2022 21:40:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TojVNom4a0yFX1E68S+nyOadtt/ioDz0Y1ES5M3fUlM=; b=LxZwlltNVHNJao
	4c+jXvLaSXpO1RqG545XWS1ji3NUG4Q5iTepleq677pwh9pAMXh5rREUmDIgzwMxjcgqzAmUq3jmL
	3Z+H6NqhofqHqKpP0lltc9KJrbhDRVCk94Y545r7F79Mhqkjxsof4qtvn1XrJkbWe1B4F0uhLBsQ/
	3Ed3PD1yTtAj8KPN0K4ahVuTocDHDaOGhme6v4FCwrK8iPq8BQm7vjczkoTIAaGrYAkk3OjREEBCE
	AjLkExFus/ag7VFYF5Ujz0AAOima9lfCDSDaFSfM6ioxnBeHf2Zoqy/DweiwgdgPZnht3jFZbgEfs
	/oLputz+sghLtKX9ZGTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmMjU-00Ct6v-2m; Wed, 04 May 2022 21:40:28 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmMcT-00Coy6-DZ; Wed, 04 May 2022 21:33:25 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id 0830C1F44AB4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1651699976;
 bh=pa0fs7XjK4PqOe4j9zjXKTbHKKSHl37XzD0JnO2WBBs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GVWU9+elaQvavkKi0h45vWgkPk/VoLm7E3vuWYCjs1/QS7q70hEVSM9pQPxoKSdZa
 6ZIzapvIhRD39PYbIQ+jGCfnebefCOwK2duHhcDjDNQ7z1YTc76lBb1sZgSdHMAU0u
 SM3yDtMLLZneHP5nE/npfxVEvILp4vpZz3ALR+baCA9pUKGY38fUztK77AsXZSY+/t
 JJ9YE5fTTZi586OGKn1Oc+nCPir6MLj/vvql3mdpupH1+4d/b/uD41qWvnNcf2b8Q/
 t/KPBfuE/ZcmGteIAu1db/IwUNdwrdZtgr2vQl6m4lu20qQBtSymClrvHuZtnpzzzS
 1k7iQbvMZbJ0Q==
Received: by jupiter.universe (Postfix, from userid 1000)
 id 31E4348146D; Wed,  4 May 2022 23:32:53 +0200 (CEST)
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
Subject: [PATCHv2 02/21] dt-bindings: mmc: sdhci-of-dwcmhsc: Add rk3588
Date: Wed,  4 May 2022 23:32:32 +0200
Message-Id: <20220504213251.264819-3-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220504213251.264819-1-sebastian.reichel@collabora.com>
References: <20220504213251.264819-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_143313_651733_36A2D723 
X-CRM114-Status: UNSURE (   9.79  )
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

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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

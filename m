Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B40EC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 May 2022 21:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HQ8vo6Vk5c7D5tBnI95E5vxbWEGcMAHNK+jjPh9GHEg=; b=Ae1XH3Y39pBb+y
	tOY5JOdNSuPG/6gGmopSiB0hoC+Xu3bX84ADNX+x8sUW3nFRURD2qJqnaHvoLGaTzShQn+axDAFi2
	scXieLQy7j+nlmbGkG8LZprVxGKc8mYkSgeVSdkdtfZqNOY+NyPD1SIsY99AO8RibDkoIa/NqEnH3
	dVjUYHeuLHmepjNGREmdiNEA6HOzOsSVxbDhLvRwLbPo180lE1KpWxIUIoSVG/BuyNMl1toIYwbaE
	lX8x2AUBMz9QJ9R9x5LqMOhJtNiuG5VoZrHXIzA1tGNbfmK4oD1KhyVGebsZ07GIPu5jLqXXug9UF
	ONjAm02e56Uks9BdYFpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmMkM-00CtZi-2N; Wed, 04 May 2022 21:41:22 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmMcU-00Coyl-VQ; Wed, 04 May 2022 21:33:26 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id 695F81F44BE4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1651699980;
 bh=jvWlCqU5BM5uSfYkfGx9KIBVQnJo5rwQWZiOEIDmon8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MdPuIIeZWYeMSIgJd1Opz7ab7G2fZdI/z0515K9zE6Cxp51bWVmcTBn4XUY7wYzWb
 Fa7/oLxckC7J1pW7p/Syb5ZEJPPel+FGbXjrLC9egcj1s862t/+EtItN/CYPo0IbQ9
 ytXOM1Pa8fxrrb73gSTR26UGTPrQHUCjsf4m/q8/UPgWNZM+sZTZaGfi+NlBw7vIby
 odk8yJ+RM1E/uOB/pJgYqtBPw32Se4gkONQ+Lhtp4BZVoVSLWVqo57oI+rFCOzM/CX
 O8lHJp84UZX+LhJ7lW7PLKbQz7YhM/SbXHboqEfI8qH3Tz+POotft66+BgoxCgveAr
 hocrE8MtVAMug==
Received: by jupiter.universe (Postfix, from userid 1000)
 id 573344819D6; Wed,  4 May 2022 23:32:53 +0200 (CEST)
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
Subject: [PATCHv2 17/21] dt-bindings: gpio: rockchip: add gpio-ranges
Date: Wed,  4 May 2022 23:32:47 +0200
Message-Id: <20220504213251.264819-18-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220504213251.264819-1-sebastian.reichel@collabora.com>
References: <20220504213251.264819-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_143315_250480_2925A407 
X-CRM114-Status: GOOD (  11.72  )
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

Allow usage of gpio-ranges with the rockchip gpio controller. The driver
already had support for this since it has been added to the mainline kernel
in the first place.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
index d4e42c2b995b..affd823c881d 100644
--- a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
+++ b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
@@ -27,6 +27,8 @@ properties:
       - description: APB interface clock source
       - description: GPIO debounce reference clock source
 
+  gpio-ranges: true
+
   gpio-controller: true
 
   gpio-line-names: true
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37BDAC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 May 2022 21:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o+IODjFh+ks3VDXeHwSW3vrGu0tsbjCTLCl787NR1kE=; b=1qP5o5eJbzngb9
	S/1cQeRBcvwxVQ9kyDDkzJBY4HoPmbf0iOh+DtRkakDsWTxOspr88vDRc/AxYhnk4h0Jwnzsr7tKF
	wqvJ5XfNAZ1fq96N8KdJpBUXZRMltv+2Li59eiu++LcprkhyexGoJT/yddK14i2qUgJnvzcFjbomX
	+MNuCYzA7x7T4mSFehgaX9vecppc0SqTM2V5ixdGPWC0bzuBuGqJV/7WPdy6ewhqsEOOP/n+jpd54
	w0I68DizTAiYDuZ39sh6P858lghYaV/m2v+aNKusbjQam/EHQ9WGvWzkEcgZ6fPJsdhXk/gelaCAi
	b1N+ZLw3pQENjk9DMRdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmMou-00CvvB-5y; Wed, 04 May 2022 21:46:04 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmMhq-00CsF8-VO; Wed, 04 May 2022 21:38:48 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id 5EB351F44BA3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1651700325;
 bh=uyAo5zR8dw2G1PXvLBzX4kEvbmbHh0MqtTGpkAws0D4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=inO3cIE1rPZA0GCZu1aeQjV6iYnIhJF7h5w1UFxljkHcfOzGjt/6e5AdBubBBgtIM
 ajmxEAcAv39U4TWCq65xRt6fgS3edehSQWe4qaRsOdFO9zh1ashxBv8zRK6Pxuzgfv
 SHFhC5xjcldM/blagI01VYnA/89Kb0LqmEcwP0UVYbWDN4egDfBHNJJlxle7E+B1lB
 9sgE5lUg0g+9o+0F1H4raLBx+AptayB4wW/evyWF101Ccxlh6bEqEaSoMey2HTE++k
 pQsYojZ7YVTxhxQEdIOpTsXGFuvbDOoeTcq93eoRIilIvm0AdFzUhDe9TAjknHu4pj
 x65BHNCyOY8wQ==
Received: by jupiter.universe (Postfix, from userid 1000)
 id 598FE4819D7; Wed,  4 May 2022 23:32:53 +0200 (CEST)
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
Subject: [PATCHv2 18/21] dt-bindings: pinctrl: rockchip: increase max amount
 of device functions
Date: Wed,  4 May 2022 23:32:48 +0200
Message-Id: <20220504213251.264819-19-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220504213251.264819-1-sebastian.reichel@collabora.com>
References: <20220504213251.264819-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_143847_221067_E0A7DDA9 
X-CRM114-Status: GOOD (  13.23  )
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

RK3588 can have 10 different device functions, so increase the maximum
amount appropriately. Considering rockchip uses auto-generated pinmux
files, adding a quite complex if construct to increase the limit just
for rk3588 does not seem to be worth the effort.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
index e62fb5e9db76..68339082571f 100644
--- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
@@ -130,7 +130,7 @@ additionalProperties:
               description:
                 Pin bank index.
             - minimum: 0
-              maximum: 6
+              maximum: 10
               description:
                 Mux 0 means GPIO and mux 1 to N means
                 the specific device function.
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

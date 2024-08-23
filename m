Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CC09C531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 16:06:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K4G9j/nTwLgC593odfOSSRp7vBBAvu4IV1F/yIqULuU=; b=N1QvhihpRCNg8d
	Xmb+hAOp1VAu9hZevFnbT0TDyZyHRZQBjRKh8MhbN7wEJ0fXZTYaLOOJwtcCOfledqMjwBqYAfyoZ
	CD++yaSVf5ykQmWoJF5qbkj4daQcST4tQSCDDlwigIWuKS/n8r0Q/LQDKxojBRg8YAyovD4xa7Oas
	X789/wJHe/ZLPtRiThNkQ8hUK3yR/SzOdc9d+R9TidGwRYBwVdooqYklOFDKymEXGNIhBCupsN39+
	RzmST196AQW1RsYI1jUStD6LWVF7NyUFIly2WMijLCa2B9kzwdEcMFrP3GFT5VDHK9iUeC+Bv/0in
	Dqgb0oMVcDS1ScZNFXlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shWoI-0000000HSxl-1Ey6;
	Fri, 23 Aug 2024 16:06:46 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shWny-0000000HSuI-36mP;
	Fri, 23 Aug 2024 16:06:28 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1724429133; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=MjRK1FoJsuHsyIVh4RKCCc54M6gWCjzayDtGsNTo97lxPTlzEHOzuPiovQrrjUJmaJ5s90+XuamKSaXVKuWxZOVAH3Bh2dfB0YO4s8YRjLu8ROWo/SjA7TonfQN/Nxp1DL+/sOlJlYLuPLtZN6+b0yztkrjX95/53JgMg+gFheM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1724429133; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=wDoypvfwN342dAKyLY44n6dnwxz7IYCMVu0LjSVZLls=; 
	b=OkalxmebjQXK/KNBLiMUpyfDZY3yUF9lxpQHzS6JQq9nyIuQYPz4dFPFV1Mzz0HywvcQffmaRmLuZrYdktRgoBTNbajEvjSvM3UrBAkfFiCvscC+NH6RBWSuvHd1pTFv5OkD9rV2dyTAk2JQGc/KjmvS9E//46qYImoKkcQKgcY=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1724429133;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=wDoypvfwN342dAKyLY44n6dnwxz7IYCMVu0LjSVZLls=;
	b=Qj8k0qIq4exUkeUJptd26SKuPlitb5ZgBqC7E3rk4WordXlOwH+24duUcyGUL9O2
	hLBr5QB77BbIfluvvtyxmmART4/PB3WKPu7qNXu6jHnrxIWlG1XOTc9OHwqoWm7H8JP
	Z+4ldmd5ncaGMTv2H6RjCcptwCTfFGlpoRk6G05s=
Received: by mx.zohomail.com with SMTPS id 1724429132247991.7209561127088;
	Fri, 23 Aug 2024 09:05:32 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Andi Shyti <andi.shyti@kernel.org>, Jonathan Cameron <jic23@kernel.org>,
 Lars-Peter Clausen <lars@metafoo.de>, Lee Jones <lee@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Mark Brown <broonie@kernel.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>, Chris Morgan <macromorgan@hotmail.com>,
 Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>,
 Chukun Pan <amadeus@jmu.edu.cn>, Andy Yan <andyshrk@163.com>,
 Muhammed Efe Cetin <efectn@protonmail.com>, Jagan Teki <jagan@edgeble.ai>,
 Dragan Simic <dsimic@manjaro.org>, Ondrej Jirman <megi@xff.cz>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Jimmy Hon <honyuenkwun@gmail.com>, Alexey Charkov <alchark@gmail.com>,
 Elon Zhang <zhangzj@rock-chips.com>, Elaine Zhang <zhangqing@rock-chips.com>,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>,
 Finley Xiao <finley.xiao@rock-chips.com>, Liang Chen <cl@rock-chips.com>,
 Jisheng Zhang <jszhang@kernel.org>, Jamie Iles <jamie@jamieiles.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-i2c@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-serial@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-watchdog@vger.kernel.org,
 kernel@collabora.com
Subject: [PATCH v2 10/12] dt-bindings: spi: Add rockchip,rk3576-spi compatible
Date: Fri, 23 Aug 2024 12:07:10 -0400
Message-ID: <1995660.usQuhbGJ8B@trenzalore>
In-Reply-To: <20240823150057.56141-1-detlev.casanova@collabora.com>
References: <20240823150057.56141-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_090626_837297_5AB0A251 
X-CRM114-Status: GOOD (  10.25  )
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

It is compatible with the rockchip,rk3066-spi SPI core.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 Documentation/devicetree/bindings/spi/spi-rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml b/
Documentation/devicetree/bindings/spi/spi-rockchip.yaml
index e4941e9212d13..46d9d6ee09234 100644
--- a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
@@ -35,6 +35,7 @@ properties:
               - rockchip,rk3368-spi
               - rockchip,rk3399-spi
               - rockchip,rk3568-spi
+              - rockchip,rk3576-spi
               - rockchip,rk3588-spi
               - rockchip,rv1126-spi
           - const: rockchip,rk3066-spi
-- 
2.46.0




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

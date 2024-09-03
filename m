Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07630CD342A
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 15:31:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VC2shQ6UtD2Fn7EjYH98mF4k1NuNG1iUJzfo8BTXir4=; b=KFXEldAMNgWhzQ
	Ho7wZqHk0//VZY/gpXZQU+7A8k2WxxUh65wTncGlWJTMcqRhbWIl5GUYzSGhgfzLJtuI2YRDUupAq
	UCH9iRhSLVhAR3SeUwGL79ajbqzP8u2P0h7B25f4zU7HZBKqoCBAjceHCRXTblNhM/t4H9AuR4v7P
	ISt524jbhJBijg2GhKKOycc9derkzQ5XsISMTP1c/kEQvj4S3MSBLeTQysBZzVfpoiwhw1xHO1kpa
	vX/gqVBURRlMGS7LSOX2HtM4G7La1vqYPGXPafiG9axCRImDBZOdwqM1S88ZiMjS9yLufBaw5jv1o
	nBH0LgwrNDae3pGucCfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slVUv-00000000s3K-1TlZ;
	Tue, 03 Sep 2024 15:31:13 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slVNn-00000000pLm-0M7Z;
	Tue, 03 Sep 2024 15:23:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1725377029;
	bh=OaXi9M0gBU+uv5tMNbZt5xQADBRZuBxpbtQVj13yUns=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=NH7MzSrb4sthcc/voLt2OS1IQJAZcz94M5AT0RZPkKtaYjmqBmHWVXzDCyrfCVVAc
	 YlotIS9++9H5Q4ygJNPz6PvWSQR26HUDsfrHSpMp0v9rVU0PJmzTi02qNAQIMv8oyT
	 jxwK9tqvB9/ohJoHl9xujgA7jg1RODirhRQnmJGlISoCjRPmZffpktdFZLvn2r1l5x
	 hDeN4lezB5pYoBnyCmQlpJ29EYZu8GyAk7YLW0OrjREeWqklqK9PeOR2q4/yrD8NzM
	 IAgFVAvEKkAZCjfMKhlZ5M4X+sck/pcTXLC1FYvDC24sgZo8amG3GHNW38dOFiZGqW
	 qDGLeutctAKdg==
Received: from bootstrap.mtl.collabora.ca (mtl.collabora.ca [66.171.169.34])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 0506C17E10D7;
	Tue,  3 Sep 2024 17:23:44 +0200 (CEST)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Andi Shyti <andi.shyti@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Mark Brown <broonie@kernel.org>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Tim Lunn <tim@feathertop.org>,
	Andy Yan <andyshrk@163.com>,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Dragan Simic <dsimic@manjaro.org>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Ondrej Jirman <megi@xff.cz>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Elon Zhang <zhangzj@rock-chips.com>,
	Alexey Charkov <alchark@gmail.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Liang Chen <cl@rock-chips.com>,
	Jamie Iles <jamie@jamieiles.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	linux-i2c@vger.kernel.org,
	linux-serial@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	kernel@collabora.com,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 6/9] dt-bindings: watchdog: Add rockchip,rk3576-wdt compatible
Date: Tue,  3 Sep 2024 11:22:36 -0400
Message-ID: <20240903152308.13565-7-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240903152308.13565-1-detlev.casanova@collabora.com>
References: <20240903152308.13565-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_082351_301510_978B940E 
X-CRM114-Status: GOOD (  10.21  )
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

It is compatible with the other rockchip SoCs.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Guenter Roeck <linux@roeck-us.net>
---
 Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
index c7aab0418a32..b5a3dc377070 100644
--- a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
@@ -29,6 +29,7 @@ properties:
               - rockchip,rk3368-wdt
               - rockchip,rk3399-wdt
               - rockchip,rk3568-wdt
+              - rockchip,rk3576-wdt
               - rockchip,rk3588-wdt
               - rockchip,rv1108-wdt
           - const: snps,dw-wdt
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

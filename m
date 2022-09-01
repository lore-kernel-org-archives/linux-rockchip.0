Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3C2CECAAD1
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Sep 2022 13:57:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/r5svVAH6v1uHWPHA5ERNqsC72ibhrDyrGNm0g2CPqE=; b=0pgMiuqmVq5fXc
	Eyf9b2UIuAe3a6NXO4p7pzVbQg4xiUgnrPR7CSvwxbS+ww+uWS6LKsADaZPwY5eJZGAlqAs5azA4q
	EomAa+FFsDzz53FGi37gWwq2qeMafQrYbfXFZ/TsY1K4rHSKxbJXzyd/wPcicFNA7y5ti01TI2BzV
	1K4nBiDmP41GSw4hujND4ly2sVHQu/Hu2wknQmMomuH+4HjFASknsa5MCsISo+VVlP/Aa/9yMcDWH
	VlembEoVj6j3HaNVjU5xLlG6S9toFlUTaAxumh8Up9ZfgM4OZRA6W9q9CpT32igFoBJDLjgpII6kx
	DbEyS/dn8mo9rZtyt42A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTkge-00CGEj-7H; Thu, 01 Sep 2022 13:56:52 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTkfN-00CFY9-Cx
	for linux-rockchip@lists.infradead.org; Thu, 01 Sep 2022 13:55:34 +0000
Received: from jupiter.universe (dyndsl-037-138-187-177.ewe-ip-backbone.de [37.138.187.177])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 7EA5C660038D;
	Thu,  1 Sep 2022 14:55:30 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1662040530;
	bh=S/Fwz+sP2OV+s9AizJMsolHEAHaDJPcK93omLyO1qQM=;
	h=From:To:Cc:Subject:Date:From;
	b=RcXNM05FgwGRKfefzMc+c3TlyhYkVm/ErV7nXEhRx1FjyWIUX+vBVuM3THG7Log/X
	 wuaaymVOPULdXidN1lcoflZvoljfzYeqIgNla2n8tOjDH+EQC4/Mk29GmECMd9Jy8R
	 672g5NtzzAbLtwO+46TIBfhAKHcXYk1dH93VqvTnKJWv7KwdlcM66DYK7Lh1Je5AVB
	 BIAIsiGo+OXkGzjZKt5sj4Jmj800IbNZHhrtLdsU9dOYghKz3phsFDC6HK9ZPkNYG7
	 ySd9rk9qV3wzlvze1rglpM6wp1emjAMBDwUkrWxBhwRbTGhYjMUJebT72fcBrPzSWn
	 TQIZSUpWs7jhw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 2E88A48015C; Thu,  1 Sep 2022 15:55:28 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Thierry Reding <thierry.reding@gmail.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pwm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH 1/1] dt-bindings: pwm: rockchip: Add description for rk3588
Date: Thu,  1 Sep 2022 15:55:23 +0200
Message-Id: <20220901135523.52151-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_065533_676061_CFC63637 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
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

Add "rockchip,rk3588-pwm" compatible string for PWM nodes found
on a rk3588 platform.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
No driver changes required.
---
 Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml b/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
index a336ff9364a9..f946861e3f8a 100644
--- a/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
+++ b/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
@@ -30,6 +30,7 @@ properties:
               - rockchip,px30-pwm
               - rockchip,rk3308-pwm
               - rockchip,rk3568-pwm
+              - rockchip,rk3588-pwm
           - const: rockchip,rk3328-pwm
 
   reg:
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

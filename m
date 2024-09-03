Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C5C3CD343E
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 15:25:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yBup9ppidNgyRrk8Kv3aj827+81M9y5y/96+50kNW8k=; b=grOBDePsG4ifWM
	6o3rm97BXB82QmdhkLYw4CIBmFtefuqJsysSNZ8pp4L3Gekb748tQANmqjCUphHO418G7AEzRFoHn
	mawNGnT8OvDTCHc33/FLLvvTFJVZTW1+AXZ6AybKt67zibuN2VjsP6ryjtbD5iqwZXOFadjgOtOhc
	hYXtpDPU3CBAfWVzAuAnpowSVq8V2HwaQrjsduAQ7HDHY08fX9tw36s25vg+sk4duAqvBOxyI7bDw
	sDRUwCDWiUUoqzeA0JPj24Ct4FeApAp+4HbiV9eVJdKApr3Mp3WBdkF1ZHUouVp1ctefszsnnkiL9
	Xl+zyy0UzOXXWdayGKBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slVPM-00000000q0m-1XwK;
	Tue, 03 Sep 2024 15:25:28 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slVNO-00000000pB3-0qZD;
	Tue, 03 Sep 2024 15:23:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1725377004;
	bh=f0D3qZRNJKjZ4ZItDHDKxzlfX2zSfpN5blcJ2RQ0XJo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=AMD9PPu/OGMlGzKoQ6XXCGTcfrkyWGaHS95Rw5CVsBTegIUzbby8Ffo+rG+dF459O
	 dK7k1Fd8kicvlJbqaM081WHgiJsVonMxiT4rIc0Yx0i+AqwhaLsjuCMR3wKUvpdqkG
	 eea8fl9yzULRVEMx0kSJAtjpZ+/HZBIkUjJigVahoWvqZFFMJynS4LRPFNwuV3SId4
	 cSdlJX2WsqVxLQirQfC/bGWXxcAJ0Ty3JnkO+tipP0Uwf+EwSgNk7EgtAt05mA9DMO
	 V7NeLT4FbKZ9bA8g9elFCCIENfTF0HvRVSgzAXoeGQulocv+r1TSiieBJJrJ0OkbRt
	 YfeMbrXj+Jsdg==
Received: from bootstrap.mtl.collabora.ca (mtl.collabora.ca [66.171.169.34])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id EA64F17E10C1;
	Tue,  3 Sep 2024 17:23:19 +0200 (CEST)
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
Subject: [PATCH v4 1/9] dt-bindings: arm: rockchip: Add ArmSoM Sige 5
Date: Tue,  3 Sep 2024 11:22:31 -0400
Message-ID: <20240903152308.13565-2-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240903152308.13565-1-detlev.casanova@collabora.com>
References: <20240903152308.13565-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_082326_425132_921CB41C 
X-CRM114-Status: UNSURE (   9.94  )
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

Add devicetree binding for the ArmSoM Sige 5 board.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1ef09fbfdfaf..c3449d964659 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -49,6 +49,11 @@ properties:
               - anbernic,rg-arc-s
           - const: rockchip,rk3566
 
+      - description: ArmSoM Sige5 board
+        items:
+          - const: armsom,sige5
+          - const: rockchip,rk3576
+
       - description: ArmSoM Sige7 board
         items:
           - const: armsom,sige7
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

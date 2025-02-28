Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BB9DC19776
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Feb 2025 06:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rl2la8loJ7H9HoO5qmdI9X29L01dW3pPsD0wDNEXJ0I=; b=YE3bkYz2U8aguw
	686tpWVVT+Z/1AxzILhhEC3uOPy8dqhS+PCiUQisOJXZpnYgoxRuRU60WkNMyXibamNUrpTHjauwK
	ZZl/YpCAq8o31jypPWnZILGfq6rG4hKXOzfY3LIcTPItWbKagQ9v58fouEoJQDczy8osCAWoSTmeE
	AIFXDScHneRpSHUVI0Cnn+X79EZcq0jOorHMqylygW+Z1JxfoHsA6cl6ztpqcEj5dXbi1Rj88ggXR
	r8ppbC/sg+D9NPQxlfCu6kb8udutMtOjUPM97nZRZn5Wf/6GZt2FeroNk9lCjv+4LBFDe8hmSGb9o
	30ugGwFI64el/vq9ghYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnu6B-00000009tX9-0cPY;
	Fri, 28 Feb 2025 06:43:51 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnu39-00000009syV-3c1E
	for linux-rockchip@lists.infradead.org;
	Fri, 28 Feb 2025 06:40:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1740724843; bh=7NB3P0f6RdiFdh3drg6WLnXPDL2oA0XzIxfpKl6Tzgc=;
 b=uh7G+/Ch4QINZxAeggR8yk6Pqk9ygO39muCS+U2qykR43YFYQC3Boy7jaHjNLFYUFVMhIYlCa
 x26cT8VRgHk2bHEv2k0hfNoqyR4H7Kd4ZKoWKe24QIAitoVh3ZfZ4S4YqUo7S7+mUzAMxuhky2u
 i3FGtdfaTvOnH46xP2nuv4K6l9nTNj0vWk598QUJA8iKpctPiUqBCszr6LcUsZJqJTnxqtljqCV
 ExW7Lgx1B7af2WVzYvJMTNr05UL6kqhCjxSHuAtKBfpA/ABP5Ov5xz9riWCrt0cPPpS/jUdfK8+
 bEqEedjQUMucCepd9QdJLQbCZHROxgi8dS7iXFbnhxQg==
X-Forward-Email-ID: 67c15a66bcf1d1bd23db01bb
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Yao Zi <ziyao@disroot.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 2/7] dt-bindings: pinctrl: Add pinctrl support for RK3528
Date: Fri, 28 Feb 2025 06:40:08 +0000
Message-ID: <20250228064024.3200000-3-jonas@kwiboo.se>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250228064024.3200000-1-jonas@kwiboo.se>
References: <20250228064024.3200000-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_224043_989732_2F4C7CD6 
X-CRM114-Status: UNSURE (   7.31  )
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

Add compatible string for RK3528 pin controller.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
index 80a2b1934849..960758dc417f 100644
--- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
@@ -44,6 +44,7 @@ properties:
       - rockchip,rk3328-pinctrl
       - rockchip,rk3368-pinctrl
       - rockchip,rk3399-pinctrl
+      - rockchip,rk3528-pinctrl
       - rockchip,rk3562-pinctrl
       - rockchip,rk3568-pinctrl
       - rockchip,rk3576-pinctrl
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

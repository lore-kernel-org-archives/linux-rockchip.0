Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3107DC4345F
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Apr 2024 13:58:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J05PeGhKtsWV2qvnYWcgWfpyfBvA6kSXXFT0ycQgN5w=; b=EPVgTnDWiPNstK
	tOy0Aahhqo4HfWel0xQEzLr9HnBbRk1vNF9YGUpNHq6erBwbryUUawh3/7G+1RQZcucxx3rLzD5aq
	kFvSUtggZ+AzvG6sSCzuE0DiI57htQ0lLUNaYNtn695BiqbYQBLI0kq2YmaKgIzpKrhY9KiHu45Y1
	LYSHjaiFm9xG7iLUhdlYU69bSNQn5FYPMUxszxsBvIsAPgFQJO1CU5/H/apF/XAJ2PJNBGy/CftpH
	hPVbjNCKCHQBzDII9YwaS32JhsmpKeMxtRTl3bClFqHmLtxjFy2TahGlb9oyYFRonsVO6qSi2I3tf
	+jpHxZ1uCtHKhmd3ynGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvdsw-00000003Hak-0aUj;
	Sat, 13 Apr 2024 13:57:38 +0000
Received: from smtp2-g21.free.fr ([212.27.42.2])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvdsr-00000003HYs-3Y2Q;
	Sat, 13 Apr 2024 13:57:35 +0000
Received: from localhost.localdomain (unknown [82.64.135.138])
	by smtp2-g21.free.fr (Postfix) with ESMTPS id BA8FE2003C8;
	Sat, 13 Apr 2024 15:57:01 +0200 (CEST)
Received: by localhost.localdomain (Postfix, from userid 1000)
	id 5423D40039; Sat, 13 Apr 2024 15:56:08 +0200 (CEST)
Date: Sat, 13 Apr 2024 15:56:08 +0200
From: Etienne Buira <etienne.buira@free.fr>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Johan Jonker <jbx6244@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	shironeko <shironeko@tesaguri.club>,
	Etienne Buira <etienne.buira@free.fr>,
	Jonas Karlman <jonas@kwiboo.se>, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] Avoid error message on rk3328 use
Message-ID: <ZhqO-DEmh-6TeHrt@Z926fQmE5jqhFMgp6>
Mail-Followup-To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Johan Jonker <jbx6244@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	shironeko <shironeko@tesaguri.club>,
	Etienne Buira <etienne.buira@free.fr>,
	Jonas Karlman <jonas@kwiboo.se>, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240413_065734_266906_9CDF7E64 
X-CRM114-Status: UNSURE (   9.53  )
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

rockchip,rk3328-grf-gpio is handled as syscon, but syscon mandates
presence of gpio,syscon-dev node (or it will call dev_err() when probed).
Correct rk3328.dtsi and related documentation to follow syscon's
expectations.

Signed-off-by: Etienne Buira <etienne.buira@free.fr>
---
 .../devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.yaml      | 2 ++
 arch/arm64/boot/dts/rockchip/rk3328.dtsi                        | 1 +
 2 files changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.yaml b/Documentation/devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.yaml
index d8cce73ea0ae..2c878e7db900 100644
--- a/Documentation/devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.yaml
+++ b/Documentation/devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.yaml
@@ -38,6 +38,7 @@ required:
   - compatible
   - gpio-controller
   - "#gpio-cells"
+  - gpio,syscon-dev
 
 additionalProperties: false
 
@@ -47,4 +48,5 @@ examples:
       compatible = "rockchip,rk3328-grf-gpio";
       gpio-controller;
       #gpio-cells = <2>;
+      gpio,syscon-dev = <&grf 0 0>;
     };
diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index b6f045069ee2..fd25d5bee19f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -296,6 +296,7 @@ grf_gpio: gpio {
 			compatible = "rockchip,rk3328-grf-gpio";
 			gpio-controller;
 			#gpio-cells = <2>;
+			gpio,syscon-dev = <&grf 0 0>;
 		};
 
 		power: power-controller {

base-commit: 20cb38a7af88dc40095da7c2c9094da3873fea23
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

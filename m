Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B999C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Apr 2022 17:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cEhTjNEQKDXQg5BeBLalWCckl/nPvGm/hDYgffWcuLQ=; b=19qQb4Ti1zzYSH
	Hu/rhy98kHAUWuWoBhhAyrLi8jHV7RNDCcn5GwQ9awk3e7+O2KLIsFEtqnqdUEXSn4ozjAPKOIZRG
	SK/5kgImODbLEGTWxQQJNPftqT/xy3Z2eSx8Tqwy7vastElogKnUNnZI8j3EAxe0hVoE3o1wICg2F
	6YcGvbQVN7jmdmfS3TkI7qgV1uoZtwjIyVySWa/iIl1boF9/WMAwXb1XxHAOJFes68yg1YNG5dkFH
	p27R0S4/nZkoK9siEmO6u2coVd8jDGRCj5pxyes1rlmdcF56jJh5IabknhbHPcRxuC4/XIEjMR8YZ
	/RmN3zssODvojSsl1ipQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhwsI-001gEQ-0F; Fri, 22 Apr 2022 17:15:18 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhwmu-001dVa-Lc; Fri, 22 Apr 2022 17:09:48 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id 761211F468F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1650647378;
 bh=/EX7uRXZrG1QFAgVbH2hTSvKXYhKFV2tAu7po7GteZI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=AfRiS+5Dyjj9SlMnErSK06CqZBRQX5Eiiv+HLUFIVG1gFGzCY6P92wBK0MhdV6DuR
 pMTpNBOyqWt35uX2snhg9QeUbYdU5hgOfjHo4eHT7cY+LNbAtY04/9PJ6sSN26/lEB
 ncRknsoDxJozJnlW/8+lfkK/OyLrI+sokRmiy96V6flg3IVJbmxKOu69IFyvyWWwdU
 zlRDl+KrzBV4A7Ap4ER8bfHwQ2jSKCipjBjE//zBPreCDPPqTQ4ll/0yv9MM3/0ctt
 o6YrHQTAnnLRyGVoJIUjPJYIWXOTEEiRgfxpfgTvjTOFojCFUWCZaknO8zz9lF0jUN
 lHGmr3dxWi1JA==
Received: by jupiter.universe (Postfix, from userid 1000)
 id DB906480828; Fri, 22 Apr 2022 19:09:32 +0200 (CEST)
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
Subject: [PATCHv1 11/19] dt-bindings: pinctrl: rockchip: add rk3588
Date: Fri, 22 Apr 2022 19:09:12 +0200
Message-Id: <20220422170920.401914-12-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220422170920.401914-1-sebastian.reichel@collabora.com>
References: <20220422170920.401914-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_100944_929518_94B296D2 
X-CRM114-Status: UNSURE (   9.69  )
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

Add compatible string for rk3588 pin controller. No other changes
are required, since the new controller can use the old binding.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
index b0eae3a67ab1..e62fb5e9db76 100644
--- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
@@ -44,6 +44,7 @@ properties:
       - rockchip,rk3368-pinctrl
       - rockchip,rk3399-pinctrl
       - rockchip,rk3568-pinctrl
+      - rockchip,rk3588-pinctrl
       - rockchip,rv1108-pinctrl
 
   rockchip,grf:
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

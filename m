Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBE31C61DB3
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jan 2023 10:59:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pauDt2JusQl6M1blaRFfljwDXpn8zeQSJkK5oxXTOSQ=; b=Ff1XYwkeGdFVNQ
	8e/iKkLfTqQyp7hcJOMTXkfbhSpCeL3P4R1+8R8xmjTELlQ8PNJCUy77xrXiXktoxA2jQhr+e1rIz
	mkyY3hr7VHo04nXXFCvhRjNYS9NZrnqWaUHWlMZYCuuLjfLOaMit5UrQ90E1XKM0X8xoAJ41ZHiVC
	OdLiKXtfWFHanTo42KKSzLo28OUJknKnawWaEzB62moI9+2yX4ebFv5jjYpAE/oqmYYTKPBP/dApH
	tVfb1adBJ3SpyZjjj1POdBy1tdXKEmcjmuB7gwUx+5Svf/5zz3Kn9a6z5Xb2NSWZIkP2RLhSqF8Yf
	khPp4/L6LcwORXC+BVbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFvJ1-00EiFv-Aa; Thu, 12 Jan 2023 10:59:35 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFvIk-00EiBE-RT
	for linux-rockchip@lists.infradead.org; Thu, 12 Jan 2023 10:59:20 +0000
Received: by mail-pl1-x629.google.com with SMTP id d15so19860680pls.6
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Jan 2023 02:59:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=prB1PlrTJGbwJ5z9TGNkKNhBJqEBxxJ5WnlRnkTylzI=;
        b=YbtrtPf2b9SxJ/gxtMeLIHEJQ4Aj8Uz1IM12aHjLskai6E8zGH5wPw52ZakuL7uCBD
         sJBf0axhkJnithfk5x9xSMNYTR0+x/vbOLY6wOHGAu6h1+wNLXLLfawHsXKesxFiBbd9
         JLPHJy6e0u6IYE2V+D1/HEW4rtKK/Stp/lkk8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=prB1PlrTJGbwJ5z9TGNkKNhBJqEBxxJ5WnlRnkTylzI=;
        b=7D/ppNJQhzxFFyFHdGwgDmwX4bIndOvefPwZOzx5FgS312EW4DSDkc2CtkhbmTtD7Z
         DpmALdgX9mX+rd50Yl3K7pJ94qwC+LNaiFesNfxdNjQNEM9Zg/zC/Uhiv95tCxIhvw3+
         5TFbQoqr/sJ75VRIonzvP+Vp6Adn9vSS8cYtwp8yVuynis75QQWngqERCoNgmWWSvHnf
         fdRiINJkaGHRxpuEN46z116zSKP/4KignhMf0vmik/7ULtnQxW93hjJ2tCYQ3I6qkY96
         A9+BXC/nQUosItuvGJ8za4a6lbBXti4rJPz+o0XjEO+ZA4VqyJRDQtidivDf3TuDEpBZ
         hsKQ==
X-Gm-Message-State: AFqh2kon16vlKO5Tmvu+r5TH0f2+jfSsc3AYSAoPcRokNRO+Scge3RMT
	v8APMQbXTEZ/ZlSeuQNs9JjPuA==
X-Google-Smtp-Source: AMrXdXthQelQ+9UuuIqt91ZlvdJsP8l/6mgFbjtEjVqoWDwzcWRe9jIGHearJAMtRJXO8JdIQ/3pHA==
X-Received: by 2002:a17:902:6942:b0:194:5519:576d with SMTP id k2-20020a170902694200b001945519576dmr3907752plt.22.1673521153980;
        Thu, 12 Jan 2023 02:59:13 -0800 (PST)
Received: from localhost.localdomain ([2401:4900:4cc5:b413:eb81:9f91:b22e:317f])
        by smtp.gmail.com with ESMTPSA id t5-20020a170902e84500b0017f756563bcsm11986850plg.47.2023.01.12.02.59.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jan 2023 02:59:13 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 1/3] dt-bindings: dt-bindings: arm: rockchip: Add Radxa Compute Module 3
Date: Thu, 12 Jan 2023 16:29:00 +0530
Message-Id: <20230112105902.192852-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_025918_893606_345FD49B 
X-CRM114-Status: UNSURE (   9.89  )
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

Radxa Compute Module 3(CM3) is one of the modules from a series
System On Module based on the Radxa ROCK 3 series and is compatible
with Raspberry Pi CM4 in pinout and form factor.

Specification:
- Rockchip RK3566
- up to 8GB LPDDR4
- up to 128GB high performance eMMC
- Optional wireless LAN, 2.4GHz and 5.0GHz IEEE 802.11b/g/n/ac wireless,
  BT 5.0, BLE with onboard and external antenna.
- Gigabit Ethernet PHY

Add dt-bindings for Radxa CM3.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index c2b59a03ed1d..f95d370b5b78 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -615,6 +615,13 @@ properties:
           - const: pine64,soquartz
           - const: rockchip,rk3566
 
+      - description: Radxa Compute Module 3(CM3)
+        items:
+          - enum:
+              - radxa,radxa-cm3-io
+          - const: radxa,radxa-cm3
+          - const: rockchip,rk3566
+
       - description: Radxa CM3 Industrial
         items:
           - enum:
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

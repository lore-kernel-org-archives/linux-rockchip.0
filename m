Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C2E5D1F9C2
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Oct 2024 19:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DHf5BA6xmlJCUNOvd1dY4nCpRpVZH+PT7u/zOqeHU9w=; b=CKRGfuR7cRnWR1
	Lmfb9i6tbjac4WfdsvHI0lZ01jYJefnfb5F+L8lkNuwP1CEWMvYI1EXwVgdkWTtbcBPGwPJ1OXPKE
	JZqH+a5YhrZrLFvsAhenIz8kSseR3X+k4McGDO/eoVZuBcJPjMMK6g8KIIF0EDhf4Tc7FeXNY4iNJ
	bM439LdVCf+2pM7Tgj0gx6tjzI60WryP/v92FGTeOd7welWH/TpXzjfzBD+XLuXvPhqotuKz56PRF
	j4JDaXSN5WtBf7vNoFrnLjLQ3wPFtQ2ey1S71dWyC1Gd5FPCjKBsbdTUG/wt5kz/KLa0bG6BjqDYT
	1wSse+DMDaO9fA2Pvbbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0nOm-00000009QBC-2bNZ;
	Tue, 15 Oct 2024 19:40:04 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0nEM-00000009OeX-2fyQ;
	Tue, 15 Oct 2024 19:29:19 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2fb57f97d75so20011301fa.2;
        Tue, 15 Oct 2024 12:29:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1729020557; x=1729625357; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=ffK46DaQHiPwkYw7K81WBqFGG+/9qPysfgZJJ0kG6Pg=;
        b=V8yUVbcLXBWxWt5eJzQO5vNAi9sIcPMT0dOyHOLxWpxkUr47PyScwrkNeWgi/Gh2Nn
         yhu5PNg4VFFCrgM4QlFtrjVeNT6QWrsjb8JkR9BW/t8mlCJGJmVZ8ZJGRTJmulPvUpkm
         XUsgUNx4aDYwQILvRqT8mG0YLvOOz3TJ1Iu9jQYPZU8ZqAmgqBUNgr/wX8Dxeb8Qo13P
         mPE4U9k2AYUNiRmvu8UZX0/GKznHfZSUdIbri414WBlU/JBoXQD8NUq6CxACcTM2TAs7
         WoPPL+vUjEaJLEVK8SIRp6x12QyM+oKXRwrHG9lJM7qkKPgXKcdYBP9VI2THhgUF1WyH
         n5nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729020557; x=1729625357;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ffK46DaQHiPwkYw7K81WBqFGG+/9qPysfgZJJ0kG6Pg=;
        b=oOhn/ahsRd2zFn5QOUdyv5r/ehG94XRynNI8ewNhHOtVYd+Q0pBxobCi4meeD9YD/0
         oHeENVNa/kJGekg/U7BAgRFvxqXk4rse6kcPPLZRWMVX6VypdijVEoeInVKEekQ1ZU/B
         /lGWNqI3OrCV/x2n2AnyfA1oyj536Nmi9s9hfi3qtqmfWD3dt8P/P6uqdMYCQK+auiSl
         HBwa792YZbS/plkz1w3A/SiGVGHroisiCZhYycMombNazl1VLIa0cz3g42t6iTHnEiXr
         rajSKDSUrL6H63vD/ToJbZy9IwUYKPEfowGMdfGaIoMReH6EUCRqUXEeXKxbx0BaPlj2
         osew==
X-Forwarded-Encrypted: i=1; AJvYcCU1LF0in1rT5zpWryz/oReweljDM2MWA1/dAYHPicqA2kTGQXTu/9A993v7JnfxfNL3jFhf2tIxWUh9vY5SSOw=@lists.infradead.org, AJvYcCVcDHqMVIsUd8uWXzYkpgsZ/3bFWZ63cw2l+SblJ2QUPhTGDCr22O7+NfXtoKh3Rf6tL4+nxNu48CzwRW8hbiFL@lists.infradead.org
X-Gm-Message-State: AOJu0YxUv9LIswn2Rf6j+nfwrDIETEYf4kP3jMf1uXULxwqmlHppkz8u
	iwtvOttS9fFEpPw8VRlacO+8Vra4WlnKIewnyWVXdC+HO0r0uKcL
X-Google-Smtp-Source: AGHT+IFbrG8/Thtvhxtu7bnxzwkT21F5l1gDv6pnVsJtlEKHnm6G/4UsP/zlXdJL/d/sZR3je+Ka+Q==
X-Received: by 2002:a2e:a542:0:b0:2fb:6169:c42d with SMTP id 38308e7fff4ca-2fb61bc0be8mr11584851fa.41.1729020556456;
        Tue, 15 Oct 2024 12:29:16 -0700 (PDT)
Received: from localhost.localdomain ([2a02:908:1587:1e60:43a9:8917:3db1:25e8])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c98d4f857bsm983917a12.21.2024.10.15.12.29.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 12:29:15 -0700 (PDT)
From: Cenk Uluisik <cenk.uluisik@googlemail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	Andy Yan <andyshrk@163.com>,
	Tim Lunn <tim@feathertop.org>,
	Jagan Teki <jagan@edgeble.ai>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Cenk Uluisik <cenk.uluisik@googlemail.com>,
	Jing Luo <jing@jing.rocks>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 1/2] dt-bindings: arm: rockchip: Add Orange Pi 5b enum to Orange Pi 5 entry
Date: Tue, 15 Oct 2024 21:28:35 +0200
Message-ID: <20241015192905.28969-1-cenk.uluisik@googlemail.com>
X-Mailer: git-send-email 2.46.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_122918_688478_FB9112DF 
X-CRM114-Status: GOOD (  12.32  )
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

This extends the Xunlong Orange Pi 5 device tree binding with an enum for
the Orange Pi 5b, which is implemented before the device tree.

How does this board differ from the original Orange Pi 5?
  - the Orange Pi 5 has a M.2 NVMe M-key PCI 2.0x1
    slot (hooked to combphy0_ps) whereas the Orange Pi 5b uses combphy0_ps
    for the WiFi.
  - The Orange Pi 5 with the M.2 socket has a regulator defined hooked to
    "GPIO0_C5" (i.e. PCIE_PWREN_H) whereas the Orange Pi 5B has GPIO0_C5
    hooked to BT_WAKE_HOST.
  - builtin eMMC storage
  - no SPI NOR flash (u-boot, preboot etc. initiates
      from within the eMMC
      storage)
  - ap6275p Wifi module (like the Orange Pi 5 Plus)
  - builtin BlueTooth module

Signed-off-by: Cenk Uluisik <cenk.uluisik@googlemail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 687823e58c22..62bb6587da8f 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1051,7 +1051,9 @@ properties:
 
       - description: Xunlong Orange Pi 5
         items:
-          - const: xunlong,orangepi-5
+          - enum:
+              - xunlong,orangepi-5
+              - xunlong,orangepi-5b
           - const: rockchip,rk3588s
 
       - description: Zkmagic A95X Z2
-- 
2.46.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

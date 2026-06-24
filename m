Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 566E7CDB47F
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jun 2026 08:46:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2w/MuaiDtysZw4f7rBVi0W4DCz70x4cuhqTRuIQ95Uc=; b=a7tUzIyP1Sl4J7
	UGaHAqK+Na00Rl3MixDLl34hSQRLiBt6BSTnBxDX6kmh/4j8MOaw2FKIIpJzS1vBzq24pAR6AJOEX
	LyXvWnE2XLZ5hjVK8fL72+85A5cW6m2LrUU1VuAPhwWEEllg2jfQ+sW4zXLkQY5f/ZliMRxocGqd1
	UTN3hd4Gj0SCvO9dsHrUgznGC3TcpPnIW+Y6NstIcmxYpFfv2wrS5XoAa1+dyWLWioCtWxJ4Sg5aW
	g/pkRwlXbN3TeAdolN2kSeiRevqIMIClsJpYwNwCdrvzOd8vDcyeo3Yh55Q5vtDhGAniE0KI0x7OB
	UiGirCKjHgUrj1KOqp4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcJFp-00000007Pw8-00ha;
	Wed, 24 Jun 2026 08:46:41 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcJFl-00000007PvI-3djI
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Jun 2026 08:46:39 +0000
Received: by mail-pj1-x1043.google.com with SMTP id 98e67ed59e1d1-36b95eb4bb4so535572a91.3
        for <linux-rockchip@lists.infradead.org>; Wed, 24 Jun 2026 01:46:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782290796; x=1782895596; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VaTXxl/rE8HFkzzKKmqnaZrWWCZtpV0ev/8QevFoQa0=;
        b=qENcih0kVNJjhubf4d1tfGfDC91Nl2Fm2BR4qFuB0R+3Sh58XVvbatuGn8iODyFqfo
         Kl9Y7deKQaDIwkstNV4J95QK5EjXBsl2WEmWGsIKkEUE2PPdXpRKzhi5ftt/yBDspImZ
         rgXYem6aJQd8uW6m2CaO8nasMAZa1rALH/JUjuW7HYjBgE9YQjgqRHbKGppt5Bf8nNEU
         XKWN51zKTyH9MKkjusUSDQ/iPDt3rJF5WI6zO8+tv4T9JRRVuW/OAziOqAzAHNXcQGZr
         JBaqadOejQLhOS9zTN39qHO5KnyQHDLfqDbURZ7pFsFHk+wcj+xjugwGl5veXT0SfSue
         A+iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782290796; x=1782895596;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VaTXxl/rE8HFkzzKKmqnaZrWWCZtpV0ev/8QevFoQa0=;
        b=TYVwSfVEvq9MaB3HoRiqzepIfsG4ZBaHUetn+TUoIAAhM3G7K5WNzdmDrTCKY2azh/
         1xzOzhSgL1jZUMwuM1d+OrpWaQEqznDN++v2AHh4gfVR6Ifhc8DTAa30szeXvafYk27V
         iNZisYpfxOa8pMPfVBIiIVfcQ8WA2YBHmb4hv3qEuUFu+G39aTMJibjEJ552HxFDchPO
         T1FNXk9UBNwqEkGV4ng2h9JGL2kpCWCq0ynUvbvyCnuKUkhdbmFrE1pSwIfbCiZwZ3xc
         7g9e0KwFOdDPFgYvHy/LsO46DWtVQrNz/AgBWq71zPft3vHvRQ04dbM916D69ZsNTY9i
         mhCw==
X-Forwarded-Encrypted: i=1; AHgh+RoPKCSkwm3BT6tCP16vJet5NWFGZnBB0q6zPcMG1AJweuOhaV/Xmc2q9/twh681aBZqBHgw7s0c8Q8vG6lmIg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyZ8eJ42UllZhhREc/bRedRGRl+pVC+7fakvpTSX+lK+3UrSg9L
	v7NeKsR4z3u1+uANPSTsN6wXzyTj7Csb7n9XeFMZ6v/E8p5GiGktmDnL
X-Gm-Gg: AfdE7cm2uv3tX0mLHK4hhyUedOjCsV1vAbfKW7KwWdiHjMbZ5REgBS3keWeXz3qlTbr
	yPxFpdK/eT/ucrGDhZO/uPN/sKWzO8U7kv6/ppIARpdltX+o8FPP4Ijbk926IHErWc2vWUALZdc
	Cfpg6CqXoBLISLJIwqCH+iAknK5TYv9XbAiJ8y1E5ZZ6ZuJMnSwBre39l+/xdViSc91qXmKVdJW
	D8+1aF2Pfc4c7jURUatdDtDFCi9r2AVngedjQExj+Ktu7LmOSBANuqhI9DL95Qb61RxiGoBqzKx
	FZRRd9x1gCX+V3qfXBN6wMqVxtPGUNXb42Sh9CxzDCaM1zM77JTiyVEpluuEJxbmWacdcRfRvgc
	gUTIA3jacvDgylsaGye+QvOJQyCUBcdAitmtTu5SrK8WxqlcxNCU7vDXNAxqYUjsiJwYp9ZJsY4
	8Htx0b773Ne6+Vmh2ySIKq3Tb2
X-Received: by 2002:a17:90a:d005:b0:36d:649a:39f7 with SMTP id 98e67ed59e1d1-37de42bb597mr2631365a91.22.1782290796126;
        Wed, 24 Jun 2026 01:46:36 -0700 (PDT)
Received: from [192.168.1.101] ([218.194.36.79])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-37de3d152f4sm2138146a91.14.2026.06.24.01.46.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2026 01:46:35 -0700 (PDT)
From: Yanan He <grumpycat921013@gmail.com>
Subject: [PATCH 0/7] ARM: rockchip: rv1126: Add support for Alientek
 ATK-DLRV1126
Date: Wed, 24 Jun 2026 16:44:37 +0800
Message-Id: <20260624-rv1126-alientek-dlrv1126-v1-0-5aef608a3f64@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/y3M2woCIRSF4VcZ9nWCSon1KtGFhz21SyzUZEB89
 7GZLr8F62+QMRFmuEwNElbK9I4D4jCBe5h4R0Z+GCSXiiuhWapCSMVMIIwFX8yH/+LPR2O9m/V
 Jcxj3T8KZli19ve3OX/tEV3496H0F2yK6+nwAAAA=
X-Change-ID: 20260618-rv1126-alientek-dlrv1126-d94abdcf8580
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 David Wu <david.wu@rock-chips.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
 Yanan He <grumpycat921013@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782290789; l=2033;
 i=grumpycat921013@gmail.com; s=20260618; h=from:subject:message-id;
 bh=iJnYjsvlFEQcTUEBJKIAHZNJZeAQoRS5+2RUTfWmdhc=;
 b=eAmpN/LKqYFNFMAnnsJDd9ohedM5OOImfapRIiKBxmQZmuQsg34keypt4x4eW24GHkC/Y1ECB
 nUQ/RXKU2rtBBikIZF9qoSlbOOUqSmnD3bfzpThwHvlNvdNsa/IGU1a
X-Developer-Key: i=grumpycat921013@gmail.com; a=ed25519;
 pk=oWrY8KwXIunZWlYBV76NG2A3V4p1bJ+aD45Mr56ErTw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260624_014637_924115_FC0E49D6 
X-CRM114-Status: GOOD (  10.52  )
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

The ATK-DLRV1126 board consists of a CLRV1126F core module and a
DLRV1126 carrier board. The core module contains the Rockchip RV1126
SoC, eMMC and RK809 PMIC. The carrier board provides Gigabit Ethernet,
SD card, AP6212 WiFi and Bluetooth, PCF8563 RTC, ADC keys, GPIO LEDs and
audio connectors.

This series adds the Alientek vendor prefix and board compatible, updates
the Rockchip DWMAC binding and driver for the RV1126 GMAC reference
output clock, adds missing RV1126 SoC description pieces, and finally
adds the CLRV1126F core module and DLRV1126 carrier board device trees.

The board was tested with Ethernet/NFS boot, eMMC, SD card, SDIO WiFi
enumeration, Bluetooth LE scanning, RTC, ADC keys, GPIO LEDs and RK809
audio card registration.

Signed-off-by: Yanan He <grumpycat921013@gmail.com>
---
Yanan He (7):
      dt-bindings: vendor-prefixes: add alientek
      dt-bindings: arm: rockchip: Add Alientek DLRV1126
      dt-bindings: net: rockchip-dwmac: Allow 9 clocks
      net: stmmac: dwmac-rk: Enable refout clock for RGMII
      ARM: dts: rockchip: Add RV1126 GMAC refout clock
      ARM: dts: rockchip: Add RV1126 I2C5
      ARM: dts: rockchip: Add Alientek DLRV1126

 .../devicetree/bindings/arm/rockchip.yaml          |   7 +
 .../devicetree/bindings/net/rockchip-dwmac.yaml    |   2 +-
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 arch/arm/boot/dts/rockchip/Makefile                |   1 +
 .../dts/rockchip/rv1126-alientek-clrv1126f.dtsi    | 277 +++++++++++++++++++++
 .../boot/dts/rockchip/rv1126-alientek-dlrv1126.dts | 258 +++++++++++++++++++
 arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi     |  10 +
 arch/arm/boot/dts/rockchip/rv1126.dtsi             |  18 +-
 drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c     |   6 +-
 9 files changed, 577 insertions(+), 4 deletions(-)
---
base-commit: 8cd9520d35a6c38db6567e97dd93b1f11f185dc6
change-id: 20260618-rv1126-alientek-dlrv1126-d94abdcf8580

Best regards,
--  
Yanan He <grumpycat921013@gmail.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C721AC43602
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jul 2026 09:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L+5OJF9hIklERocyhOwQxVwHo4u+4TWxBM6nDzSdX5o=; b=WERNSxVR2UGaxA
	2uTqUUg6fGB9vPOcpelM2z1lMuyKY3rU2CQWF6smDXVM+SKZoUW+1sAiOCW+j6WI9JYIicKlGdyod
	kKIFOKO7GV/M+IShurlaB+f5Sr0gMCW8Z+W2AjXNTtyqOO/Vt4kYHFdkbE++RJbOsCO8lsj5YujZw
	2ZJC5pb7kJ0jSTVsdke9jZAoHoDqDHouU+Pd/BZOflj8Z2L9QVG44Fx9MntkGnIqB0saLUWxM20vP
	43XjtBr52+7iPbZfhVes115FR3g3jaMkBaFbfoaSAxJsOL7wbhAE3LUImzz6q8dUwmqI7UWZY9nnN
	U1g2rTL7oK0pRqFF/V3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgfPo-0000000Bydl-3wLW;
	Mon, 06 Jul 2026 09:15:00 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgfPl-0000000Byc0-31k1
	for linux-rockchip@lists.infradead.org;
	Mon, 06 Jul 2026 09:14:59 +0000
Received: by mail-pf1-x443.google.com with SMTP id d2e1a72fcca58-847aa193d98so2246392b3a.3
        for <linux-rockchip@lists.infradead.org>; Mon, 06 Jul 2026 02:14:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783329296; x=1783934096; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lr2T/VNgeTFspDjmoHod2aovQh7y4rJk7xKdeAYkRu0=;
        b=FgcmWG6XSaAhTOfdZ+NY9tg0E1pTOaYkrtHms40VSDCxUEvMi8lxEnKC6xhb4XX0dJ
         D5t3RL/nFCY+6fZXn6jvzEEU4Xz2Kscx2wAs8/Vh0Vv+LYsZ8f40UbR8IN4JjJqSrMdJ
         QCIqDlZJeJC2QtjvhczImzL2bTFqM6b3I9eoGb6Y4dodYqqzIzwy0N5LoBNsVeJ76V4Q
         0d67xuoTtnhS7fFvrRMF2rL2sDsZOtiiR40886nazrcBHqRY2jnE1SJV88v7M3TqkhYc
         N3nFPrT0yrwGW27RQfM9rze8vSv2ftZnIBjTJUg1YP4XFYum+yog+UCeROUt0drmGjBz
         Bsgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783329296; x=1783934096;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lr2T/VNgeTFspDjmoHod2aovQh7y4rJk7xKdeAYkRu0=;
        b=ACODBFpia32cgmIuac7EYvf83XCAn+dw3Iw6q+Ha8FxTpA+m+YVmnhvwhC6NeVsAr1
         hL26kiwkY++WhZz1fxXha4Ljt1Vuz1qNZw7TcAObSJgY8VuuwdRbY1WZKFOZNyyyhYmE
         GnaVyr8jzS5bp3NwiHbvSZkKeo6pPCr7X3ZGHJkk39LroALydl30KugfhkEGZ2KL9YLR
         iNgHK0eJSjpHhgBpZt9VnYe4LNBDEFKFVxRfeMk90dVCC5NW8RNVfUEICno+vVaG2BRP
         wb/z7ZAsQX7zSQZvtBGf6CR0tmiw616t55wFAqa2TDtgENf+hlx0lktHk7HIisNmpco+
         k4gQ==
X-Forwarded-Encrypted: i=1; AHgh+Ro+2tbkVT/LukIHnfmW/CaiD58T5AEWxxtJUzI6A1i6z1QVBzAe8NILaeqrvuyCqE0ClhpP+hm/p0ipY5ipPg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzoYCQJ8bFrwTCqFP0fBARctgI6BVkYFWy1jhATLD4sGAgTpVsH
	7xOC4+MZ5EA7Iae1PzyqhKBy6kL4pz0qb5i/Ftm7LAc4th/oFnIPZwrP
X-Gm-Gg: AfdE7cn0et6degoQfoSz73Jg94r2sQTTOnsdNAnLjB35o3ogqvlc6WLf1yKNVKpFuGY
	8LY2k72HgS+sNwYRmt1hb9Ut8Zc6l+JBtkHXZnZbHekUy5EXH3vMmknw8toPGxGbYfRJIqiGFA8
	3nzgJlWUNrlzdhGz3++cQ16yt5e73wsTkk4ZHbhuCGHUW6MnOddLxVhyoPyYWafjET9ORlY7Jxe
	Lhby6/V01I0Rm7/UkNZb9qd0X1u/ZQetlkcEGidz/aOyd0oMGSmwQKmjPcwTJKmGFRCzORUFflL
	c2QahYOcKlkTBUEStEGvty+JqGP4jm9pLzgbaVs24cAshK4XeHJHMHigaTr8G4ezOCcarb7F7T6
	8tFqgyYOODXIAuoJqjjTrOCSimgdb7iwCti6mjdoEsF3U3Dz2uCOJuR3AA10WESgodQaRxLepkG
	+UTaS3H0Zb7lYvGu8AOkXygeTd
X-Received: by 2002:a05:6a00:928f:b0:842:80c5:c420 with SMTP id d2e1a72fcca58-847f6ef68camr8193652b3a.40.1783329295132;
        Mon, 06 Jul 2026 02:14:55 -0700 (PDT)
Received: from [192.168.1.101] ([218.194.36.79])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-847f6db29d1sm3445963b3a.53.2026.07.06.02.14.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 02:14:54 -0700 (PDT)
From: Yanan He <grumpycat921013@gmail.com>
Subject: [PATCH v2 0/5] ARM: rockchip: rv1126: Add support for Alientek
 ATK-DLRV1126
Date: Mon, 06 Jul 2026 17:14:40 +0800
Message-Id: <20260706-rv1126-alientek-dlrv1126-v2-0-ff3176ca362b@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyjHQUlJIzE
 vPSU3UzU4B8JSMDIzMDM0ML3aIyQ0MjM93EnMzUvJLUbN2UHKhIiqVJYlJKcpqFqYWBElB7QVF
 qWmYF2OjoWAi/uDQpKzW5BGSeUm0tAHxpGmR8AAAA
X-Change-ID: 20260618-rv1126-alientek-dlrv1126-d94abdcf8580
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 David Wu <david.wu@rock-chips.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Frank <Frank.Sae@motor-comm.com>, Andrew Lunn <andrew@lunn.ch>, 
 Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
 Yanan He <grumpycat921013@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783329286; l=2237;
 i=grumpycat921013@gmail.com; s=20260618; h=from:subject:message-id;
 bh=cLIYaTp8BMdNpvmeNN9IHEGffrelsNbt22peLlfH/xI=;
 b=n9ZjERAhzjx2V7crs7HJzpo3tqAmQ8t8NqGgffNufU3uJAKs2gRa4YnXgybLrwGB6BscbMpTf
 6R7McTRg+88CmER536i37fi+k30MyFTlhzIpbLcmMPD4KH0VhdznWAN
X-Developer-Key: i=grumpycat921013@gmail.com; a=ed25519;
 pk=oWrY8KwXIunZWlYBV76NG2A3V4p1bJ+aD45Mr56ErTw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_021457_767260_E28002B6 
X-CRM114-Status: GOOD (  11.72  )
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
the Motorcomm PHY driver to consume an optional external PHY reference
clock, adds missing RV1126 SoC description pieces, and finally adds the
CLRV1126F core module and DLRV1126 carrier board device trees.

The board was tested with Ethernet/NFS boot, eMMC, SD card, SDIO WiFi
enumeration, Bluetooth LE scanning, RTC, ADC keys, GPIO LEDs and RK809
audio card registration.

Changes in v2:
- Model CLK_GMAC_ETHERNET_OUT as an external PHY clock consumed by the
  YT8531 PHY instead of keeping it alive from dwmac-rk.
- Add optional clock enable support to the YT8531 path in the Motorcomm
  PHY driver.
- Use phy-mode = "rgmii-id" for the Alientek DLRV1126 GMAC.
- Keep the PHY reference clock in the ethernet-phy node, following the
  rk3588-tiger.dtsi pattern.

Signed-off-by: Yanan He <grumpycat921013@gmail.com>
---
Yanan He (5):
      dt-bindings: vendor-prefixes: add alientek
      dt-bindings: arm: rockchip: Add Alientek DLRV1126
      net: phy: motorcomm: Enable optional clock for YT8531
      ARM: dts: rockchip: Add RV1126 I2C5
      ARM: dts: rockchip: Add Alientek DLRV1126

 .../devicetree/bindings/arm/rockchip.yaml          |   7 +
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 arch/arm/boot/dts/rockchip/Makefile                |   1 +
 .../dts/rockchip/rv1126-alientek-clrv1126f.dtsi    | 277 +++++++++++++++++++++
 .../boot/dts/rockchip/rv1126-alientek-dlrv1126.dts | 256 +++++++++++++++++++
 arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi     |  10 +
 arch/arm/boot/dts/rockchip/rv1126.dtsi             |  15 ++
 drivers/net/phy/motorcomm.c                        |   7 +
 8 files changed, 575 insertions(+)
---
base-commit: dc59e4fea9d83f03bad6bddf3fa2e52491777482
change-id: 20260618-rv1126-alientek-dlrv1126-d94abdcf8580

Best regards,
--  
Yanan He <grumpycat921013@gmail.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

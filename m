Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2C4BCCA464
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2026 10:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B+q4CcASuKZIMjjI2jzTMPvCRwsUYA5YINvd9YyXQ8U=; b=4wFE+AoCKXA1W6
	W4NUZIo+W9Vnp6IFWNYfAgI8TVwexREVJgysH05mFXB3/oM18HvWl8fBnU5GbkOn2ftL+3uZ+jU8E
	wX2U+d3oj78sP3/c4/zOg+hHX+8+Rw3yzgE0rPED/X9mDjuODVOkZJWTk1oZfXvmOfKZ1ZkWjNZpL
	JvDfx/Dzjso5tJwE9C4jCc2NjHD1m6NLipJA4L+hKW6TVPTiQz5a5dW+lk64L8vbMmDJKlN5ef09f
	L6DmYxWQeuZfPrXaXiUKRqOlVDn9zWr3O8vO+J7pH4KLUc9H8LgWod+N36k6Q1vtaFEsIgrHlOxn2
	9l3lKKIJzeK22+TM7Dag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfCs-00000002cfZ-32N8;
	Fri, 16 Oct 2026 10:30:34 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfCp-00000002ccT-3D24
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Oct 2026 10:30:33 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-6ae27f06c2fso5781718a12.3
        for <linux-rockchip@lists.infradead.org>; Fri, 16 Oct 2026 03:30:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792146629; x=1792751429; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=a+WpDzd7OYp8TJV8imDgncnEO+VG7E395HCXpXIMqtU=;
        b=AqMF6zfgPb07+FtQ/kgtGXB1cbCpV6zbrojlh9aOQUf7DX6+raHvQOh+kPTA9j5T0D
         lgXCCHW0gihs+OcCnssKhcRAMbyolvJo75eaxeK0g7OV+MgeLw/KMZHJcJFKZewLxBkB
         /9PE4WGSEmyVDDTMZcMz6Y2N70fXyihD+vsDehgeqCM5KZBg9QSOSp1ocJQP31bHfrVi
         gzdgdNl5/Y0Cq4SlzoonlX2/I5xbFtBEvZLtlPU4HQYJWP97I6gkWos6nDb8TlW+U7X6
         7y3VfB20DVzRj2EiGDb2veFGauIqhAJx6BbI0HCcZ5F0l4ReEs4Rf/qrkkZx/nG+n+CR
         SmRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792146629; x=1792751429;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=a+WpDzd7OYp8TJV8imDgncnEO+VG7E395HCXpXIMqtU=;
        b=IDpaxOKzNxOXd7+IvDaaJohbcFrH+1TOaybASzblCv/kIDgPoYxyDtvT7s8kcwkNkr
         2y9qhj3Jm80L1zckwPD3F+Hb6JgpvtTb8A25exxPjiQlWt8tzFPxLlkXNqf9mQ74kU/d
         +ugiE9DasyG3LRA7Ar5f3CcklkAtpzrwHg/xTmwVx0eUs1loztN6uHUjiw7Ehjiu9aYI
         hAMNxRPe73UBG3dz9ValX1H7PQsT4PSSAmLvo/P8fpF5Ded6KKO0JMgO8I9z3M9nd203
         iipqgjgdYkgZXxga4FXjrCxwWD1SRxoIFuXkPVGQQoPPLl59apz4Igbw3rdJy8kl2VPP
         PIVg==
X-Forwarded-Encrypted: i=1; AKwUvBxZJIxHpDIypqrGa5YVDWnAC6kadPLd/r9hMQnL++erHhdvTFoI1yTt0HAleFdCR2j68GV8QrIQhGEllxiIyw==@lists.infradead.org
X-Gm-Message-State: AFq9FYJVgoP/Jz4vDk6bHJy+64eZrfAyQNwsmRqghAdGvp7nZrqD8cVh
	YyBzPRORovYRxYzm2HgwZ10WMFcQPhECQnBWgQt4aa9aCDOAqZ/nkJwd
X-Gm-Gg: AYBFou0iEUv3NNhf1KsaLuI9W1IKr24M5jmAE/xbLnBRTkl1bBV6mYE5lYC76RMIAWN
	mg5IuogNr2VtI2WZ0sibpK28HruE9f0NBmdY9kfabtOS8c9vmxKUyEV8Ic0KETA977X6MPFhD8K
	rndTJDhLgkkisYwchrsPoigtSKpnfmRv6iULL3tI8x1S+BlaHlTn6JKbdEW8auf560uD4bT7+4J
	RVSm6xvJmpYw8hudDR6rO3S6/x5z2NAuTLZdTY/sQYPf15z1UD/u5hbXSa6U1Zq5BydvYcQ4X39
	e0U5hqNhdEDaJKhwgvekEi0jakaUiU+9FFx2JEiOd/5qyLgPE4SuqJwBzTbMZrzEdVqRXRDK9u3
	6FHXNRzjF8uOsZNQ/2ArUkB6S5qKxN3KPwnscqLy4jbptKyBw3wNwA+ddaWhYVMbndhm4NDtZQe
	Vxf5TqtHCXM9HeICchEzhlq6szleG98tdOoGQv5R3sI17YIrsJ39t0gyab/ERJrMkiGgUUj6gaU
	4oEY+50XHPe
X-Received: by 2002:a17:906:ef0e:b0:c3f:c878:7c1d with SMTP id a640c23a62f3a-c3fc887c5f8mr325847366b.9.1792146629272;
        Fri, 16 Oct 2026 03:30:29 -0700 (PDT)
Received: from localhost.localdomain ([193.107.16.241])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c40912ce133sm60613866b.31.2026.10.16.03.30.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 03:30:28 -0700 (PDT)
From: Dmitry Yashin <dmt.yashin@gmail.com>
Subject: [PATCH v2 0/5] arm64: dts: rockchip: add Forlinx OK3568-C
Date: Fri, 16 Oct 2026 15:29:32 +0500
Message-Id: <20261016-ok3568-c-v2-0-068d68430e6d@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAIz80WoC/22NQQ6CMBBFr0JmbU0pGWJdeQ/DAsoURoWaFomG9
 O62uHX5kvff3yCQZwpwLjbwtHJgNydQhwLM2M4DCe4Tg5KqlrqSwt0rrE/CCCM1aoVdSaqGpD8
 9WX7vqWvz4/DqbmSWvM/GyGFx/rN/rWX2/mTXUkjRSmt7RItG42WYWn4cjZugiTF+Ae77i1qyA
 AAA
X-Change-ID: 20260930-ok3568-c-c095925b1e26
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Johannes Berg <johannes@sipsolutions.net>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Dmitry Yashin <dmt.yashin@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792146625; l=2792;
 i=dmt.yashin@gmail.com; s=20260930; h=from:subject:message-id;
 bh=Ege0/EoNxjOYq/JSHXKRjvnL6FEhr0EiMU8LIrSzUr8=;
 b=gQMaPTFI9gCYRJTK2Gs8mv2HzZL8Bu9hcZ52inWpJiLiEgR03jDdpuRHrtWBGfnPpScKzLCtG
 VKmL8wHlDVMCtYsn7sviLOi6bVj8Ske/TfJX84rqBsFp1J7gmTO7CYI
X-Developer-Key: i=dmt.yashin@gmail.com; a=ed25519;
 pk=vBe9jaaOEH5bQEvfzb1tWOlz3AMIcXCu/GL/CdlwJco=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_033031_839921_31CEF9FA 
X-CRM114-Status: GOOD (  13.25  )
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

This series add support for Forlinx OK3568-C board based on FET3568-C
SoM (rk3568).

Patch 1 adds missing reset-gpios property to rfkill-gpio binding.
Patches 2-4 add .dtsi for FET3568-C and .dts for OK3568-C (depends on
 patch 1 to suppress dt warnings).
Patch 5 adds .dtso for FIT-PCIE-SATA adapter that allows to connect
 SATA drives to the board.

Note: tested on v1.1 board. On v1.2 RTL8211F phys use dedicated
crystal oscillator instead of 25 MHz reference clock from SoC. Patch
should be compatible with both revisions, as in [1] solution.

[1] https://lore.kernel.org/all/20250704-rk3576-rock4d-phy-handling-fixes-v1-1-1d64130c4139@kernel.org/

---
Changes in v2:
- added patch for rfkill-gpio's dt-binding with reset-gpios property to
  suppress dt warnings
- removed mmc-pwrseq. AW-CM358SM has only power management PDn pin
  for both wifi and bt. Using shared wifi_bt_reg_on regulator fixes
  bluetooth failure on cold boots
- added bluetooth wakein/wakeout pins
- moved leds/common.h to the SoM dtsi
- switched gmac's phy-mode to rgmii-id
- added rfkill-gpio for modem reset
- dropped unused wifi and bt pinctrl's
- Link to v1: https://patch.msgid.link/20260930-ok3568-c-v1-0-a0ffd55f5c95@gmail.com

To: Andrew Lunn <andrew+netdev@lunn.ch>
To: "David S. Miller" <davem@davemloft.net>
To: Eric Dumazet <edumazet@google.com>
To: Jakub Kicinski <kuba@kernel.org>
To: Paolo Abeni <pabeni@redhat.com>
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
To: Johannes Berg <johannes@sipsolutions.net>
To: Philipp Zabel <p.zabel@pengutronix.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: netdev@vger.kernel.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org

---
Dmitry Yashin (5):
      dt-bindings: net: rfkill-gpio: document reset-gpios property
      dt-bindings: arm: rockchip: add Forlinx FET3568-C
      arm64: dts: rockchip: add Forlinx FET3568-C
      arm64: dts: rockchip: add Forlinx OK3568-C
      arm64: dts: rockchip: add FIT-PCIE-SATA overlay

 .../devicetree/bindings/arm/rockchip.yaml          |   7 +
 .../devicetree/bindings/net/rfkill-gpio.yaml       |  23 +-
 arch/arm64/boot/dts/rockchip/Makefile              |   6 +
 arch/arm64/boot/dts/rockchip/rk3568-fet3568-c.dtsi | 332 ++++++++++++
 .../rockchip/rk3568-ok3568-c-fit-pcie-sata.dtso    |  16 +
 arch/arm64/boot/dts/rockchip/rk3568-ok3568-c.dts   | 579 +++++++++++++++++++++
 6 files changed, 962 insertions(+), 1 deletion(-)
---
base-commit: 72d3fcf802c45d00b300f25b848a93c3a2bd7c7e
change-id: 20260930-ok3568-c-c095925b1e26

Best regards,
--  
Dmitry Yashin <dmt.yashin@gmail.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

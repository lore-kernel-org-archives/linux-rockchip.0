Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF26E60A261E
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2026 23:30:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=wqtFK/gn;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=qskUgRn5
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=mquBwi6QDwFiCZi91IlVZcDddraob0Pf4AHfIBOff9Q=; b=wqtFK/gnvKvtZGiglci0CJIygx
	q3CdJDPqP1UvPkEXCOto5cDm6VE+0GMRV2H0vXy8HmijyZ2euzY1ujGN+bm61ExQf7BpQPnFV8jLk
	THuoTi9AsAnEsYLi5SV8auTIOtQVL7BqXbkjAt7odn8EkKyUNCTUjR+P78UqhQyFyQD6z6YvlNhon
	UgWM0UpACwr6h/IGdDL21scCN6sYFgpVUz+xMykKy+2BQVHzeGI9VGuhWXL1Dhf1zqNGiSJSvurJI
	ng1S0qnstJvb92PrgxhgMysEZyJnu2E9hZwj3HLMA3hyRzPAkEyYTO+CBbAURNxOUZejqGUxpMvJ7
	rghvMQIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTp6Z-0000000AUAD-1KPu;
	Wed, 18 Nov 2026 23:30:19 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTp6X-0000000AU8p-0L8a
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Nov 2026 23:30:18 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-c51239b0e3bso95286866b.2
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Nov 2026 15:30:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795044615; x=1795649415; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=TJp+v10EMij7VbtZSi1N0VBoPPwdYg/YL3FSqlitLFE=;
        b=qskUgRn5Idc5/qg2jkk4PrHihsv20V+skWjnr8NqtMB+is7M9er8POGjI4NSB/Nlzi
         8P5dymqNul9irDYr6FA8jWD8XprJ+ToEGy4Ndth1y4Plwq93rxdw4PvrS03xz7xijrfJ
         lG3xEP8gIc9PN8pJO/wm+4jsQL4byUtJUbR0TOH+soonIaAFnXhUaCXM1NryzOpmukRv
         CYr3+PkZL2KFx73OceKUE//RfyqaaHxElJbYy4auD/56BrICab1F5F0muT0cVvIbvKIV
         hmW7aQwQ/7ff8FByZ0vRUMkkrgN/0nnxL6fMmWC+X6afUZiPidaaNG1A5XCvhdftBcal
         f6UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795044615; x=1795649415;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=TJp+v10EMij7VbtZSi1N0VBoPPwdYg/YL3FSqlitLFE=;
        b=0tGU2cDOwLOv92Sfz/UBy8VSOOb1TtJ1RPxFCIaTj19K1mU/zRvZX8CdNzbbiApwuY
         ac/lwH5JARpktaXzi/N/P96TjnGqWuJ29GKSbEW1zr4HCLXw1W9gfQWLrXQQwYn6P/+q
         8Hgp2rUHZYNOt4glwA95LMkDyrHHy0DUf1CchPdf07y6lcaB61mQsq0LzvLh3FzYK738
         zO9s8ud7LRr932bfKwpo9/TbaGjp4z0IBVIXvUGGOeDYhRIxFfgHIONHWtJt3FSPQshP
         M+zwWuRzQJC8UVuRLs3AZQwuTwLYeNUY7wbc7ImIZyqO3hvRbsZnynMxfb3wokyUhKe6
         wZWQ==
X-Forwarded-Encrypted: i=1; AL+hErH1MiPugYaWjlqpdYCGbS+HmR19C2jE+EGp0dNqmQcxor6lGnxDzHPHgZiMOKIlSMmG2t33Ajroqu+HfJeeVw==@lists.infradead.org
X-Gm-Message-State: APuU4Z/026OC5oXc1SmaUL5I4c7kQCFNBnGIO3vyyAbAVL1ZIEYatGAi
	1A9kY60eteYWhq9euxVw/rpOCSXw/4IWLtCeZ5b+L2MtJyf6QOMuQy7L
X-Gm-Gg: AYBFou3LQQm/VPbC4sIZ1VDUklmaevBWyk9EoCSMrltEWlp73Zu+6aOeWjLqiZ0l3WM
	xrmdOLYxmAv5xzBkNFZ/BiZ1R2Tr9dMcbmGGV6HbSM9vj1DKUwBO5K2pjmVR+Lds/vho2I8jUp8
	Xvwi3SvKsVaqMf0VrJF6rCc42fgQ4OQzlMUbwHBtiWoya2ba5ov6gbZBHruhRuI3AYKPkOEtyV4
	uXAkOv4QTlCTEQLCd6TyoCZOPHa3ificwIAKo/YcrH4w+IRX40Q41FNE7RWJQPtP74BCLP0hlK9
	pwe5CHi74RhNV5+0z43Tf73ZGN2KoqszRzEpjogllG0RNtY8/ZWhdXBVCB7I/3tEBi75ynMfQgr
	ZBT1CRYCB+AaLMCsX2UOwC0lmH2sHFg/mHMK3zBvSaAIIoiXGM/ejbqRRchoRjCxXXw1dDc4Mwd
	oBt27FqhDa+99O04yxW/RndW4CY5BzAJQmwkqKi0dpBkwjii7+VvAfCppc+Aj96fbeOmnQHSxZh
	2K3TLUQrx9L05Xb9bn6vdZBcCFGXSloy3TTCcheso7EYAXG6UAlO6G36J1V8Tc19yTiwJuLcQU2
	OqGFJxFGigcpVr4930aBWNqznFvCFEUvy7kc9fmDtc0=
X-Received: by 2002:a17:907:3d8b:b0:c50:5005:8ecf with SMTP id a640c23a62f3a-c510e0e8be4mr378449666b.8.1795044614898;
        Wed, 18 Nov 2026 15:30:14 -0800 (PST)
Received: from localhost.localdomain ([193.107.16.241])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c51234d2159sm47809166b.78.2026.11.18.15.30.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Nov 2026 15:30:14 -0800 (PST)
From: Dmitry Yashin <dmt.yashin@gmail.com>
Subject: [PATCH v3 0/4] arm64: dts: rockchip: add Forlinx OK3568-C
Date: Thu, 19 Nov 2026 04:29:38 +0500
Message-Id: <20261119-ok3568-c-v3-0-071840643591@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAOI0/moC/22NTQ7CIBgFr9KwFvMBQoor72FctPy0qC0GKtE0v
 btQE9OFy0nezJtRNMGZiI7VjIJJLjo/ZmC7Cqm+GTuDnc6MKFABkgH2N8ZFjRVWILmkvCWGCpT
 nj2Cse62p8+XL8dlejZqKXxa9i5MP7/UrkbL7k00EA27AWs255UryUzc07r5XfkAlm+hPJEDER
 qRZBFFrUR8YGKG34rIsHyni6izrAAAA
X-Change-ID: 20260930-ok3568-c-c095925b1e26
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Dmitry Yashin <dmt.yashin@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795044612; l=2429;
 i=dmt.yashin@gmail.com; s=20260930; h=from:subject:message-id;
 bh=yfphZ0mTqNHaO6RXY1MSM8psuzP4gCsZLr935QJ6cDE=;
 b=neG5FXjHJ3lCTzvjwqvTzSD1TXFJGfOQShzFZwf6DbnyC1XRKKAAxGFAUAWz78in6AAG21nNg
 boa7IydzY68Bg+Dw2CevsXCSp8YiulDdybhGSbFA898d0oXb2CSm1Ju
X-Developer-Key: i=dmt.yashin@gmail.com; a=ed25519;
 pk=vBe9jaaOEH5bQEvfzb1tWOlz3AMIcXCu/GL/CdlwJco=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_153017_147006_68CC3DA8 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

This series add support for Forlinx OK3568-C board based on FET3568-C SoM
(rk3568). Patches 1-3 add .dtsi for FET3568-C and .dts for OK3568-C.
Patch 4 adds .dtso for FIT-PCIE-SATA adapter that allows to connect
SATA drives to the board.

Note: tested on v1.1 board. On v1.2 RTL8211F phys use dedicated
crystal oscillator instead of 25 MHz reference clock from SoC. Patch
should be compatible with both revisions, as in [1] solution.

[1] https://lore.kernel.org/all/20250704-rk3576-rock4d-phy-handling-fixes-v1-1-1d64130c4139@kernel.org/

---
Changes in v3:
- dropped rfkill-gpio dt-binding patch as not appropriate
- dropped rfkill-gpio node from the board's device tree
- Link to v2: https://patch.msgid.link/20261016-ok3568-c-v2-0-068d68430e6d@gmail.com

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

To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org

---
Dmitry Yashin (4):
      dt-bindings: arm: rockchip: add Forlinx FET3568-C
      arm64: dts: rockchip: add Forlinx FET3568-C
      arm64: dts: rockchip: add Forlinx OK3568-C
      arm64: dts: rockchip: add FIT-PCIE-SATA overlay

 .../devicetree/bindings/arm/rockchip.yaml          |   7 +
 arch/arm64/boot/dts/rockchip/Makefile              |   6 +
 arch/arm64/boot/dts/rockchip/rk3568-fet3568-c.dtsi | 332 ++++++++++++
 .../rockchip/rk3568-ok3568-c-fit-pcie-sata.dtso    |  16 +
 arch/arm64/boot/dts/rockchip/rk3568-ok3568-c.dts   | 566 +++++++++++++++++++++
 5 files changed, 927 insertions(+)
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

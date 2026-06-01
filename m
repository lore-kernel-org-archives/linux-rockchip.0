Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 084CDCD6E64
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jun 2026 14:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W1BuNH+p16Se2+z+51Jnhp6KDD7URIjDWjUwZPx062g=; b=Uwhdyyyvb4OhOo
	ExcJ7FEl4J4rhVl/g2gGhQQq1VB5iDE/N5DXPYanxUwa6osfoeBOVIE+hGpfbg3hSnDqlMR4K93FY
	lG6CsQ5H+wTAtzxQbgH9Q2s9BJ4jEUxqoNXlMKwv7zPJ+D59im/yjXaiO6AN6hrOx7tX69tsxgfEi
	eX0aZxxBcsmtlBIMTge7zaSBZMLAuF/uO5CDgBf4pzGdmIrAXzc7ttSt4SkY9Z47oHsfI3qnJXfMr
	YN4F4gZIpbPrrHzrt908Dmex02aY+YhditvjxKMhaRG5GFGl+voeLeGz1QmUyJMaoQugeJSnhMsgQ
	QDWd24Im2v4ySZxTf43w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU3fL-0000000BHXl-0mHy;
	Mon, 01 Jun 2026 14:30:55 +0000
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU3fI-0000000BHWt-0i2r
	for linux-rockchip@lists.infradead.org;
	Mon, 01 Jun 2026 14:30:53 +0000
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-841882f8f4bso3477065b3a.0
        for <linux-rockchip@lists.infradead.org>; Mon, 01 Jun 2026 07:30:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780324251; x=1780929051; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IuTeNvgytd5DXSE+aALIJm7Hb07s4LTBSmvksBZA7tU=;
        b=dfxbOI6col/LRfbcCBVzAaR8iDjhbyHYN2HitzlvuP0DxcalAk4T07EsCFV/g4288y
         01zsOdvxRN3D6t4SV3OOjhrJ6GbY1lgT75kYp3wxk+1e+Z5CtloC/+18ryCtaM9Ead0c
         NCOKxe6+YQq2ZjJR5/pGbm7+Xf2+tZVnPHPeL9c0uQiAW5Lius2ZItQvsagtXi4wW9TO
         Qyyyp/dyRdqJf6vz9Kv/ZMPzNomgfoYhZ+qy6A6ff3CCV3XDEr2SP0kY65gDzEdofm4A
         S+aM1ln5q8KugNwP6NDJEbgRFMSCcrDPnY4HEFemvw6cRt+iPd0j82yN52k2s/KpvdQp
         N2fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780324251; x=1780929051;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IuTeNvgytd5DXSE+aALIJm7Hb07s4LTBSmvksBZA7tU=;
        b=Ci3EQzZh9VCMptkGKAfvbKLob4v/g1ucDnoCl6VDjI0cXBfVVnlUqeje0EQKYV9wCt
         7lEM6UjvsshScYxuW7MsiTIaojm4fX9lLwjoE1sc94eK8jY4GRqMlMd7HfVxXPXcS+vb
         z5vNxLGeyQMvcaikUcE3ZueAN3JxlaDtFa6dd+xLqn3hQp0FI/0UITXFsLuG7lvEMAk8
         GORKbrYNYmXsRATNx8PisOo8U3SyrUYWtxOJLwiCwxr0Gnzf8+AymSrcjX+DGeAvdtNX
         TsbCxKA+HmfB/8On6f5tC2/riAwYaVXubISPBJfs183GmUHh0euJk8SOkqS/UnrNaDT9
         WM3w==
X-Forwarded-Encrypted: i=1; AFNElJ/Bq/fFQAIIW8nscC0/aUXZscfjfolwX06B872JjYCIyY02gsrY50KeDU0072KMQyRAzUxVU7aLH5FxvN/vXg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxqi4hbNaTACUc7Chx1qgkIjgYpD8jYWhI9WExbZ8elwH5H3xli
	qBZI8n3bf15wqlF6m/DT8U5NkksWq/uyHUQlmRtxeTwYohPXZiY+40VAiJYQxuNBZu8=
X-Gm-Gg: Acq92OHTHFw+FZs79Lp4MhjNpQyJQ811qTOUyvEBJis5FcTxOQ60NhetLSTJYKTM/+S
	reM39uU0E0KeHZJ61sUYn0RwLfOncASy7h0Q3A7EFzSiXXabJGvfk8MWAcW5GGL8dd1FZsyL+eJ
	9tv/UctD8Sjdy7FfLoTb8/FJbu+Lr4iEEsZ2Vk0pyjM6M+2aN7pZlEWw/1ADZNcWGAhz1Q3cxPz
	L2zVlhMEKSpC7fBVsYjozT1+oIdbldYOpcxmyw/Fs9fxtvMTPqKZOJvKT205CqlzUmVoTj7zycL
	JwhoobC1b+Qi1ob6AO/emDrIl0wnB6p4GD7+id5JDhbXA6Nlp5Gpjyt6PKjcPGkNRh7MOgr07TZ
	mt+svGX9KYStIopKSE43XId6N3NAgFwoFol6FPj/JGsjGWmpEJJwah3/Nw3UvKF3WXwqWVdeUc1
	WrC8uewhTuMPPEh18ySlWXG1tKz3t4wHTZ1QfZ+6k9
X-Received: by 2002:a05:6a00:3d0c:b0:842:51af:b3af with SMTP id d2e1a72fcca58-84251afbb8fmr4269863b3a.3.1780324251185;
        Mon, 01 Jun 2026 07:30:51 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:9c6f:e28:3da8:7980])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-842498819e3sm4910786b3a.34.2026.06.01.07.30.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jun 2026 07:30:50 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: [PATCH v3 0/3] arm64: dts: rockchip: add Vicharak Axon board support
Date: Mon,  1 Jun 2026 20:00:19 +0530
Message-ID: <20260601143022.153941-1-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_073052_244120_4A244022 
X-CRM114-Status: GOOD (  10.83  )
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

This series adds initial device tree support for the Vicharak Axon
single-board computer, which is based on the Rockchip RK3588 SoC.

The Vicharak Axon is a feature-rich SBC targeting developer and embedded
use cases. It ships with:

  - Rockchip RK3588 (4x Cortex-A76 + 4x Cortex-A55)
  - RK806 PMIC providing all SoC power domains
  - eMMC 5.1 (on-board) and microSD slot
  - Gigabit Ethernet via RGMII (RTL8211F)
  - Dual HDMI 2.1 output and one HDMI 2.0 input (receiver)
  - PCIe 3.0 x4 and two PCIe 2.0 slots
  - SATA 3.0
  - SDIO Wi-Fi
  - USB 2.0 host ports (EHCI/OHCI)
  - NXP PCA9554 I/O expander for status LEDs
  - Haoyu HYM8563 RTC

Changes since v2:
- Split the dt-bindings patch into two separate patches: one for the vendor prefix and one for the board binding as requested by Heiko.
- Removed invalid `enable-gpios` property from HDMI nodes (ignored by dw-hdmi-qp binding)
- Fixed copy-paste error in `rk806_dvs1_null` pinctrl node (gpio_pwrctrl2 -> gpio_pwrctrl1)

Changes since v1:
- Renamed the dts file from rk3588-axon.dts to rk3588-vicharak-axon.dts
- Added binding patches for the board (rockchip.yaml) and vendor (vendor-prefixes.yaml)
- Renamed regulator nodes to the standard `regulator-name` pattern
- Removed `mem-supply` properties and phandles from cpu nodes (vendor-kernel specific)
- Fixed pcie20_avdd0v85 vin-supply mismatch
- Removed obsolete `regulator-compatible` property
- Removed invalid `regulator-init-microvolt` property
- Removed dangling `enable-active-high` properties from fixed regulators
- Cleaned up unneeded i2c3 / es8388 nodes
- Added missing `vpcie3v3-supply` properties to PCIe nodes

Hrushiraj Gandhi (3):
  dt-bindings: vendor-prefixes: add vicharak
  dt-bindings: arm: rockchip: add Vicharak Axon board
  arm64: dts: rockchip: add Vicharak Axon board

 .../devicetree/bindings/arm/rockchip.yaml     |    5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |    2 +
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../dts/rockchip/rk3588-vicharak-axon.dts     | 1036 +++++++++++++++++
 4 files changed, 1044 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-vicharak-axon.dts

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

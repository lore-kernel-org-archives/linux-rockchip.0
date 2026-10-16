Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86B9BCCA490
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2026 08:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z1Fvu2x/dBKzXjVY2xrzKeaWZ94IOM4W+uaVHowzSD8=; b=mRyYrVTLi1Nf7A
	wOXX3JaKQw6c4V8sk90xVV48iq3n1MnGX6a4pQUxy9y3mKpyLXLaVCJRiFHemeXdR6JOEzALggFJA
	yGd8xyuV+GsNdZfz3FA5GFjMYhMjFLM+uHNHdToUaPbV8jDBhrBrIkgujaW3CJ11FVeAnf+UopsBK
	1GtUwQGGY5AP1h57DwJHkJkhzjwcvEf/MRQg5POkstGbkpqQNlX+pDu5bfURNUamPNVBIKhAm25p7
	6LUpeO811tGddzMYa5CTKjEUJza9srVZeFkn9FhN/vcerqiygB62rcOjvXfatzWRbegJu8rHwHwus
	RE0vYFMf2HEEHh81aQqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHdkF-00000002O5t-0HZm;
	Fri, 16 Oct 2026 08:56:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHdkD-00000002O4w-1O68
	for linux-rockchip@bombadil.infradead.org;
	Fri, 16 Oct 2026 08:56:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=fdiQVOV9kGikp3BjxuFAHEh6NTE83RldKRLkuMUOTzA=; b=M9yqI82S5Lc3ESYuBy5iJ6QpgX
	rl1qR3EPTDsd36Ce16F1g694M0Jwfg6EBp79VT0EcRlJ28GMkRIIK3n2MYBUTGmt46gEbdjJmvqlb
	3ymkIIoK19cTN5hKYlhTdTcbRbfVrU2S0+NPeVEOnMDx9ir3+81lXzdyADJoZ+w5YgBJXngfVE2t3
	Q+6HQUqe2n4onPK/C5ZGtw0yZZzo8CY1JGzrzESKgnp0rQ8V3ClFDtbvxsj87t/rPvhzcThbcBaPT
	RwjkkwOVIG/dg7rZMbqFRpCVX6cvImYU3gJ493k2zwjAXcqA7D7pueX6ksgnlY+biV/11BcbBgZST
	kb0ja4Ug==;
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHdk9-00000001HrI-3nEq
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Oct 2026 08:56:52 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-2e853a56bb4so3526185ad.0
        for <linux-rockchip@lists.infradead.org>; Fri, 16 Oct 2026 01:56:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792141007; x=1792745807; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=fdiQVOV9kGikp3BjxuFAHEh6NTE83RldKRLkuMUOTzA=;
        b=ChC5UJ7vay0fOGL27VGpS3quZ6ZSc4E0oCmy4hxhdkf6ERsqwR6bQdufKtZsXk9l/c
         0tp54skZdFKg9JaRrKNW6dBj5c1Lgj5S6qpYRTiy4JBWJNc6C9E43MTvIJvCpJ9hPHGJ
         j3hN1wuYWyDJ5yzliWBQRV4rH585xt4dG2aFk633bmq0Ra4p7aoHJtNJni4Rxn4KSPDe
         WVcn2CyvMEF1hYnSecLuC1f2pkTRKPrhyd+Y8L2N48VpcHXSnD3K1Aa9OfM6N3AJ1Uiq
         SR/pLcD5qPLG435Vlr5J0nHUD1SH6kw/p+6KB2v8hVWNE+sZr5q6czb4sEF05TEIR7Va
         SFig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792141007; x=1792745807;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=fdiQVOV9kGikp3BjxuFAHEh6NTE83RldKRLkuMUOTzA=;
        b=whndQLTx1BRiJsGzSqxCmLphCKIno4B4LCFMSOi8S8BvmlVnpWqqqItp4p7qhrQFng
         mz2gQZu0HGDWf80te+q3NvDol5MwfD9r4LlCNW8QW27j6XYkwj6M+8HuxCCxanh8yVG8
         ilponuPHJLyqfzUxrY/CszBcH2ac3nquizyJlwciaCpsUNnp4+ctXCZpM/OZJIRFpO7p
         sOPI9OiQKBhzK7AQo3NAbVM0hRt7HDIhL9/aRmLq39FCpKTPWH6k0pjFuAl2c4/ZFi7s
         3P5B4meVXUrOYAbPYYvvIMsdR//Us21Evy9G7YT1ikTStv+sRbOxxEx4q0Q6pqVPg1Wm
         wmgg==
X-Forwarded-Encrypted: i=1; AKwUvBz1B27NurcKunDUYemH0UuQwvvVI7oWduiUfhS+fpv2OF/c6wrFrZ3KujptmmDAmPgkafJDAMDbnN16paTXlw==@lists.infradead.org
X-Gm-Message-State: AFq9FYL2uopYUzteKQotG7Hhqg97p3KID9/C7hDZbObUNaFHWJIE+Xmi
	sbX0NCE0oyQBOuTBN27ZlUGZM25LwKrg3xhtyL0eWtpsoph98xNQyeV6
X-Gm-Gg: AYBFou16Grk6MhFBY651kl5+rgZPp/soISIOSJYkQ3GK4NwYQhioC/0wFOxCJEfCSsr
	gEe5a+hkqwkd1etP2IzSM+BuYhNo4xi6+7M9lQPeHtjzxLEjeN3dB7YvrTV5jibPbLP8frbIhJC
	CEo7G6LraurcqGIZvTDL+CKvoFbJ4o3wgSucK056dfiBERnp/2sWf+in4TZDm0PatMWETXG8BbI
	d5CYGa38u7LSMQ/822MclhHIEdRAfCS+LpZx1AKYIyWpIWNIwUmAxqFP1yT3nNe61Zb9FLfQggy
	kfU8IAshHx2efz557L2qYVTk84B5ozIRVT3JOtETXUr+F/oq4pX3fr5ITKjvpjcRIMn4WpSsSo+
	JATQJin1SdkA37nzBHbkKZq9NVmb7Gz31XcXpbHtrs1lrWiypXIipYQLfBNOcZyjv89P/+oqJHV
	fbGWR+hUQ5RZtj/0NtrDVf2gn2anmkQ6mtL/sFsFuNlzKqmC6fCKXoXyja0EmzRinhx56wafFRQ
	WSLoYTiBR3AdusB0UjXG9G2pmECBg==
X-Received: by 2002:a17:903:2f92:b0:2df:8ab7:fe3a with SMTP id d9443c01a7336-2e842abf30fmr328222235ad.4.1792141006559;
        Fri, 16 Oct 2026 01:56:46 -0700 (PDT)
Received: from [127.0.1.1] (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e97e882a20sm6971025ad.62.2026.10.16.01.56.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 01:56:45 -0700 (PDT)
From: Jason Yang <jason98166@gmail.com>
Subject: [PATCH v5 0/8] phy: rockchip-samsung-dcphy: Add the MIPI D-PHY
 receiver
Date: Fri, 16 Oct 2026 16:56:34 +0800
Message-Id: <20261016-dcphy-rx-v1-v5-0-e63b49eabe2d@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAMPm0WoC/23OSwrDIBSF4a0Ux7Xo1TzsqPsoHchVE6F5oCUkh
 Oy9JpMmoeDkXPh+nEm0wdtI7peZBDv46Ls2jex6IVjrtrLUm7QJMMhZAZwa7OuJhpEOnCrtssI
 Ja5xRJIk+WOfHrfZ8pV37+OnCtMUHvl7/d9JjVDosBTJEjepRNdq/b9g1ZO0MsLf50UKy6BSik
 Fpy0Gcrfrbk7GhFshoMZAhKG4dnK3f2/GeZrOOFKnIhQQizt8uyfAFK5X41WgEAAA==
X-Change-ID: 20260721-dcphy-rx-v1-9af57f3edfd9
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Guochun Huang <hero.huang@rock-chips.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Michael Riesch <michael.riesch@collabora.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Jason Yang <jason98166@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792141002; l=5449;
 i=jason98166@gmail.com; s=20260721; h=from:subject:message-id;
 bh=grCjE6G8S4b3gnfZy+Q41OvGbpz8ziNIO6eKpGz6Ia8=;
 b=j3Hwnfcg9m7EnEJ19LuhgpVq8+zNnvVw4z6NbYtbJo0vjsl/Hy2288Wbn0t6aqMsriZIhX+rj
 C/X7Nqx2Wq8BkaPRwSJancYIlQWfIxzhi086JSEKmpcTFwbEApFXsul
X-Developer-Key: i=jason98166@gmail.com; a=ed25519;
 pk=xQmD001Q/ooHl39PxyQtusbUQmgbOsSfpFryRVWZ/k4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_095650_410207_45E927C6 
X-CRM114-Status: GOOD (  18.95  )
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

The Samsung MIPI D-/C-PHY block on RK3588 and RK3576 has a transmitter
for DSI and a receiver for CSI-2. Both can be used at the same time.

Mainline only supports the transmitter and models the block as a single
struct phy. The PHY core refcounts power_on() per struct phy, so the
receiver cannot be powered independently of it, and the single
devicetree cell selects the mode, so the provider cannot tell which of
the two a consumer refers to.

This series registers a struct phy for each of them, adds a second
devicetree cell with generic PHY_DIRECTION_TX and PHY_DIRECTION_RX
constants so that a consumer can select one of them, and implements the
D-PHY receiver. A single cell keeps referring to the transmitter, so
existing device trees are unaffected.

  1/8  adds PHY_DIRECTION_TX and PHY_DIRECTION_RX to the generic header
  2/8  allows a second cell in the rockchip,rk3588-mipi-dcphy binding
       to select the transmitter or the receiver
  3/8  moves the block-level setup to runtime resume
  4/8  names the transmitter helpers and ops (no functional change)
  5/8  registers the receiver's struct phy and takes the second cell
       in of_xlate()
  6/8  implements the D-PHY receiver bring-up
  7/8  switches the RK3588 DC-PHYs to two cells and lets DSI select
       the transmitter
  8/8  adds the MIPI CSI-2 receiver nodes on RK3588 and connects them
       to VICAP

Testing
=======

Tested on an RK3588 board, with a DSI panel and an IMX219 camera on
DCPHY0, and an LVDS panel behind a DSI-to-LVDS bridge on DCPHY1.

  - The transmitter and the receiver run at the same time: with 7/8
    and 8/8, both panels light from boot, and the camera stream is
    shown live on the DCPHY0 panel.
  - The two can be powered independently: the DCPHY0 panel is turned
    off and back on during a 1200-frame capture, and the capture
    completes.
  - The receiver does not need the transmitter: with dsi0 disabled,
    the camera alone brings the block up and streams, which relies
    on 3/8 moving the block-level setup to runtime resume.
  - Existing device trees keep working: with a single PHY_TYPE_DPHY
    cell in dsi0 as before 7/8, the DCPHY0 panel lights.

No WARNING, underflow, "Internal error" or Oops in dmesg in any of
these.

Not covered: the receiver of DCPHY1, the 3- and 4-lane receiver
paths, and RK3576.

The DSI panels only light with the U-Boot SPLL fix [1] applied:
without it the bootloader leaves the SPLL at its 351 MHz bootrom
default while the devicetree describes it as a 702 MHz fixed clock,
halving the rate of both DSI hosts. The receiver path is unaffected;
the camera captures exercise it independently.

[1] https://lore.kernel.org/u-boot/20260804002643.2308515-3-jonas@kwiboo.se/

---
Changes in v5:
- Rebase onto phy/next. The runtime PM fix this series applied on top
  of is now commit 261e84f9278f ("phy: rockchip-samsung-dcphy: Enable
  runtime PM at PHY core level"), so it is no longer carried here.
- 1/8: use PHY_DIRECTION_TX and PHY_DIRECTION_RX instead of
  PHY_TYPE_DSI and PHY_TYPE_CSI. (Michael)
- 2/8: use PHY_DIRECTION_* for the second cell and rewrite the
  description.
- Drop v4's 5/7: it has no benefit over the switch, and it moved a
  DC-PHY shared function into a D-PHY helper. (Michael)
- 5/8: rename protocol to direction in of_xlate() to follow 1/8.
- 6/8: use a switch in the receiver's power_on() and power_off(), as
  the transmitter does.
- New patches 7/8 and 8/8: switch the RK3588 DC-PHYs to two cells and
  add the MIPI CSI-2 receiver nodes.
- Link to v4: https://lore.kernel.org/r/20260821-dcphy-rx-v1-v4-0-f1797634233d@gmail.com

Changes in v4:
- Put the second cell back: the first cell selects the mode, the
  second the transmitter or the receiver.
- Drop the private use count and mutex; the runtime PM usage count
  does the same job.
- New patch 3/7: move the block-level setup to runtime resume.
- Split v3's 3/5 into 4/7 and 5/7.
- of_xlate() rejects a mix of D-PHY and C-PHY consumers.
- The runtime PM probe-order fix is now a separate patch [1] that this
  series applies on top of.
- Bryan O'Donoghue's Reviewed-by from v2 is not carried over; that
  patch was rewritten.
- Link to v3: https://lore.kernel.org/r/20260810-dcphy-rx-v1-v3-0-a2d25c29adfc@gmail.com

---
Jason Yang (8):
      dt-bindings: phy: Add PHY_DIRECTION_TX/RX definitions
      dt-bindings: phy: rockchip,rk3588-mipi-dcphy: Add a cell to select TX or RX
      phy: rockchip-samsung-dcphy: Move block-level setup to runtime resume
      phy: rockchip-samsung-dcphy: Name the transmitter helpers and ops
      phy: rockchip-samsung-dcphy: Add a second PHY for the receiver
      phy: rockchip-samsung-dcphy: Add MIPI D-PHY receiver support
      arm64: dts: rockchip: use two phy cells for the rk3588 mipi dcphys
      arm64: dts: rockchip: add mipi csi-2 receiver nodes for the dcphys on rk3588

 .../bindings/phy/rockchip,rk3588-mipi-dcphy.yaml   |  20 +-
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi      |  76 ++-
 drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c  | 529 +++++++++++++++++++--
 include/dt-bindings/phy/phy.h                      |   3 +
 4 files changed, 580 insertions(+), 48 deletions(-)
---
base-commit: 8f56fdf3d8cb9f1dbdc93bf9ac816698aa6f70b7
change-id: 20260721-dcphy-rx-v1-9af57f3edfd9

Best regards,
--  
Jason Yang <jason98166@gmail.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

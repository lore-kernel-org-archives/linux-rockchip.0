Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E632606A32A
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Nov 2026 07:47:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jb1ujQLQ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=ayaBI5rk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=QBW6fWkbnlKk1xDTdsnMOoKal5+i6YsIxzfeVX7AQQg=; b=jb1ujQLQQw2el1x8PQimSgKkZ0
	Qna2yWfhvenGYjcr61OqWi6ifbTfKs5q1sQkRMM70r2UHP4QoP//e82V87t/I7nmB0yjWUifOp2aE
	FHTD3Z94Lr2X/vxWW7hjqrXLkE8bD1s+DOYcHAPZWn81BG+k1geZ/BLQcvRD7b59BZNTqJDA9dalb
	b15zUM2HMSXfXFBlvSlDYBSwNNQ9M7R8m090ThdwwRnBe6TgTuh3fdm1d9z5NdSkfT4tQfUgFCvOu
	6f9V/CTJjOPDWmAI6jiIUSrjq1kaC7wFEg6QaLMZDmW1vjiHCcmr3Fr0w6GUbEFGrqjTgQ21L0C9H
	XMcChN4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWqgT-0000000FBUB-2Y99;
	Fri, 27 Nov 2026 07:47:53 +0000
Received: from mail-dy1-x1333.google.com ([2607:f8b0:4864:20::1333])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWqgQ-0000000FBSb-0te4
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Nov 2026 07:47:52 +0000
Received: by mail-dy1-x1333.google.com with SMTP id 5a478bee46e88-386a2dc17adso688323eec.0
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Nov 2026 23:47:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795765669; x=1796370469; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=L2yQzhsCjABe27EGiYNkqwaqKvzumisbkGpfV5q4dYI=;
        b=ayaBI5rkljXr6FeULDC9rIMEeBwRO1KrgwHTinumjgYTumQq12CyGnMQ0isBGND/kW
         L+G3OsckPC7qeiuTAb/7y5+paIH6yYZ7qNxquxcmF/QLf4G5E5FVcOavLfQDMkTKRKD3
         KVK/kszuMZqOXjmtAC2lGtKi0EQfTFspXXIPZdDXmyrwAEw4Bw4BSC0bvThspMoWc/1q
         9XW1CRf6/O0DsI/gAbE2/7B7yLLj+ZdY+7JKWAjmcbqg0Qa5/UW55X6MoNfdHbDIaaky
         mTyew6A0/H2IMn3KFN0P119whIchsMDJi69gyDwCLfKxe1yxYJAMoZ1H821GBMRYwm1C
         XpyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795765669; x=1796370469;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=L2yQzhsCjABe27EGiYNkqwaqKvzumisbkGpfV5q4dYI=;
        b=wA9RKsXWbTZHFCMzaFBnQqmfOpCcwA4KswTfCc9lfQ+6H0bArcALCPqRdWkFuk/lRF
         w3efr05TCUc8Ha5B1C4P501AP/CmbbLO8oQ+7ROgRuY1tM8jVj8xyjYRCIhQsbgynaBr
         qFjG50hysgDJetO3Vy76CPUK/MDm7I0GAoqHPcEp3SGnDGszuGvCEsY4UoBhCxIm9bKm
         svdnWq2RJdExL4oTD2meq8AtRodMAJJPdExOFan2IjwNSuw9wQXd7bkvRmb9CCYJrF0q
         Oe3Uw/qP/YmBNBRvJHz6ld5mjloBBfZFuOUvIgkorz0zPGy8ewtwAMNylDYtcnkrYiQU
         AD9w==
X-Forwarded-Encrypted: i=1; AL+hErHYarZSs1PcJdaTPGa1cRoQ7i3hFtEydrUbikDLVV+4nsblJzvG6Yj7VEzRM5uUoTWLSmKKYhXHmiBDqp8V0w==@lists.infradead.org
X-Gm-Message-State: APuU4Z8M1dlbdQYndnB/uWaRRcSA0BW0sOCy6eHTk3Nu888BCjdy8zGE
	pKCLjhbt16Gyp/S8IiWQrKWdTEGQc3YmkeQjIUJfYWBIbhIXJ1LaLmgd
X-Gm-Gg: AZFdTZe561eYNXDGT6fJ/TUekctR75cxnfnWhEf6+R38fTI5jqU9T6RiP1DanVlJlQg
	T5GkeAJ9UypahpI7Hqa8X/4DwYX93WwL/izUi5Y9rI3oMrVFIT6ndC0fiIMOOyqZ4Bv2xcVjQM1
	v4QpPLB1LtfSPKXPFW6sJTlcbn0sAZrG+7JuEvYvfl4QSkkk3IJ4jrVgAVH1O2fG0YwY+BGXKOB
	McaxE2E+g8RdQzQaa1IYJP6VbXfUWNjb/Jtn5Rz/YHlaVP14RVxIx85FqKubKpRw3IMCM8kKm4C
	nJYaf6DThYluqqhFC2FoYjTYXGriLRwIbOx3aTzmLRhbq9QFOhqgtoOXdvYRmVUr904fGXyf64s
	i/LACBnB6emDdgsuCcgsFyd7YvdenR5vF8oDttmCGJQKynsRKDEwFMq8jgkAb52cn3l+f47lKur
	Svg310LKvX0RM+EHFOlV29av6oYZ31TOckup1OoDABr403cAJUsXdD07h0EmxMYi2JSE26w1ufA
	D7uamgWllrBzSKVv6q+DSPYha0imn1ZFPj7+mzP42MT0vUaqUaMC/7HQP4qCmJKV0AtUcf9G678
	b3coq1L4+w0fYxpbex8QlLLEAutyqZvpSdt077oJyrnsvwoBiVlVA6XhGKxAt/xCxuVdfcSzSke
	lXLbSJhHVldepOQ/3Iw5/
X-Received: by 2002:a05:7300:1c24:b0:384:a0cb:a6d0 with SMTP id 5a478bee46e88-3856de58f7fmr38383587eec.1.1795765668624;
        Thu, 26 Nov 2026 23:47:48 -0800 (PST)
Received: from [127.0.1.1] (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-385672c6f31sm68098252eec.15.2026.11.26.23.47.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Nov 2026 23:47:47 -0800 (PST)
From: Jason Yang <jason98166@gmail.com>
Subject: [PATCH v8 0/9] phy: rockchip-samsung-dcphy: Add the MIPI D-PHY
 receiver
Date: Fri, 27 Nov 2026 15:47:36 +0800
Message-Id: <20261127-dcphy-rx-v1-v8-0-9ddfef99221d@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAJg1CWsC/23PTW7DIBAF4KtErEsFA+Ynq96j6mI8QIzUxBGur
 ESR716SRWOTSmzeSN/T48amWHKc2H53YyXOecrjqQb3tmM04OkQeQ41MxBghAXJA52HKy8XPkv
 uMXU2qRhS8KyKc4kpXx5tn181D3n6Gcv1UT7L+/X/nvoE14mcIkGE5D8OR8zf7zQe2b1nhrU1W
 wvVUvJESqOWgK1VT+uk2FpVLUKAjsBjSNRavbLtZl1tktZbozQoFVrb/VkpZLO5qzYa1WsfsY/
 wYs3TynazqTYYJ3sE0Svz8l+7tm5rbbUuRIkBSaHVa7ssyy/yl0kWDgIAAA==
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
 Quentin Schulz <quentin.schulz@cherry.de>, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Jason Yang <jason98166@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Sashiko <sashiko-bot@kernel.org>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795765664; l=9834;
 i=jason98166@gmail.com; s=20260721; h=from:subject:message-id;
 bh=hRrQ9LrPoiuN36dbyaQMQqSC0C4Y4onFyWoU1y+bJKU=;
 b=YhxMFznnH1zyeyBoWDQ//nDjDh/s+RZwsJmg+9lYfS5a99HgtuEZ3yaU8h5fI0mSiz2C5iKpq
 26N6P8vaI/QDp7CXtVEKwvW5w/OsYeIDJx3W1IceSLRDfq3VYTY56B+
X-Developer-Key: i=jason98166@gmail.com; a=ed25519;
 pk=xQmD001Q/ooHl39PxyQtusbUQmgbOsSfpFryRVWZ/k4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_234750_286558_37E3E3FA 
X-CRM114-Status: GOOD (  26.78  )
X-Spam-Score: -1.8 (-)
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

The Samsung MIPI D-/C-PHY block on RK3588 and RK3576 has a transmitter
for DSI and a receiver for CSI-2. Both can be used at the same time.

Mainline only supports the transmitter and models the block as a single
struct phy. The PHY core refcounts power_on() per struct phy, so the
receiver cannot be powered independently of it, and the single
devicetree cell selects the mode, so the provider cannot tell which of
the two a consumer refers to.

This series registers a struct phy for the PHY transmitter and one for
the PHY receiver, and implements the D-PHY receiver. As suggested in
the v5 review, the single cell of the binding now selects the PHY
transmitter or the PHY receiver. The cell values are the new generic
PHY_DIRECTION_TX and PHY_DIRECTION_RX constants. The PHY transmitter
and the PHY receiver cannot run in different modes. A phy-type property
of the PHY node therefore sets the mode of the whole block, D-PHY by
default.

  1/9  adds PHY_DIRECTION_TX and PHY_DIRECTION_RX to the generic header
  2/9  changes the single cell of the rockchip,rk3588-mipi-dcphy binding
       to select PHY_DIRECTION_TX or PHY_DIRECTION_RX, adds phy-type for
       the mode of the whole block, and keeps PHY_TYPE_DPHY and
       PHY_TYPE_CPHY as deprecated values
  3/9  unwinds the PHY transmitter power-on when the PLL fails to lock
  4/9  always writes the rate-dependent registers of the PHY transmitter
  5/9  moves the block-level setup (APB reset, BIAS) to runtime resume
  6/9  names the transmitter helpers and ops (no functional change)
  7/9  takes the PHY mode from phy-type and the PHY from the cell, and
       keeps the deprecated cell values on the PHY transmitter
  8/9  registers the receiver's struct phy, takes PHY_DIRECTION_RX in
       of_xlate() and implements the D-PHY receiver bring-up
  9/9  adds the MIPI CSI-2 receiver nodes on RK3588 and connects them
       to VICAP

9/9 has to wait for 1/9 to 8/9. It uses PHY_DIRECTION_RX from 1/9,
and the csi nodes need a PHY driver with receiver support.

Compatibility
=============

In 2/9 and 7/9, the old cell values PHY_TYPE_DPHY and PHY_TYPE_CPHY
remain valid as deprecated values. They select the PHY transmitter, so
existing DTs keep working on a newer kernel.

New DTs following 1/9 and 2/9 are an ABI break on an older kernel. The
older kernel ignores phy-type and takes any cell value as the mode of
the block. A DSI node with PHY_DIRECTION_TX therefore gets no display,
and a CSI-2 node with PHY_DIRECTION_RX gets no camera.

In 9/9, the dsi nodes keep PHY_TYPE_DPHY, which older and newer kernels
both accept. With the csi nodes disabled, the display therefore keeps
working on either kernel.

The csi nodes in 9/9 have no older value to keep and have to use
PHY_DIRECTION_RX. Enabling csi0 or csi1 therefore needs a PHY driver
with receiver support. Since v7.0, a CSI-2 host driver probes the csi
nodes. An older PHY driver then gives the CSI-2 host the PHY transmitter
that drives the display. The camera gets no frames, and the display can
stop working as well.

Testing
=======

Tested on an RK3588 board, with a DSI panel and an IMX219 camera on
DCPHY0, and an LVDS panel behind a DSI-to-LVDS bridge on DCPHY1.

  - The PHY transmitter and the PHY receiver run at the same time: with
    8/9 and 9/9, both panels light from boot, and the camera stream is
    shown live on the DCPHY0 panel.
  - The two can be powered independently: the DCPHY0 panel is turned
    off and back on during a 1200-frame capture, and the capture
    completes.
  - The PHY receiver does not need the PHY transmitter: with dsi0
    disabled, the camera alone brings the block up and streams, which
    relies on 5/9 moving the block-level setup to runtime resume.
  - Existing device trees keep working: with a single PHY_TYPE_DPHY
    cell in dsi0 as before this series, the DCPHY0 panel lights.
  - The DT of 9/9 keeps the display working on an older kernel: with
    the csi nodes disabled and without this series, both panels light.
  - The new cell works for the PHY transmitter: with PHY_DIRECTION_TX
    in dsi0, with and without phy-type = <PHY_TYPE_DPHY>, the DCPHY0
    panel lights.

No WARNING, underflow, "Internal error" or Oops in dmesg in any of
these.

Not covered: the receiver of DCPHY1 (tested by Quentin Schulz on v6),
the 3- and 4-lane receiver paths, and RK3576. 3/9 and 4/9 fix states
found by reading the code. Those states were not reproduced on
hardware.

This series was prepared with Claude through Claude Code:

  - It checked the driver against the vendor driver and the TRM.
  - It drafted the code. I reviewed and reworked it before committing it
    to my tree.
  - It checked the wording and spelling of the commit messages and this
    cover letter.
  - After I ran the basic pipeline tests, it generated more test cases
    and ran them on my board.

---
Changes in v8:
- 1/9 and 2/9: drop the Tested-by tag. (Krzysztof)
- Link to v7: https://patch.msgid.link/20261118-dcphy-rx-v1-v7-0-8de1adac3a74@gmail.com

Changes in v7:
- Collect the Reviewed-by and Tested-by tags. Keep them on 6/9 and 8/9,
  as the changes there only rename and move fields as Michael suggested.
- 6/9: also give the PLL helpers the tx_ prefix, and move the master
  reset and the PLL state, which only the transmitter uses, into
  struct samsung_mipi_phy. (Michael)
- 8/9: put the receiver-only and the transmitter-only fields of struct
  samsung_mipi_phy in a union, and move the slave reset there as well.
  (Michael)
- 8/9: use a single space before = in the receiver's phy_ops. (Michael)
- 9/9: restrict the commit message to what the patch does and how it
  affects an older kernel. (Michael)
- Thanks to Quentin Schulz for testing v6 and for pointing out that the
  U-Boot SPLL fix is merged.
- Test with mainline U-Boot v2027.01-rc2 and drop the note about the
  SPLL fix.
- Link to v6: https://patch.msgid.link/20261110-dcphy-rx-v1-v6-0-d681ba20b36a@gmail.com

Changes in v6:
- Rebase onto phy/next (v7.4-rc1).
- Collect the Reviewed-by tags on 1/9 and 6/9.
- 2/9: move the mode from the first cell to a phy-type property.
  (Michael, Heiko, Rob)
- New 3/9: power_on relied on the APB reset, which 5/9 moves to
  runtime resume, to clean up after a PLL lock failure. (Sashiko)
- New 4/9: power_on also relied on that reset to clear the
  rate-dependent registers, found while checking power_on for 3/9.
- 5/9: keep BIAS_CON4 with the other BIAS writes. (Michael)
- New 7/9: support the new phy-type and direction binding of 2/9.
- 8/9: merge v5's 5/8 and 6/8. (Michael)
- 8/9: trim the comments and name the magic numbers.
- Drop v5's 7/8: the dsi nodes keep PHY_TYPE_DPHY. (Michael, Krzysztof)
- 9/9: use a single PHY_DIRECTION_RX cell in the csi nodes.
- Describe the ABI break of new DTs in 2/9, 9/9 and the cover letter.
  (Rob, Krzysztof)
- Drop the Assisted-by tags.
- Link to v5: https://patch.msgid.link/20261016-dcphy-rx-v1-v5-0-e63b49eabe2d@gmail.com

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
Jason Yang (9):
      dt-bindings: phy: Add PHY_DIRECTION_TX/RX definitions
      dt-bindings: phy: rockchip,rk3588-mipi-dcphy: Select TX or RX, add phy-type
      phy: rockchip-samsung-dcphy: Unwind power-on on PLL lock failure
      phy: rockchip-samsung-dcphy: Always write the rate-dependent registers
      phy: rockchip-samsung-dcphy: Move block-level setup to runtime resume
      phy: rockchip-samsung-dcphy: Name the transmitter helpers and ops
      phy: rockchip-samsung-dcphy: Support the new phy-type and direction binding
      phy: rockchip-samsung-dcphy: Add MIPI D-PHY receiver support
      arm64: dts: rockchip: add the dcphy mipi csi-2 receiver nodes to rk3588

 .../bindings/phy/rockchip,rk3588-mipi-dcphy.yaml   |  18 +-
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi      |  68 +++
 drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c  | 659 +++++++++++++++++----
 include/dt-bindings/phy/phy.h                      |   3 +
 4 files changed, 634 insertions(+), 114 deletions(-)
---
base-commit: 6628e7d4c6b25c8d18f1345e3a20d21829aae7e4
change-id: 20260721-dcphy-rx-v1-9af57f3edfd9

Best regards,
--  
Jason Yang <jason98166@gmail.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

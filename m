Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFC2EC982D2
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Sep 2026 06:07:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LV3oas9VUanYQwgYRpHwRdbvJgNecp3nkw/Qe8HIQK4=; b=g5cHTtOvgZvLTv
	PrEnDCUNJo3DN3aQywRn+mxl/SctPPicGqYJNGJB7GdH/30soZZbj4WXf2yB6Rhs7ZsI+o8oFvbqb
	Ti/7bjTmOsiKzBg4AlVJ0j227FZIieXrieLlWH6Zl4db3q+A0jpuw/8KFbtC6OJc23JI/uzvINPv4
	wAGQ7tO2XNXEklQ4+G/hitZUAqqufBgL0ZfNVbr4E97AK3Xv0lrKCcypagyloFomyDuZuRCPrqTur
	HHAYKzM0rMGuovMSJJPHPlM7g007MK20V27LLtvuwOf3zertm/pQdNQ1eaers8/IBMfdnPpl6hNDq
	pymbOFJ1YLLVLxKJ3pwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Rkt-0000000DX8e-2CmU;
	Fri, 18 Sep 2026 06:07:27 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Rkd-0000000DX19-3RsX;
	Fri, 18 Sep 2026 06:07:13 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id A2118200210;
	Fri, 18 Sep 2026 08:07:05 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v4 0/4] media: rockchip: Add JPEG decoder driver
Date: Fri, 18 Sep 2026 08:07:00 +0200
Message-Id: <20260918-rockchip-jpegdec-v4-0-0dd97df47abb@pengutronix.de>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAATVrGoC/23OwQ6CMAyA4VchOzvTdWwOT76H8YBbgWkCZCDBE
 N7dQWI0gePfpF87sY6Cp46dk4kFGnznmzpGekiYrfK6JO5dbIaAGgwKHhr7tJVv+aOl0pHl4LQ
 xYAuttGVxrQ1U+HElr7fYle/6JrzXC4NYpl8s3WKD4MANCGEQ74UCuLRUl68+NLUfj47YIg74r
 6gdBRdF54VRWS5R611F/pRM7P0ioyKVkVaetAOHG2We5w+FNBx5QQEAAA==
X-Change-ID: 20260821-rockchip-jpegdec-0d6880cf656c
To: Lucas Sinn <lucas.sinn@wolfvision.net>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789711625; l=3149;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=bbsVHa9zCLHZMNMACh5lzpuPIke0niU4PJob2wVHPVE=;
 b=qoVboP9nYX8ejrVSVDE7yA2yLI2/xT1fgEsAoJACRtDT6n5FvHwRfNn2edQ0GGm1g6gTuICXM
 dwFQSkjKZ4pAqFVYYF3CXW8OUzgAPTq9RwKYI9RClzffYueVMZThN66
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_230712_036753_637702DA 
X-CRM114-Status: GOOD (  15.48  )
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

This series adds support for the Rockchip JPEG decoder hardware. The JPEG decoder
is an in-house IP which is integrated into various Rockchip SoCs. The driver is
tested on a RK3588 board but reportedly works on RK3568 as well.

An earlier version of this driver was posted as part of the Hantro
driver [1]. That turned out to be the wrong abstraction, so it was split
up into a series with the Hantro fixes [2] and this series with a
standalone driver, which started over at v1.

[1] https://lore.kernel.org/r/20260819-rk3588-jpegdec-v1-0-33d74cdf369c@pengutronix.de
[2] https://lore.kernel.org/r/20260824-rk3588-jpegdec-v1-0-180a30a2852d@pengutronix.de

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Changes in v4:
- Set and read the source change flags under fmt_lock
- Check the runtime PM state in the interrupt handler
- Use dma-buf CPU access around the grayscale chroma fill
- Update the review notes in the driver patch
- Link to v3: https://lore.kernel.org/r/20260914-rockchip-jpegdec-v3-0-3583c376d0d2@pengutronix.de

Changes in v3:
- Rename binding to rockchip,rk3568-jpegd.yaml to match the compatible
- Link the earlier Hantro based series in the cover letter
- Enable clocks from the runtime PM callbacks, use pm_ptr()
- Protect capture format and crop with a mutex
- Clear bytesused on capture buffers returned without a picture
- Revert padding the capture buffer to the MCU width, it broke 4:1:1
- Add notes on review questions to the driver patch
- Link to v2: https://lore.kernel.org/r/20260825-rockchip-jpegdec-v2-0-86af859a3266@pengutronix.de

Changes in v2:
- rename clocks from aclk/hclk to axi/ahb
- Add missing Signed-off-by
- Fix suspend/resume path
- Pad the capture buffer to the mode's MCU width, not to a macroblock
- Reject a frame header picture size outside the supported range
- Set the capture payload at decode time, not at queue time
- Trim comments in the driver
- Link to v1: https://lore.kernel.org/r/20260824-rockchip-jpegdec-v1-0-8011822bf500@pengutronix.de

---
Sascha Hauer (4):
      media: dt-bindings: Add Rockchip JPEG decoder
      media: rockchip: Add JPEG decoder driver
      arm64: dts: rockchip: rk3588: Add JPEG decoder node
      arm64: dts: rockchip: rk356x: Add JPEG decoder node

 .../bindings/media/rockchip,rk3568-jpegd.yaml      |   92 +
 MAINTAINERS                                        |    9 +
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi      |   22 +
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi      |   24 +
 drivers/media/platform/rockchip/Kconfig            |    1 +
 drivers/media/platform/rockchip/Makefile           |    1 +
 drivers/media/platform/rockchip/rkjpegd/Kconfig    |   15 +
 drivers/media/platform/rockchip/rkjpegd/Makefile   |    3 +
 .../rockchip/rkjpegd/rkjpegd-vdpu720-regs.h        |  230 ++
 drivers/media/platform/rockchip/rkjpegd/rkjpegd.c  | 2385 ++++++++++++++++++++
 10 files changed, 2782 insertions(+)
---
base-commit: db2ddb87143519e20a95aa36c60b36107b736a58
change-id: 20260821-rockchip-jpegdec-0d6880cf656c

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

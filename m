Return-Path: <SRS0=Ct0Y=KW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F735C4707F
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 17:00:31 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4CA1360241
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 17:00:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4CA1360241
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TLZnaQDt/gS4FpVt5pv4Y2ZnmfRM6p0KOTeVHwyVtRE=; b=BIQHDfJYW0/u4J
	3q+U3DtbQzKyK1C/W8gBS56fkqxHkV7Vkg2qh5Cx8Q0al3F4n5vDL6mFvTngGR2UyYE9MeQp9UCD2
	p9fNSaBsHjQNdGlSi0QNJuWetOfk8k1BWIrEQCDf4jHV6CMuadGtSNZrnPZqRp94kLsnA6JanQsx8
	TAOZGOrHPnFOytvh5xKqlXqtRKQjBAuo2Rhonn/JWBOLDHEL+nnbWuJ3lcS9+ZFSSS4uBr1dQFW7D
	IQRQEyOx2G30da16BCMFHhymotkPp1tDsgzMG+0IioRl2/udDY5wcFOxObHRzQA02pdN8rp0zXI4V
	1R5/3ijaNzbJRclCCHcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmJMv-007sTW-PC; Thu, 27 May 2021 17:00:25 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmIC0-007KAH-Ry; Thu, 27 May 2021 15:45:06 +0000
Received: by mail-ej1-x630.google.com with SMTP id e12so852125ejt.3;
 Thu, 27 May 2021 08:45:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UMiOHR1uiQc7x+1YMV+1TXAaL2wJozSwYNysKOYYojw=;
 b=hOQxrOhodHvnR2rNflHrUYZZ6TPJDeV7uT8ifxABB2J1lJJHUDuylUHAm+aMdZ2IaG
 Di8/RvxPf3HJI5mKX0dAAsCM6Ozb9aWy+Cm8SiuriYT0mZ9HXSSkd/+gS83IhNWZdsjS
 KyPXBwJiJnT6hDIpmTYQGd8R9vRpL1yOmWdUPMPBx1QRNZY/NnQiHx/aEYiNO0fEqEn0
 bze6ET3GzRMzfHy5UerQoqnf1INuEarHVTPE5JqdvGKypp9fPCIFfjMtGd4kvxVraNd+
 G8tGI/YPv8jIyquwfCA/I6qXGNaW47Wi8AyFneQ/HkPNatrRhA+5UK06dFJIAZvht5mA
 07CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UMiOHR1uiQc7x+1YMV+1TXAaL2wJozSwYNysKOYYojw=;
 b=IUCpMtZ6hvYijR3YugSNTA2Xh5iZh4HGY+F90tP/wffe36yo1UO3QcW9GzSFukxeSI
 mBWWS/Lsh2byYPoGSCbpocRN5D99SzXFRcJ/NEI88BAx3HC1miA4Ri8ZMf7bX7Irf5tu
 mnzDzQWsVeWPJhZD3HmM3VoCtLKyLoFE0F/nsZ6tTGXDq9Siif83YyTUQ6iwOUeTuwQU
 Mroptub6ryZsiuR1QBgXUGZVef3VAPRknmWNVxMQcsp1q3kQ6/6Z3AJa8KUTL9zjpGlY
 mRGXheWizjloboOm8CHAwiHQHACbPRcYabyQUQ5dax1Q3T/G/iqozKQU/zb8Ynn2z83f
 axlg==
X-Gm-Message-State: AOAM5312ntqNhp4hZpGX/dfnPlkV/I50tKexCH8SA7npk2oIuyexUW/j
 UGLA5TtVJBCwYWJqmj7cetmpEdNhL7Rz
X-Google-Smtp-Source: ABdhPJwHWleKrSYu2vhp8oAd6rpoMECMYvmzR3SmWfWw8iqIfZ4V8Ky3PrKEn080sdYKrqP78jvLvg==
X-Received: by 2002:a17:906:1dd1:: with SMTP id
 v17mr4491098ejh.31.1622130303091; 
 Thu, 27 May 2021 08:45:03 -0700 (PDT)
Received: from localhost.localdomain ([2a02:810b:f40:e00:fefd:4d98:c981:7f97])
 by smtp.googlemail.com with ESMTPSA id
 u6sm1178826ejr.55.2021.05.27.08.45.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 08:45:02 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Cc: Alex Bee <knaerzche@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 00/12] Add support for older Rockchip SoCs to V4L2 hantro
 and rkvdec drivers
Date: Thu, 27 May 2021 17:44:43 +0200
Message-Id: <20210527154455.358869-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210525152225.154302-1-knaerzche@gmail.com>
References: <20210525152225.154302-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210527_084504_967614_E41BF0AE 
X-CRM114-Status: GOOD (  20.13  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi list,

this series adds support for older Rockchip SoCs (RK3036, RK3066, RK3188
and RK322x) to the existing V4L2 video decoder/-encoder drivers - namely
hantro and rkvdec.
They can be used as-is or with very little modifications.

In preparation to that patches 1,8 and 9 add power-controller support for
RK3036 and RK322x, since both drivers rely on pm. The drivers for them 
exist already in the common Rockchip pm driver, they just haven't be added
to the device trees yet.

Changes in v2:
- reordered patches as suggested by Heiko
- fixed indentation and order issues in dt-bindings / DT patches
- added patch to reorder variants in hantro alphanumeric
- added patch that merges hantro platform drivers for Rockchip in one
- added missing DT patch for RK3036 (missed to submit with v1)
See individual patches for details about changes.

Thanks for your feedback,
Alex.

Alex Bee (12):
  dt-bindings: mfd: syscon: add Rockchip RK3036/RK3228 qos compatibles
  dt-bindings: media: rockchip-vpu: add new compatibles
  dt-bindings: media: rockchip-vdec: add RK3228 compatible
  media: hantro: reorder variants
  media: hantro: merge Rockchip platform drivers
  media: hantro: add support for Rockchip RK3066
  media: hantro: add support for Rockchip RK3036
  ARM: dts: rockchip: add power controller for RK3036
  ARM: dts: rockchip: add power controller for RK322x
  ARM: dts: rockchip: add vpu node for RK3036
  ARM: dts: rockchip: add vpu nodes for RK3066 and RK3188
  ARM: dts: rockchip: add vpu and vdec node for RK322x

 .../bindings/media/rockchip,vdec.yaml         |  10 +-
 .../bindings/media/rockchip-vpu.yaml          |  33 +-
 .../devicetree/bindings/mfd/syscon.yaml       |   2 +
 arch/arm/boot/dts/rk3036.dtsi                 |  72 +++
 arch/arm/boot/dts/rk3066a.dtsi                |   4 +
 arch/arm/boot/dts/rk3188.dtsi                 |   5 +
 arch/arm/boot/dts/rk322x.dtsi                 | 140 ++++-
 arch/arm/boot/dts/rk3xxx.dtsi                 |  12 +
 drivers/staging/media/hantro/Makefile         |   9 +-
 drivers/staging/media/hantro/hantro_drv.c     |   6 +-
 drivers/staging/media/hantro/hantro_hw.h      |  30 +-
 drivers/staging/media/hantro/rk3288_vpu_hw.c  | 208 -------
 drivers/staging/media/hantro/rk3399_vpu_hw.c  | 222 --------
 ...jpeg_enc.c => rockchip_vpu2_hw_jpeg_enc.c} |  30 +-
 ...eg2_dec.c => rockchip_vpu2_hw_mpeg2_dec.c} |  25 +-
 ...w_vp8_dec.c => rockchip_vpu2_hw_vp8_dec.c} |   2 +-
 ...rk3399_vpu_regs.h => rockchip_vpu2_regs.h} |   6 +-
 .../staging/media/hantro/rockchip_vpu_hw.c    | 526 ++++++++++++++++++
 18 files changed, 848 insertions(+), 494 deletions(-)
 delete mode 100644 drivers/staging/media/hantro/rk3288_vpu_hw.c
 delete mode 100644 drivers/staging/media/hantro/rk3399_vpu_hw.c
 rename drivers/staging/media/hantro/{rk3399_vpu_hw_jpeg_enc.c => rockchip_vpu2_hw_jpeg_enc.c} (87%)
 rename drivers/staging/media/hantro/{rk3399_vpu_hw_mpeg2_dec.c => rockchip_vpu2_hw_mpeg2_dec.c} (93%)
 rename drivers/staging/media/hantro/{rk3399_vpu_hw_vp8_dec.c => rockchip_vpu2_hw_vp8_dec.c} (99%)
 rename drivers/staging/media/hantro/{rk3399_vpu_regs.h => rockchip_vpu2_regs.h} (99%)
 create mode 100644 drivers/staging/media/hantro/rockchip_vpu_hw.c


base-commit: 5d765451c2409e63563fa6a3e8005bd03ab9e82f
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

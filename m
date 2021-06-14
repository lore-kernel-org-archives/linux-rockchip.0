Return-Path: <SRS0=bEZ5=LI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3B020C2B9F4
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Jun 2021 21:36:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F0F3261166
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Jun 2021 21:36:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F0F3261166
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ptmqM9hb0W3afKsabzYgHukHz/exviNNGI4H0a24df0=; b=3yYTBSROqzL/2e
	eYAJOtzFVgmM4ePWEFNS12S43c1MRiEF56535uasT7TxqfF/ufL5xpT54P/olICbnPiTN7iIOYRul
	gNVP5AeJlDmBdB82FRr+AIGUeWBztMKg9XJKptoISmBvjuh3lALcesSCPtgZAE2NqBDDrR9Eoks3+
	HMYwFNKGCU1WiEUamtcmqjzX3OOguhtfwzPXkYELL6modAINlEq7tmq7auZtdV7Adzsw1dUs/8Q/Z
	HpzVCFLxUGm+0Erhx6/7bBRcUf4FLRDxOSwF7RLhgNzMSTam9wfLz70TG00EfM6unm/B/Ej3RMr5L
	o/BB6fkM4HP/zC/fKgUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lsuFY-00GFpn-2F; Mon, 14 Jun 2021 21:36:04 +0000
Received: from mail-wm1-f49.google.com ([209.85.128.49])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lsuDS-00GEnq-5b; Mon, 14 Jun 2021 21:33:55 +0000
Received: by mail-wm1-f49.google.com with SMTP id
 f16-20020a05600c1550b02901b00c1be4abso335060wmg.2; 
 Mon, 14 Jun 2021 14:33:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mSLFpqCFvhFn8KCCGqKAz67zbpuQJXU2DAY29FvcEiI=;
 b=JcqGS/5o2IR20zU/dai2yiHCFg8fo8eaIQzOmhqGqG2IuzmOD1BENSwkGvpIXuqMIS
 RCaKL9BAPoaJOJkfSx2gVL2DKk6W6psnz/HblWMENOhywll6McxJsdRCYgJ88a521qRI
 1PDE5Wz2z9EXL7iQwmIpU5MIV3+unrWYQ8mgDJp0kSydpBG7E0a1CPQmAmr5NBZWGMmp
 DntGesjULn3FNaGxFxA4XCFJHxHW2XWKKVXJlRuQQlQJCiPTzEsamBlgWfGRt/isjdGP
 SL4K55mH7CHiAXdodZNueITpL3PjJmTQL555vBznN+n1hmiMMvLBG3694NyNhoUFI3Ns
 uXGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mSLFpqCFvhFn8KCCGqKAz67zbpuQJXU2DAY29FvcEiI=;
 b=WIZrQ+4lDM/kISnrcn//iKcvg0ZEsNwsIbboSffDS+y0HzvWVFOYrlMml15z1EVSKA
 BWVhIyA5VQKI+OveBinLkCPO6QON8pYw0sZYlHoFtMCGrHGAlneMtLBDri2pMLB3/we4
 hVqHM88kFBPGv7g4nT070nNaCN2Bys6PoMvX8cmQ2P1sy8sKqyaET0F8Q3pKxMHvF3rr
 71VtYfRKJ9nf78jUo6X+lNW5geUpGz+aO0GMYKGXV4Cuf62S12F1IvGwOmXFP/FcNUs7
 0mhu0uJRb37jPpWQuru+kv7x9RzKc6cPCvcSl271BJCcpvBSmBtRHbufGLJnBgeaUSKT
 jOJA==
X-Gm-Message-State: AOAM533DH9boeFmgJ4edB9NL8wTY+piAO95Cesnu5wkuCqriSXJqbl/i
 9AxGMqggCmj161jUTwcy5g==
X-Google-Smtp-Source: ABdhPJxoFf74Xcs042qLAxcjBYXgiLQWokLs1r14gREF+IVR+8p4FTNQ2GYH/EHuLNt/doSFg24O2w==
X-Received: by 2002:a05:600c:a45:: with SMTP id
 c5mr1246082wmq.153.1623706372451; 
 Mon, 14 Jun 2021 14:32:52 -0700 (PDT)
Received: from localhost.localdomain ([91.67.75.139])
 by smtp.googlemail.com with ESMTPSA id g23sm989525wmk.3.2021.06.14.14.32.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Jun 2021 14:32:51 -0700 (PDT)
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
Subject: [PATCH v3 0/6] Add support for older Rockchip SoCs to V4L2 hantro and
 rkvdec drivers
Date: Mon, 14 Jun 2021 23:32:09 +0200
Message-Id: <20210614213215.99389-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210525152225.154302-1-knaerzche@gmail.com>
References: <20210525152225.154302-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210614_143354_229036_462EA5FA 
X-CRM114-Status: GOOD (  19.34  )
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

this is v3 of series, that adds support for older Rockchip SoCs (RK3036,
RK3066, RK3188 and RK322x) to the existing V4L2 video decoder/-encoder
drivers - namely hantro and rkvdec.
They can be used as-is or with very little modifications.

In preparation to that previous versions added power-controller support for
RK3036 and RK322x, since both drivers rely on pm. The drivers for them
exist already in the common Rockchip pm driver, they just haven't been
added to the device trees yet.
Those patches have been applied already.

This is a basically a rebase of the patches that should get merged in
media_tree.
Please pick the DT patches, which are not applied yet from v2.

Changes in v3:
- rebased on current media_tree
- collected Reviewd-tags from v2 

Changes in v2:
- reordered patches as suggested by Heiko
- fixed indentation and order issues in dt-bindings / DT patches
- added patch to reorder variants in hantro alphanumeric
- added patch that merges hantro platform drivers for Rockchip in one
- added missing DT patch for RK3036 (missed to submit with v1)

See individual patches for details about changes.

Thanks for your feedback,
Alex.

Alex Bee (6):
  dt-bindings: media: rockchip-vpu: add new compatibles
  dt-bindings: media: rockchip-vdec: add RK3228 compatible
  media: hantro: reorder variants
  media: hantro: merge Rockchip platform drivers
  media: hantro: add support for Rockchip RK3066
  media: hantro: add support for Rockchip RK3036

 .../bindings/media/rockchip,vdec.yaml         |  10 +-
 .../bindings/media/rockchip-vpu.yaml          |  33 +-
 drivers/staging/media/hantro/Makefile         |   9 +-
 drivers/staging/media/hantro/hantro_drv.c     |   6 +-
 drivers/staging/media/hantro/hantro_hw.h      |  32 +-
 drivers/staging/media/hantro/rk3288_vpu_hw.c  | 208 -------
 drivers/staging/media/hantro/rk3399_vpu_hw.c  | 222 --------
 ...jpeg_enc.c => rockchip_vpu2_hw_jpeg_enc.c} |  30 +-
 ...eg2_dec.c => rockchip_vpu2_hw_mpeg2_dec.c} |  25 +-
 ...w_vp8_dec.c => rockchip_vpu2_hw_vp8_dec.c} |   2 +-
 ...rk3399_vpu_regs.h => rockchip_vpu2_regs.h} |   6 +-
 .../staging/media/hantro/rockchip_vpu_hw.c    | 526 ++++++++++++++++++
 12 files changed, 616 insertions(+), 493 deletions(-)
 delete mode 100644 drivers/staging/media/hantro/rk3288_vpu_hw.c
 delete mode 100644 drivers/staging/media/hantro/rk3399_vpu_hw.c
 rename drivers/staging/media/hantro/{rk3399_vpu_hw_jpeg_enc.c => rockchip_vpu2_hw_jpeg_enc.c} (87%)
 rename drivers/staging/media/hantro/{rk3399_vpu_hw_mpeg2_dec.c => rockchip_vpu2_hw_mpeg2_dec.c} (94%)
 rename drivers/staging/media/hantro/{rk3399_vpu_hw_vp8_dec.c => rockchip_vpu2_hw_vp8_dec.c} (99%)
 rename drivers/staging/media/hantro/{rk3399_vpu_regs.h => rockchip_vpu2_regs.h} (99%)
 create mode 100644 drivers/staging/media/hantro/rockchip_vpu_hw.c


base-commit: 45040f675041956ad763f9ef139ecee3647aa8bb
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <SRS0=fCHL=I6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06DA3C433B4
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Apr 2021 14:43:56 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7FA736135F
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Apr 2021 14:43:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7FA736135F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Mtkku8QBBDd8ZO8bDVBJ8ke28cI94zja1jQT6hbox3A=; b=Q7ItHOcBPiK8yC3I4jzNYJWYUM
	XFgi+mRdN1DojkQLs7ugK75rsAmZ61MvSIC0kpAnfDKVLgGzch0ZSLxiEbGhzqizcVBi1j8uibSS8
	NYGb+W9FrA/6x4NVE60Zh9+NixJgTX6L12CLp475dZ646tFfkPZVz+AnOkI5n3ap9800fQKF8ObWX
	1ALtULmt4ySvJWMLv5o/Ny0xpyf6ww+XTzcuS/gHLltENhvwipxh0kUbP6Wh3fvw9zIzriTMvsUT9
	3GfKbkeAJXLFyP9WpTf9WYNTo5YPA+wEh/oKKV7ZAFnB8H9BXMclvl2GjmE9MclJN28oxIhtMqtod
	W3dGs4fg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRyY1-009sa4-45; Thu, 01 Apr 2021 14:43:49 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRyXx-009sYr-G8
 for linux-rockchip@lists.infradead.org; Thu, 01 Apr 2021 14:43:47 +0000
Received: by mail-ej1-x629.google.com with SMTP id r12so3264552ejr.5
 for <linux-rockchip@lists.infradead.org>; Thu, 01 Apr 2021 07:43:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vGRnRc4EiqHm7b2pUbRyZl6rzcmsmwjQh7bNofLlUuY=;
 b=MyxQ20sfTAywgbai+wk7ZvWXfSkJUVecChe18QL6TczcAgHEpUi2w36cjGqqHdmLzE
 kjJbJDLGPTvM7YwygO5A5TpZEnRB1kA9oYHVF+s+Wka8H1Y+zdGE4YK/slo2aHhEfAEX
 NR5XquLGwpYWs4DTY1hx/CC1t/f0qLdt6bXJj88olbVHwd6U6IJgW50bMDI4Ea7EZnYk
 ObhTos73br5fMsJHRd1L6PO8UBsQpqfTxEpGEw7BWpEaRY+7naoPpd4O2M1/2WodPIST
 KV84ahNPw0rSBoJ1igkLbar5Skp4m5j8sjZK9gxjRnzD7YkzSTEziFFNzOCG0s3cI9bA
 RqrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vGRnRc4EiqHm7b2pUbRyZl6rzcmsmwjQh7bNofLlUuY=;
 b=nIf8K6IL3dHD65WXiOIm+aPiFMzXJZywC10OrngHZ+nO0tdaLRv7nPJTp2Y/2GlfGE
 5Gi5rxKjyBQc38MdObPADCYHQSVx4X8OQ2ymzO8Ljwp4wulGEKkvx6K1DrFMrGPXBww9
 UZv8YCXQpJ7t7fTgwbL7wldg1AKhJMvcv1jxK26hF7CbCYp96E4WNi4m7DTP0W6YL3hk
 WUbzEE6P2R07sQbb6ctEEXIWify/banR95CQH8k6Buld2QtjzMRA94L9lVgfnAXBjhJC
 5L+1z7h2LgUj/+8X4asIC5Mij4+sPhwORJMbQ/vmclpZLTmmUHeSuW9ZpRwX+RX+pZog
 TG7A==
X-Gm-Message-State: AOAM531UBrMyucwioUMkUo5yREW8rbjOuzoo5WxOxB2W+qxB3iAHDmBE
 uJDS+T7C9qOviEFdkjIGRY4=
X-Google-Smtp-Source: ABdhPJxxYx3spcGpvcCzf2aWZy9En8ZfunJVJEDElWBWl5sWdu16b7F24NFDmMuQHwobVdPumTM1Xw==
X-Received: by 2002:a17:907:76ed:: with SMTP id
 kg13mr9022159ejc.99.1617288224942; 
 Thu, 01 Apr 2021 07:43:44 -0700 (PDT)
Received: from arch-x1c3.. (cpc92308-cmbg19-2-0-cust99.5-4.cable.virginm.net.
 [82.24.248.100])
 by smtp.gmail.com with ESMTPSA id nd36sm2854950ejc.21.2021.04.01.07.43.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 01 Apr 2021 07:43:44 -0700 (PDT)
From: Emil Velikov <emil.l.velikov@gmail.com>
To: kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Cc: emil.l.velikov@gmail.com
Subject: [PATCH v4 0/9] Microchip SAMA5D4 VPU support et al
Date: Thu,  1 Apr 2021 15:43:27 +0100
Message-Id: <20210401144336.2495479-1-emil.l.velikov@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210401_154345_615274_378C81BE 
X-CRM114-Status: GOOD (  11.21  )
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

Hi all,

This is here is another small revision of the series adding support for
the Microchip SAMA5D4 VPU, which it based on the Hantro G1.

For more details, please see the v2 cover letter.
https://lore.kernel.org/linux-media/20210311154055.3496076-1-emil.l.velikov@gmail.com

Changes since v2:
 - Added RB (thanks Eze)
 - Added AB (thanks Nicolas)
 - Reworked Hantro driver to support modules lacking irq/clk name
   (thanks RobH and Eze)
 - Dropped defconfig patches - merged separatelly (thanks Nicolas)

Changes since v3:
 - Include the fixed dt-binding patch
 - Reinstante clk/irq names within the SAMA driver (Eze)
 - Use num_{clk,irq} in Hantro, instead of WARN_ON/NULL checks (Eze)
 - Drop Nicolas ack from a patch he never gave it to. (Eze)

Note: patches 6/9, 7/9 and 9/9 need reviews. Everything else has been
covered already.

Thanks
Emil

Emil Velikov (9):
  media: hantro: use G1_REG_INTERRUPT directly for the mpeg2
  media: hantro: imx: reuse MB_DIM define
  media: hantro: imx: remove duplicate dec_base init
  media: hantro: imx: remove unused include
  media: hantro: introduce hantro_g1.c for common API
  media: hantro: add fallback handling for single irq/clk
  media: dt-bindings: Document SAMA5D4 VDEC bindings
  media: hantro: add initial SAMA5D4 support
  ARM: dts: sama5d4: enable Hantro G1 VDEC

 .../media/microchip,sama5d4-vdec.yaml         |  47 +++++++
 arch/arm/boot/dts/sama5d4.dtsi                |   7 ++
 drivers/staging/media/hantro/Kconfig          |  10 +-
 drivers/staging/media/hantro/Makefile         |   4 +
 drivers/staging/media/hantro/hantro_drv.c     |  40 ++++--
 drivers/staging/media/hantro/hantro_g1.c      |  39 ++++++
 .../media/hantro/hantro_g1_mpeg2_dec.c        |   5 +-
 drivers/staging/media/hantro/hantro_hw.h      |   4 +
 drivers/staging/media/hantro/imx8m_vpu_hw.c   |  27 +---
 drivers/staging/media/hantro/rk3288_vpu_hw.c  |  36 +-----
 .../staging/media/hantro/sama5d4_vdec_hw.c    | 117 ++++++++++++++++++
 11 files changed, 268 insertions(+), 68 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/microchip,sama5d4-vdec.yaml
 create mode 100644 drivers/staging/media/hantro/hantro_g1.c
 create mode 100644 drivers/staging/media/hantro/sama5d4_vdec_hw.c

-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

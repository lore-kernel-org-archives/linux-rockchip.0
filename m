Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BFB9C531C9
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Jul 2026 20:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wLCQatNcDk02jvc4G8zPos5mAd4Ddxo71y8Kaq7dIhc=; b=SR6cKcbP/uo6/d
	5S4PiANwhgcL8dj9cnk4UhSxmYdc+LbVIWuClY2iDOSwDBK37b9Ppm36zIA0vUywAxVtgr3bScCT2
	1/z9C3ODu7qH//BjqKymAFOQc8o7c+bd1pdPCg2gyQ9urfBMKRM+vtXipAaHRU9OvsH0pfIErjHxk
	nXOb1+y3VZbXd8k4u47BXFqEq8Oem4kq2BOB0SGSmTTodT5Lv3vevOXXIU0BFSiIiFTgHV2r+2v6H
	pIf9Q2MdYdL0SU49eM/8aaByM8UoWWPdiFIKjyxk0f4ozzI0QC4bpj8+7/RPUMLX9QmCvbwrRmpeO
	dU/1tDyRx2cKu54Uam6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wo5Sp-00000001ayl-2YZB;
	Sun, 26 Jul 2026 20:28:47 +0000
Received: from mail-pj2-x06.google.com ([2607:f8b0:4864:39::6])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wo5Sm-00000001awa-3Ni3
	for linux-rockchip@lists.infradead.org;
	Sun, 26 Jul 2026 20:28:45 +0000
Received: by mail-pj2-x06.google.com with SMTP id 98e67ed59e1d1-38f25802c19so560034a91.1
        for <linux-rockchip@lists.infradead.org>; Sun, 26 Jul 2026 13:28:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785097723; x=1785702523; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=kdLdmVA9n/pSsrP3UeU927I5NGczIynaa1kz7iUykO8=;
        b=KxCHJqMV5/L0qjjuKOCulPAqoDtP9alt6+DcrCjnCmpydV91jO9UwsK0/QkyylyO48
         aovJ/Zt7d1+twR9IweOHPzwuJWfEAhp8KsGStbVaKrhl90nxe2Haf9hXzY/xO71GI8dv
         RWjAntGuSVpZpgg4zxmJCjg7UQmxmmkvabsUXNsSLEdesQe6DsKMaWb2flfk7a1/opVo
         3cpoPdJ0u3rBQfNORGBueO9/ns5M8w8CUr6cdbT+Tu+XwYW8+IrFUYEKjpzq6jhperqi
         vDB1HeO/vB74aEiE6y4RrnOMKFMqEJFf8GnQyMO2D7PAB5awQaLTI3egCPYsd4jBZYIo
         7b/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785097723; x=1785702523;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=kdLdmVA9n/pSsrP3UeU927I5NGczIynaa1kz7iUykO8=;
        b=eKrlZ/K1TH9UxxSFWikbuty/miwEZIAY8MQieQcB5xXihrlSa/HKmJgpscoLJcVRAy
         XRF5rdmFV6xFkrjwuedd/i7sctb04sQg81kOAaQ4UbvNpgjCbw/m971OCaL1jwAg9Vcx
         78+vJVqiTRpkA6soo9XwZCsK6PF1ff9osfwATdLRS9ulm2Ykc5l5nWHDsEmOJe+83Tez
         eSINeoYGW/g46o7JIpsumDA7rMCfu/M0k083eEVsdsfpeDyigS4p7IxR7zStV0R5hJeB
         JyglDxVNt9gvaQWFTnI5GzoaR+6Y7puAdriq3Gx5St/9KMvrX4YZNlZVNYHU8lW77VKO
         LIpg==
X-Forwarded-Encrypted: i=1; AHgh+RqBzHkAfbiMN+EPgIKb7qisCl0H2WRtw8IpUTGaGDEyj7yxiWH1Mmcjy5vizg3JMx5IXdeEQTsp0Q2TJCSeVg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwlpoMatEvolQaKGGzD/hfqCIww47UQOlWsvye1QaZZsqxKFu+x
	DSi8/WYw9d9T5rGEcQFg91Olkr4erbEePyAaH8l6EYjIqUeASu1UCBM6iYJ22W1vPkyDJg==
X-Gm-Gg: AR+sD10muy+UggKnfVvbCLuHq3sNsRTA/7RvpwRjQRaAl8I8O3q7iFhhjaGTajjOAGN
	ntp66M6Dcre8626jQPBnUOdxctin9HRYAfWWQRobHCRxR8X9OEnx76cqAgKwTHakbDmn4DuhfeC
	pOw9lBQcEQrttmpyh18SM97hF5LM/k2bhbuoDrt0XaboUImF/qdr02iKjoNPLVryFW+9FrkabAi
	Aaz0oB/R0uHDkuvCGB78uVWQNe6VBvQ0qM+u4WWyCjrZynQX3DwQZ3rKQuPGkDa5oRVR2blQc1C
	OwLOaHBhzaBcS4vQ+RUKDd/CWSP0AevG8R02ImuZs31XE+mQrnAR+w7epeEsNAQferJerdtwpRe
	fXGxhdoOvGsAryCsSip5QBu+5wVpuljfFoSP0347E20v2g+cYpgoZG0Vvln5f0HKgqowmrS6WvO
	wCLeMM7xWuTkzojMEOwnxtZOyeep0EaaRAdfvPDA==
X-Received: by 2002:a05:6a21:d8a:b0:3c4:5f94:f22c with SMTP id adf61e73a8af0-3c67df2078fmr5956185637.43.1785097723352;
        Sun, 26 Jul 2026 13:28:43 -0700 (PDT)
Received: from [127.0.1.1] ([2601:647:4d7d:1e60:c46f:4bb9:6cdd:73bd])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-13e6461ef84sm132697c88.14.2026.07.26.13.28.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Jul 2026 13:28:42 -0700 (PDT)
From: Venkata Atchuta Bheemeswara Sarma Darbha <vdarbha0473@gmail.com>
Subject: [PATCH 0/4] media: rkvdec: Add VP9 support for VDPU381 variant
Date: Sun, 26 Jul 2026 15:25:33 -0500
Message-Id: <20260726-b4-add-rkvdec2-vp9-vdpu381-v1-0-180fb2d1f10c@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAD1tZmoC/x3MwQqEIBAA0F+JOe9AarW1vxIdzBlrWChRkiD69
 6Tju7wLEkfhBL/qgshZkuxbgfpU4Fa7LYxCxaBr3dVf3eHcoCXC+M/ETmMOA2YKh+kVGlIz9d7
 ZxrdQghDZy/nm43TfD7d6/pFsAAAA
X-Change-ID: 20260726-b4-add-rkvdec2-vp9-vdpu381-3d1bd8fca4f5
To: Detlev Casanova <detlev.casanova@collabora.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Venkata Atchuta Bheemeswara Sarma Darbha <vdarbha0473@gmail.com>, 
 Igor Paunovic <royalnet026@gmail.com>, 
 Francesco Saverio Pavone <pavone.lawyer@gmail.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260726_132844_857793_2392C766 
X-CRM114-Status: GOOD (  10.71  )
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

Hi All,
This patch series adds the initial VP9 support for VDPU381 present in rk3588.

VDPU381 supports VP9 Profile 0 and Profile 2 up to 7680x4320@30fps.

Tested with fluster (suite : VP9-TEST-VECTORS, decoder: GStreamer-VP9-V4L2SL-Gst1.0).
The 224/305 score has been reproduced independently on three RK3588 boards
across three kernel bases: Orange Pi 5 Pro (RK3588S, 7.2.0-rc3),
Orange Pi 5 Plus (RK3588, 7.0) and Radxa Rock 5B+ (RK3588, 7.1).

Most of the remaining failures fall into a few known categories:

- All vp90-2-02-size-*.webm variants where either dimension is
  smaller than 64 pixels fail because the hardware does not support
  frames smaller than 64x64:
  vp90-2-02-size-08x08.webm, vp90-2-02-size-08x10.webm,
  vp90-2-02-size-08x16.webm, vp90-2-02-size-08x18.webm,
  vp90-2-02-size-08x32.webm, vp90-2-02-size-08x34.webm,
  vp90-2-02-size-08x64.webm, vp90-2-02-size-08x66.webm,
  vp90-2-02-size-10x08.webm, vp90-2-02-size-10x10.webm,
  vp90-2-02-size-10x16.webm, vp90-2-02-size-10x18.webm,
  vp90-2-02-size-10x32.webm, vp90-2-02-size-10x34.webm,
  vp90-2-02-size-10x64.webm, vp90-2-02-size-10x66.webm,
  vp90-2-02-size-16x08.webm, vp90-2-02-size-16x10.webm,
  vp90-2-02-size-16x16.webm, vp90-2-02-size-16x18.webm,
  vp90-2-02-size-16x32.webm, vp90-2-02-size-16x34.webm,
  vp90-2-02-size-16x64.webm, vp90-2-02-size-16x66.webm,
  vp90-2-02-size-18x08.webm, vp90-2-02-size-18x10.webm,
  vp90-2-02-size-18x18.webm, vp90-2-02-size-18x32.webm,
  vp90-2-02-size-18x34.webm, vp90-2-02-size-18x64.webm,
  vp90-2-02-size-18x66.webm, vp90-2-02-size-32x08.webm,
  vp90-2-02-size-32x10.webm, vp90-2-02-size-32x18.webm,
  vp90-2-02-size-32x34.webm, vp90-2-02-size-32x66.webm,
  vp90-2-02-size-34x08.webm, vp90-2-02-size-34x10.webm,
  vp90-2-02-size-34x16.webm, vp90-2-02-size-34x34.webm,
  vp90-2-02-size-34x64.webm, vp90-2-02-size-34x66.webm,
  vp90-2-02-size-64x08.webm, vp90-2-02-size-64x10.webm,
  vp90-2-02-size-66x08.webm, vp90-2-02-size-66x10.webm.

- vp90-2-05-resize.ivf, vp90-2-18-resize.ivf and all
  vp90-2-21-resize_inter_*.webm variants fail. These streams change
  resolution mid-stream on a non-keyframe, and a reference frame
  from before the resize ends up unavailable by the time it's
  needed again. This is being actively looked into:
  vp90-2-05-resize.ivf, vp90-2-18-resize.ivf,
  vp90-2-21-resize_inter_1280x720_5_1-2.webm,
  vp90-2-21-resize_inter_1280x720_5_3-4.webm,
  vp90-2-21-resize_inter_1280x720_7_1-2.webm,
  vp90-2-21-resize_inter_1280x720_7_3-4.webm,
  vp90-2-21-resize_inter_1920x1080_5_1-2.webm,
  vp90-2-21-resize_inter_1920x1080_5_3-4.webm,
  vp90-2-21-resize_inter_1920x1080_7_1-2.webm,
  vp90-2-21-resize_inter_1920x1080_7_3-4.webm,
  vp90-2-21-resize_inter_320x180_5_1-2.webm,
  vp90-2-21-resize_inter_320x180_5_3-4.webm,
  vp90-2-21-resize_inter_320x180_7_1-2.webm,
  vp90-2-21-resize_inter_320x180_7_3-4.webm,
  vp90-2-21-resize_inter_320x240_5_1-2.webm,
  vp90-2-21-resize_inter_320x240_5_3-4.webm,
  vp90-2-21-resize_inter_320x240_7_1-2.webm,
  vp90-2-21-resize_inter_320x240_7_3-4.webm,
  vp90-2-21-resize_inter_640x360_5_1-2.webm,
  vp90-2-21-resize_inter_640x360_5_3-4.webm,
  vp90-2-21-resize_inter_640x360_7_1-2.webm,
  vp90-2-21-resize_inter_640x360_7_3-4.webm,
  vp90-2-21-resize_inter_640x480_5_1-2.webm,
  vp90-2-21-resize_inter_640x480_5_3-4.webm,
  vp90-2-21-resize_inter_640x480_7_1-2.webm,
  vp90-2-21-resize_inter_640x480_7_3-4.webm.

- vp90-2-09-aq2.webm,
  vp90-2-09-lf_deltas.webm,
  vp90-2-15-segkey_adpq.webm,
  vp90-2-19-skip-01.webm,
  vp90-2-19-skip-02.webm,
  vp90-2-19-skip.webm,  vp90-2-22-svc_1280x720_3.ivf,
  are still failing and not yet root-caused.

- vp91-2-04-yuv422.webm
  vp91-2-04-yuv444.webm
  fail because the hardware does not support the format these
  streams use (4:2:2/4:4:4), only 4:2:0.

The base vdpu381 VP9 driver support was introduced by me. Profile 2 support
was added by Igor Paunovic. Francesco Saverio Pavone fixed bugs in
the segmentation map size calculation and in the altref vertical
scale factor. Igor Paunovic also fixed a decoded-frame stride bug, aligning
bytesperline to 64 bytes in rkvdec_fill_decoded_pixfmt().

---
Igor Paunovic (1):
      media: rkvdec: align bytesperline to 64 bytes in rkvdec_fill_decoded_pixfmt()

Venkata Atchuta Bheemeswara Sarma Darbha (3):
      media: rkvdec: vp9: Changing get_ref_buf function name to get_ref_buf_vp9
      media: rkvdec: Move vp9 functions to common file
      media: rkvdec: Add VP9 support for VDPU381 variant

 drivers/media/platform/rockchip/rkvdec/Makefile    |    2 +
 .../platform/rockchip/rkvdec/rkvdec-vdpu381-regs.h |  234 +++++
 .../platform/rockchip/rkvdec/rkvdec-vdpu381-vp9.c  | 1067 ++++++++++++++++++++
 .../platform/rockchip/rkvdec/rkvdec-vp9-common.c   |   65 ++
 .../platform/rockchip/rkvdec/rkvdec-vp9-common.h   |   92 ++
 .../media/platform/rockchip/rkvdec/rkvdec-vp9.c    |  121 +--
 drivers/media/platform/rockchip/rkvdec/rkvdec.c    |   73 +-
 drivers/media/platform/rockchip/rkvdec/rkvdec.h    |    1 +
 8 files changed, 1537 insertions(+), 118 deletions(-)
---
base-commit: 1229e2e57a5c2980ccd457b9b53ea0eed5a22ab3
change-id: 20260726-b4-add-rkvdec2-vp9-vdpu381-3d1bd8fca4f5

Best regards,
--  
Venkata Atchuta Bheemeswara Sarma Darbha <vdarbha0473@gmail.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 158B9C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 20:25:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Tp/7WLrbg954L+z/BkbKy4Cz4jY9nT2X/DXtVzGn6KE=; b=QsN0tuOYYeRxvY
	hcmeDwqQ70psVJ8lQNQo+tqFnUj6kDK8Lkz5+Az493u/3MBjXMn8E0pGw0L6nFkKEImj93/MUs3gF
	GVA1dJe/HZDJolHre3rPKEt6pwAxtL2bBuwdlQ30vz2FDGEj3qE4wCFHw4TgnZpQJMdJbs5We9jJ4
	jbg8aROFsZm4f5pyg4RlHB6AdxBuJ6dgZvBa2xYU9uXOkmschqlS0X1xxLD2BcoD5rgDzdC+LttCh
	GvfVjOmnOeOM2+uu0gZTbRqIf5cQmGJ6vFlg/twM5XsyhppczTg8uN84Z/YfTQHyVTL9EcOWYN5sM
	ULX/QJyl8hdHTuwNG5Pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1w3d-00463a-8K; Thu, 16 Jun 2022 20:25:37 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1w3P-0045tw-Hc; Thu, 16 Jun 2022 20:25:24 +0000
Received: by mail-ed1-x52f.google.com with SMTP id n28so3661878edb.9;
        Thu, 16 Jun 2022 13:25:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AcjgtAok98U2SdMAJ0Kw//o2AG36vAJD03liJbGmfKA=;
        b=QmCRISHCtLT+nw3UyvqMWIcz2JHpZRJ3D/RM3RoaQUco5QZdlnmA6O44Y4WVp8YSWs
         yoHUczvN/fqgBGNgXJQEUtGy95ns7Fu6s1kSfrF9F7zUoGf4l6EonDRTo8TIvRO/T9GM
         9NgleDUsZiDfY5O4grl6ShE0f9roHAPrIg4HW2S4Nnq6NSyaNoLWbnFxhiz949wGw2iS
         kJA4EcIAwVU9R1/GLXGN1Qj4Q5uBMUJ44WhV06KKSICX3GxrpLY6KEGF5XpuDEpopsAu
         SAwZmkBveS9R8OE2GX5hPiM7RK587tFIMSaal5EUQ7CQOLOsOSJmYLuxKx4o6VMHNqNK
         U6VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AcjgtAok98U2SdMAJ0Kw//o2AG36vAJD03liJbGmfKA=;
        b=vD2EGXbEBwapI61Ibk+DFcMzZA3PDEay+rbQlXFPti+DXG2U63GSfhm62twqk9CLBn
         KEH8ua7wJp6cwwaWCwg4V6VdXkHl6rTUjFX/4UZws13euvLmuyqi3JVy9/2eELt9ktUb
         D6njGtCtJND3it20ldxTf+E58FgqjwWLVs9IWsOSsrDHLjPL/o2WWAaP9vxgLx05B2zm
         IJ/OE/tZc5MWaiO5j9jdXFpG9FrOAZGyvzPBX7oq5rEeDUaRt5Q5+varHZT8D4RFt9UC
         B8WRChNi/K/t+jQR93BuPwCCRoIIPVYS7cr7IkjR3EUa1LzwBusbevG4PU4wAQU1VvJW
         accA==
X-Gm-Message-State: AJIora/wK7M2B0/YTYyTQ23HLV/dwdU/umoqd41EV9ZQbDoDufxcmwUK
	Xvd+KruQBU3B14lGSRrEPMo=
X-Google-Smtp-Source: AGRyM1va8bmngwqVTSbwaYJ/gAA2ee63zz6lO5d5tNZrnNA6y3P7Nr9g2uZFj4UdnOWIR3Jiv9JYjA==
X-Received: by 2002:a05:6402:60d:b0:42f:ac38:af75 with SMTP id n13-20020a056402060d00b0042fac38af75mr8463062edv.203.1655411119232;
        Thu, 16 Jun 2022 13:25:19 -0700 (PDT)
Received: from kista.localdomain (213-161-3-76.dynamic.telemach.net. [213.161.3.76])
        by smtp.gmail.com with ESMTPSA id 21-20020a170906329500b006fe8a4ec62fsm1186760ejw.4.2022.06.16.13.25.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jun 2022 13:25:18 -0700 (PDT)
From: Jernej Skrabec <jernej.skrabec@gmail.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de
Cc: mchehab@kernel.org,
	hverkuil-cisco@xs4all.nl,
	benjamin.gaignard@collabora.com,
	nicolas.dufresne@collabora.com,
	gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	linux-staging@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Jernej Skrabec <jernej.skrabec@gmail.com>
Subject: [PATCH v2 0/7] media: hantro: Add 10-bit support
Date: Thu, 16 Jun 2022 22:25:06 +0200
Message-Id: <20220616202513.351039-1-jernej.skrabec@gmail.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_132523_643715_F250C87C 
X-CRM114-Status: GOOD (  10.20  )
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

This series adds support for 10-bit format handling in Hantro driver.
Most patches adjust postproc behaviour to be more universal. There is
a lot of assumptions, which need to be replaced with more generalized.

Tested on Allwinner H6. Tested with vp92-2-20-10bit-yuv420.webm sample,
which produces correct checksum.

Please take a look.

Best regards,
Jernej

Changes from RFC:
- fixed typo in function name
- removed merged patch (P010 format)
- removed broken patch (sunxi frequency change)
- added new patch (media: hantro: postproc: Properly calculate chroma offset)
- added r-b from Ezequiel

Ezequiel Garcia (1):
  media: Add P010 tiled format

Jernej Skrabec (6):
  media: hantro: Support format filtering by depth
  media: hantro: postproc: Fix buffer size calculation
  media: hantro: postproc: Fix legacy regs configuration
  media: hantro: postproc: Properly calculate chroma offset
  media: hantro: Store VP9 bit depth in context
  media: hantro: sunxi: Enable 10-bit decoding

 drivers/media/v4l2-core/v4l2-common.c         |  1 +
 drivers/media/v4l2-core/v4l2-ioctl.c          |  1 +
 drivers/staging/media/hantro/hantro.h         |  4 ++
 drivers/staging/media/hantro/hantro_drv.c     | 23 +++++++++
 .../staging/media/hantro/hantro_g2_vp9_dec.c  |  8 ---
 .../staging/media/hantro/hantro_postproc.c    | 38 +++++++++++---
 drivers/staging/media/hantro/hantro_v4l2.c    | 50 +++++++++++++++++--
 drivers/staging/media/hantro/hantro_v4l2.h    |  3 ++
 drivers/staging/media/hantro/sunxi_vpu_hw.c   | 27 ++++++++++
 include/uapi/linux/videodev2.h                |  1 +
 10 files changed, 136 insertions(+), 20 deletions(-)

-- 
2.36.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

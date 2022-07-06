Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D14C0C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jul 2022 18:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MKInodb4EG2a3oTJCKDElAnYj9jZ3covq1le9Vu6rOM=; b=rnPLtDQIJKf6l4
	bY0li+bU+NIkHmOoE6VAOhBiy8UH03A/0YYHrQy5DfSlNr+rmOCeOTthMevHkY/BF2GISq45x5TS3
	GMD6XEjKNhCFHi8sTUSqFNwjXFF69zifqnmOCN2FLsDq/oJlMrQqrYravtGN1NvLRHQdPEUTunIfu
	mfJxssRSvTMMk/6klrDRKUc5orL579HP25Vdi3iBBGN4KeIS0Auop7D60pxZXv13EBL2vlccBfhrV
	iHjWlMCYGKg6i/boz2+1TNvnrDEFwnJQn3izV/wK3rzu6nk+58os8K2VUDlJPK79GnTX7DD01g5FA
	Bo41jXvsYc84OmsbZ2cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o99mD-00Bx2E-3c; Wed, 06 Jul 2022 18:29:29 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o99m0-00BwuS-6S; Wed, 06 Jul 2022 18:29:18 +0000
Received: by mail-wm1-x32f.google.com with SMTP id v67-20020a1cac46000000b003a1888b9d36so9661361wme.0;
        Wed, 06 Jul 2022 11:29:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=veq/Lh4TlAFiqd2as2QsDi+5Sf/Jvx1yYHKwqofOJ9o=;
        b=D/GBtbDoDrd9WwaKJrXkQPvMJSnhagjGlrMvRdZngoIOSQDMFwf3riNka9sKWeqUNZ
         68j9wAd8P1tOp6+eYbBL3LPhXmcL7ncpp3SJbkkONwh9iHnHCvJ0LgIh0ehHtblz6Xy/
         mROak7qhzqZU18vdXSDiBY8UhDFH5gcTJ+UksgT6qUUwNmbmFP3P2OKXyEC0qMF1jZfu
         f9p1UF3PpXu/MPUbJN44Um5RfZ/DowbA8xZPZKvbhPd27bczcpR90fcMTtf5GNkgIHXv
         CLclsFl7XWUrDyTonvk+LNSWdVcvt4vpOy0tqASojUCUBmYAGcuvq1TJ5JO93XcQfVq+
         lTuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=veq/Lh4TlAFiqd2as2QsDi+5Sf/Jvx1yYHKwqofOJ9o=;
        b=iKWy9B31KFyvcCylakesVcZCkqBO1SkyTmMnOXfkEjh+R96MHuadZXS7ZMhUgTmaSZ
         sISL9/r/Vcb75rfYRIbHpBQQeauo6wB3kC/yUCHA+cjYlWfGpimjHOdgj91Gv9mK04WR
         MphTHMVTEvqlmyH6sKdAuDCa5DETiZS3Uhys7/W/JuEvDIWevU/nZTk9mLLnadwqeE3D
         l9qWNZtCx/roioljrkGwv66geeSeBQgKN2Nk/sAMaUNJtH4rlyEphP+Dcvdp8g6+eE7B
         u0bohYMlj6SyjckG5mjVOcf4nrgVojBs2fjtXbCXRRBkh3OFACQ1KEnCbFaI2ROQnTrH
         02qg==
X-Gm-Message-State: AJIora9CpZ+6jxE55vWNCTkGxDzV0zhfZiBXcMKetwqUxLQFTJn35pgg
	2OYzyuK+Tx6PzF1d4vn8tzQ=
X-Google-Smtp-Source: AGRyM1v+PzFf3H84UTOcP8kXa3ogDH7CjY7F56uHMLIutxGcHvpSyE47mzgtd7yg9gcVbPZPjDejGQ==
X-Received: by 2002:a05:600c:600d:b0:3a1:9712:5d31 with SMTP id az13-20020a05600c600d00b003a197125d31mr24463802wmb.67.1657132151725;
        Wed, 06 Jul 2022 11:29:11 -0700 (PDT)
Received: from kista.localdomain (213-161-3-76.dynamic.telemach.net. [213.161.3.76])
        by smtp.gmail.com with ESMTPSA id r15-20020a0560001b8f00b0021d74906683sm5142406wru.28.2022.07.06.11.29.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 11:29:11 -0700 (PDT)
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
Subject: [PATCH v3 0/7] media: hantro: Add 10-bit support
Date: Wed,  6 Jul 2022 20:28:54 +0200
Message-Id: <20220706182901.78949-1-jernej.skrabec@gmail.com>
X-Mailer: git-send-email 2.37.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_112916_267167_DFDDA477 
X-CRM114-Status: GOOD (  10.60  )
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

Changes fron v2:
- rebased on media-stage/master
- added P010 4L4 format documentation
- added t-b and r-b tags

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

 .../media/v4l/pixfmt-yuv-planar.rst           | 18 +++++--
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
 11 files changed, 151 insertions(+), 23 deletions(-)

-- 
2.37.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

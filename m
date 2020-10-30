Return-Path: <SRS0=455t=EF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA9DBC388F9
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2020 11:22:48 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 43E992075E
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2020 11:22:48 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="sQ+rgPPS"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 43E992075E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Y+tUBL5FJ6oVLt+wbaAwGt0omqtP15vNgNMZrsMR2p4=; b=sQ+rgPPSjkhpUZJUwMVhVg4BSu
	UIKmtzUbqQd8vvB1Ids7Aq/B4IHX7W0Da1XtI85JkTBulW96r3H7u6QixvMhuQamNQ+VSaRChTD6a
	CQDUmF/pNuMpRNy3lryB9ibNKIZvRrGJ3NI9L224TOEuIwazI8l/IhlPDc0cZ38SiuN/yps+M+f2v
	Lv471I3jab4/GYbMQ56PkKK3ysVJEKQNNQEa9Z1l1qh14aogxXlI7oQY0HJQb0HJqZw74jIm6eUTG
	WTT5yIjTIJ2WHRLVlM+QnKdObhD0xWcBngZbHmIUmQS7ZXQsHABvociwpgfdmDQhiRyyQgAByf0ia
	stitKRow==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kYSUT-0007rc-3C; Fri, 30 Oct 2020 11:22:41 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kYSUP-0007qB-4x
 for linux-rockchip@lists.infradead.org; Fri, 30 Oct 2020 11:22:38 +0000
Received: from floko.floko.floko (unknown [IPv6:2804:14c:483:7e3e::1005])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: koike)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E8EE21F45EBC;
 Fri, 30 Oct 2020 11:22:32 +0000 (GMT)
From: Helen Koike <helen.koike@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v2 0/3] destage Rockchip ISP1 driver
Date: Fri, 30 Oct 2020 08:22:21 -0300
Message-Id: <20201030112225.2095909-1-helen.koike@collabora.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201030_072237_410687_4ECFA583 
X-CRM114-Status: GOOD (  14.39  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, heiko@sntech.de,
 niklas.soderlund@ragnatech.se, linux-kernel@vger.kernel.org,
 tfiga@chromium.org, linux-rockchip@lists.infradead.org,
 laurent.pinchart@ideasonboard.com, hverkuil-cisco@xs4all.nl,
 kernel@collabora.com, zhengsq@rock-chips.com, ribalda@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello,


Changes in v2:
- New patch updating MAINTAINERS file
- No changes in other patches


I think it is time to move this driver out of staging.

Thanks all who contributed, specially to Dafna, who put a lot of
effort addressing all the items in the TODO list, fixing bugs,
cleaning the code, addressing past comments and testing.

Please, review the driver, see if there is any other thing that should
be addressed before this change.

> media-ctl -p
http://ix.io/2Cso

> media-ctl --print-dot
http://ix.io/2Csp

> v4l2-compliance -m0
http://ix.io/2Csk

> v4l2-compliance -v -d /dev/video0 -s10
http://ix.io/2Csq

> v4l2-compliance -v -d /dev/video1 -s10
http://ix.io/2Css

This patch depends on the following series:

* media: staging: rkisp1: uapi: add "WITH Linux-syscall-note"
  https://patchwork.linuxtv.org/project/linux-media/patch/20201020132514.26651-1-dafna.hirschfeld@collabora.com/

* [0/2] media: staging: rkisp1: Fix formats for metadata pads
  https://patchwork.linuxtv.org/project/linux-media/cover/20200325212704.29862-1-dafna.hirschfeld@collabora.com/

* [v2,1/2] media: uapi: add MEDIA_BUS_FMT_METADATA_FIXED media bus format.
  [v2,2/2] media: staging: rkisp1: isp: set metadata pads to MEDIA_BUS_FMT_METADATA_FIXED
  https://patchwork.linuxtv.org/project/linux-media/patch/20201020154522.654-1-dafna.hirschfeld@collabora.com/

* [0/6] media: staging: rkisp1: improvements
  https://patchwork.linuxtv.org/project/linux-media/cover/20201002184222.7094-1-dafna.hirschfeld@collabora.com/

* [0/4] media: staging: rkisp1: send cleanups and checkpatch fixes
  https://patchwork.linuxtv.org/project/linux-media/cover/20201019205956.6980-1-dafna.hirschfeld@collabora.com/

* media: staging: rkisp1: capture: set default quantization on 'set_fmt'
  https://patchwork.linuxtv.org/project/linux-media/patch/20201026162848.18310-1-dafna.hirschfeld@collabora.com/

* media: staging: rkisp1: remove TODO item to document quantization handling
  https://patchwork.linuxtv.org/project/linux-media/patch/20200928152809.27490-1-dafna.hirschfeld@collabora.com/

* [v2] media: staging: rkisp1: cap: refactor enable/disable stream to allow multistreaming
  https://patchwork.linuxtv.org/project/linux-media/patch/20201019160434.877568-1-helen.koike@collabora.com/

* [v6,0/9] move Rockchip ISP bindings out of staging / add ISP DT nodes for RK3399
  https://patchwork.linuxtv.org/project/linux-media/patch/20201020193850.1460644-2-helen.koike@collabora.com/

You can also see all of them applied in this branch:

    https://gitlab.collabora.com/koike/linux/-/tree/rockchip/isp/destage

Thanks
Helen

Helen Koike (2):
  media: rockchip: rkisp1: destage Rockchip ISP1 driver
  media: MAINTAINERS: Update rkisp1 files with new location

Shunqian Zheng (1):
  media: videodev2.h, v4l2-ioctl: add rkisp1 meta buffer format

 .../media/v4l/pixfmt-meta-rkisp1.rst          |  2 +-
 MAINTAINERS                                   |  3 ++-
 drivers/media/platform/Kconfig                | 18 ++++++++++++++++++
 drivers/media/platform/Makefile               |  1 +
 .../platform/rockchip}/rkisp1/Makefile        |  0
 .../rockchip}/rkisp1/rkisp1-capture.c         |  0
 .../platform/rockchip}/rkisp1/rkisp1-common.c |  0
 .../platform/rockchip}/rkisp1/rkisp1-common.h |  2 +-
 .../platform/rockchip}/rkisp1/rkisp1-dev.c    |  0
 .../platform/rockchip}/rkisp1/rkisp1-isp.c    |  0
 .../platform/rockchip}/rkisp1/rkisp1-params.c |  0
 .../platform/rockchip}/rkisp1/rkisp1-regs.h   |  0
 .../rockchip}/rkisp1/rkisp1-resizer.c         |  0
 .../platform/rockchip}/rkisp1/rkisp1-stats.c  |  0
 drivers/media/v4l2-core/v4l2-ioctl.c          |  2 ++
 drivers/staging/media/Kconfig                 |  2 --
 drivers/staging/media/Makefile                |  1 -
 drivers/staging/media/rkisp1/Kconfig          | 19 -------------------
 drivers/staging/media/rkisp1/TODO             |  6 ------
 .../uapi/linux}/rkisp1-config.h               |  4 ----
 include/uapi/linux/videodev2.h                |  4 ++++
 21 files changed, 29 insertions(+), 35 deletions(-)
 rename drivers/{staging/media => media/platform/rockchip}/rkisp1/Makefile (100%)
 rename drivers/{staging/media => media/platform/rockchip}/rkisp1/rkisp1-capture.c (100%)
 rename drivers/{staging/media => media/platform/rockchip}/rkisp1/rkisp1-common.c (100%)
 rename drivers/{staging/media => media/platform/rockchip}/rkisp1/rkisp1-common.h (99%)
 rename drivers/{staging/media => media/platform/rockchip}/rkisp1/rkisp1-dev.c (100%)
 rename drivers/{staging/media => media/platform/rockchip}/rkisp1/rkisp1-isp.c (100%)
 rename drivers/{staging/media => media/platform/rockchip}/rkisp1/rkisp1-params.c (100%)
 rename drivers/{staging/media => media/platform/rockchip}/rkisp1/rkisp1-regs.h (100%)
 rename drivers/{staging/media => media/platform/rockchip}/rkisp1/rkisp1-resizer.c (100%)
 rename drivers/{staging/media => media/platform/rockchip}/rkisp1/rkisp1-stats.c (100%)
 delete mode 100644 drivers/staging/media/rkisp1/Kconfig
 delete mode 100644 drivers/staging/media/rkisp1/TODO
 rename {drivers/staging/media/rkisp1/uapi => include/uapi/linux}/rkisp1-config.h (99%)

-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <SRS0=U2ba=CK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1BCF5C433E6
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2020 12:05:16 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CFCFA206EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2020 12:05:15 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="mRk5xS7h"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CFCFA206EF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qTptY02j4nW0iwKRCvSkZDbWT/tMOx4qUrwzVS+377I=; b=mRk5xS7h8oT1aQFl2g+DmulXnx
	IETVsPF8ClSycDbWdN3r8WmVt41aUvjteqejI1sFSYz6IGDzgsU2zArwT9EwyFy6jOt8rsZ3jfYEC
	PRizg5FruMHkCkiQxL1hPVgvP46fHQnQs1R8rBZP2Adfz6ga+Wd2ujHbRTAnomRD9/pmAF95/+NLt
	Rr+XBmk+y8t9ziuBIoWlPXXtRFECKsnhQ2L9eRZxayx/+0BESlt7W3eRzU/IJl2qXtkFG/qGSlNjU
	7aTCKMt2HaiadZfGHBgoxbJ+zcFPh5jsA5pPhLva7I7+MrjM1fU4yI3ifqujrnenJ93Vw9vzMypW8
	PnRLwN7A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kD4H9-0004gS-Go; Tue, 01 Sep 2020 11:16:31 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kD4H1-0004Yc-AQ
 for linux-rockchip@lists.infradead.org; Tue, 01 Sep 2020 11:16:26 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 1B5B9298907
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v4 00/10] media: staging: rkisp1: add support to V4L2_CAP_IO_MC
Date: Tue,  1 Sep 2020 13:16:02 +0200
Message-Id: <20200901111612.10552-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200901_071623_469137_96857C98 
X-CRM114-Status: GOOD (  17.48  )
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
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, dafna3@gmail.com,
 tfiga@chromium.org, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The patchset solves several problems in the rkisp1 driver.

1. Currently the resizers output media code MEDIA_BUS_FMT_YUYV8_2X8 when the input is
MEDIA_BUS_FMT_YUYV8_2X8.
The patchset adds support to other media codes on the resizer according to
the chroma subsampling.
Setting the correct media code on the source pad that matches the
chroma subsampling reflects userspace  that the resizer has downsampling
capability and also the resizer entity does not have to check the capture entity's
configuration to get the scaling ratio, the information of how to scale can be
obtained from the source media code of the resizer.

2. Add support for the V4L2_CAP_IO_MC capability on
the mainpath and selfpath captures. This helps userspace to know the
right configuration for streaming. This is especially helpful for the
RGB and Grey formats that expect media bus MEDIA_BUS_FMT_YUYV8_2X8
which is not something userspace can 'guess'. Adding a mapping of the
required mbus code for each pixelformat also makes the link_validation
code much simpler, it just has to check if the configuration matches the mapping.

3. Removes unsupported packed yuv formats - this patch was already part of a pull request
and was dropped due to merge conflicts.

4. Remove bayer formats on the selfpath resizer since they are not
supported on the selfpath capture.

5. Remove support to YUV444 pixel format, I was not able to find a configuration
that supports this format. I kept getting bad looking frames.
I tried to add capture yuv444 formats by adding an entry:

+       {
+               .mbus_code      = MEDIA_BUS_FMT_YUV8_1X24,
+               .hdiv           = 1,
+               .vdiv           = 1,
+       }

to the list of supported formats: rkisp1_rsz_yuv_src_formats[]

full patch: http://ix.io/2vNJ

On the mainpath I get good images, but on the selfpath I get bad looking images:

https://pasteboard.co/JoWp3U4.png

https://pasteboard.co/Jp1YWLR.png

Interestingly, when changing the sp_input from default RKISP1_MI_CTRL_SP_INPUT_YUV422
to RKISP1_MI_CTRL_SP_INPUT_YUV444, then the images that are not upscaled look good:

https://pasteboard.co/Jp22u6E.png

but with upscaling (1604x1232 -> 1920x1500) it still looks bad:

https://pasteboard.co/Jp22MBU.png


6. Fix the configuration to support Grey format - the 'write_format' field should
be 'planar'

changes since v3:
patch 1 - remove '----' line from commit log
patch 5-7 - refactor code, add documentation
patch 8 - change function name rkisp1_rsz_yuv_mbus_info and code in function rkisp1_rsz_set_src_fmt


Dafna Hirschfeld (10):
  media: staging: rkisp1: cap: change RGB24 format to XBGR32
  media: staging: rkisp1: cap: remove unsupported formats
  media: staging: rkisp1: cap: remove unsupported format YUV444
  media: staging: rkisp1: don't support bayer format on selfpath resizer
  media: staging: rkisp1: add capability V4L2_CAP_IO_MC to capture
    devices
  media: staging: rkisp1: add a helper function to enumerate supported
    mbus formats on capture
  media: staging: rkisp1: rsz: enumerate the formats on the src pad
    according to the capture
  media: staging: rkisp1: rsz: Add support to more YUV encoded mbus
    codes on src pad
  media: staging: rkisp1: cap: simplify the link validation by compering
    the media bus code
  media: staging: rkisp1: fix configuration for GREY pixelformat

 drivers/staging/media/rkisp1/rkisp1-capture.c | 199 +++++++++++-------
 drivers/staging/media/rkisp1/rkisp1-common.h  |  11 +
 drivers/staging/media/rkisp1/rkisp1-resizer.c |  93 ++++++--
 3 files changed, 203 insertions(+), 100 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

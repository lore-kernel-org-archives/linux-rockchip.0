Return-Path: <SRS0=r61b=BZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70538C433E1
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Aug 2020 10:38:01 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 32B2023120
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Aug 2020 10:38:01 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="g3g1gMwq"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 32B2023120
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ehNHeZx11/CoooXcw3gSW1RdXC60nofTVoFtb+3S6lg=; b=g3g1gMwq7g6rqwcYZqwpfAhuS/
	qoEgTztcw9zK8k+Um1OCq6Sy+k9uuQYmFrkjmxt4Yekrt5t+J/p7ECekMs9hG5Osl4WynEp+ylR6j
	3cP2oj/0T9Voih391yRWOIvt3Be6yZ51mTU2KydF1KK60CYl+U2g5c5nehaUx4CcICf1iXvn6pzWS
	IyROU5EUN0Wp6t4KEFwP0cZV6l+QSoioRNLw8AYHGm0XKxzdalbzuJhP928d9clRuuRNnT8fWrMvd
	Vk/lUJ4i+ny/bvIkHqqRcUAu3BPwhpLTsbYf2iR599WsotgTlBai7h5vIT/LfHnwTduj2BvlZclLe
	0PphYbKQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k6tZR-0001BQ-Th; Sat, 15 Aug 2020 10:37:53 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k6tZQ-0001AU-6Z
 for linux-rockchip@lists.infradead.org; Sat, 15 Aug 2020 10:37:53 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 6833828D80C
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v2 00/14] media: staging: rkisp1: various bug fixes
Date: Sat, 15 Aug 2020 12:37:20 +0200
Message-Id: <20200815103734.31153-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200815_063752_354630_ADDE48C8 
X-CRM114-Status: GOOD (  16.04  )
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

Fix various bugs mainly in params and stats. The patchset fixes
buffers synchronization issues discussed
https://patchwork.kernel.org/patch/11066513/#23544763

As discussed with Tomasz, we decide that in order to keep the code
simple, we assume that the v-start signal (RKISP1_CIF_ISP_V_START)
and the frame-out signal RKISP1_CIF_ISP_FRAME don't arrive together.
So when v-starts arrives the frame sequence is incremented and
when frame-out arrives, the stats and params isr are called.
Also the frame sequence of the params buffer should be the frame to
which the params are applied.

The params node needs to apply the first params buffer when
the streaming from main/selfpath starts before the first frame arrive
so that the first buffer will configure the first frame.
The way it is implemented is that the first buffer queued
to the params node is not added to the list but instead a local copy
is saved and the buffer returns to userspace immediately.
Then the local copy is applied when main/selfpath stream starts.
This implementation is buggy for the following reasons:

- The first params buffer is applied and returned to userspace even if
userspace never calls to streamon on the params node.
- If the first params buffer is queued after the stream started on the
params node then it will return to userspace but will never be used.
- The frame_sequence of the first buffer is set to -1 if the main/selfpath
did not start streaming.

To fix this, the buffers are added to the buffers list on qbuf and
then when a stream start from selfpath/mainpath the first buffer is removed
from the list, applied and returned to userspace. This is done only
if the params node is also streaming.

Testing:
I added a code to libcamera that sets the red, blue, and green gain
interchangeably. The frames are then saved to files.
To run the code:

git clone --single-branch --branch rkisp1-tests-for-params-fixes-patchset https://gitlab.collabora.com/dafna/libcamera.git
cd libcamera
ninja  -C build install
meson test rkisp1-ramzor -C build

Then adding debug prints in the params node in the kernel
that prints the gain values and the current frame
http://ix.io/2ue3

Then playing frames with

ffplay -f rawvideo -pixel_format nv12 -video_size 640x480 build/frame-bla-<FRAME-NUM>.bin

and looking that the frame color matches the debug prints.

changes from v1:
- patch 1 from v1 is removed
- patch 3 from v1 (now patch 5) which refactor the stop_streaming params cb
is changed according to discussion with Tomasz
- 12 new patches added


Dafna Hirschfeld (14):
  media: staging: rkisp1: call params isr only upon frame out
  media: staging: rkisp1: params: use rkisp1_param_set_bits to set reg
    in isr
  media: staging: rkisp1: params: use the new effect value in cproc
    config
  media: staging: rkisp1: params: don't release lock in isr before
    buffer is done
  media: staging: rkisp1: params: upon stream stop, iterate a local list
    to return the buffers
  media: staging: rkisp1: params: in the isr, return if buffer list is
    empty
  media: staging: rkisp1: params: avoid using buffer if params is not
    streaming
  media: staging: rkisp1: params: set vb.sequence to be the isp's
    frame_sequence + 1
  media: staging: rkisp1: remove atomic operations for frame sequence
  media: staging: rkisp1: isp: add a warning and debugfs var for irq
    delay
  media: staging: rkisp1: isp: don't enable signal
    RKISP1_CIF_ISP_FRAME_IN
  media: staging: rkisp1: stats: protect write to 'is_streaming' in
    start_streaming cb
  media: staging: rkisp1: call media_pipeline_start/stop from stats and
    params
  media: staging: rkisp1: params: no need to lock default config

 drivers/staging/media/rkisp1/rkisp1-capture.c |   2 +-
 drivers/staging/media/rkisp1/rkisp1-common.h  |  10 +-
 drivers/staging/media/rkisp1/rkisp1-dev.c     |   2 +
 drivers/staging/media/rkisp1/rkisp1-isp.c     |  39 +++---
 drivers/staging/media/rkisp1/rkisp1-params.c  | 124 ++++++++----------
 drivers/staging/media/rkisp1/rkisp1-stats.c   |  14 +-
 6 files changed, 96 insertions(+), 95 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

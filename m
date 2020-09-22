Return-Path: <SRS0=X5eU=C7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02A76C2D0E2
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 11:34:36 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8AC57221EB
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 11:34:35 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="u/aAxMpM"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8AC57221EB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=kyXfyoidbk5/6MLizEknJTy2AcSnTVndJwJywZHUpxQ=; b=u/aAxMpMff/IPLfa82hfAUb6Za
	L3UMow9ntnAiSyKBYEGhoDdTxOxfuMahRclTm/yhOPQI2qXhXhieJWcInH1IZc2ptQ5FzNIGf8w2Q
	TRKyxCRLDKmNl/AspdsAEvFmy5ktzuLZtT8Aw0iFUsq25i2Ol0+P4BukhKSAuWH86ODgLeuSOSB37
	VAb5akpwd3nRLEa86Un10cN2yU2PPryTqnZ/V5lQR28Qgk9dWHwwbBxk2gIarhQOrgQK+L6o76Elb
	1Tic8pufQKA9SaM3ADq/c+HAHnkmOVpM5OGXHynQKTKOX9g4Ku/bSfCPKAg7a+dstgR4yBMX4m6p9
	+piKozeQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKgZ0-0006DB-Te; Tue, 22 Sep 2020 11:34:27 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKgYm-00064X-Og
 for linux-rockchip@lists.infradead.org; Tue, 22 Sep 2020 11:34:17 +0000
Received: from guri.fritz.box
 (p200300c7cf13ec005877be1094b7a29d.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf13:ec00:5877:be10:94b7:a29d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 6AB6429B485;
 Tue, 22 Sep 2020 12:34:09 +0100 (BST)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v3 00/12] media: staging: rkisp1: various bug fixes
Date: Tue, 22 Sep 2020 13:33:50 +0200
Message-Id: <20200922113402.12442-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200922_073415_867400_051FD256 
X-CRM114-Status: GOOD (  19.03  )
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
So when v-start arrives, the frame sequence is incremented and
when frame-out arrives, the stats and params isr are called.
Also the vb.sequence of the params buffer should be the frame to
which the params are applied.

The params node needs to apply the first params buffer when
the streaming from main/selfpath starts before the first frame arrives
so that the first params buffer will configure the first frame.

The way it is implemented is that the first buffer queued
to the params node is not added to the list but instead a local copy
is saved and the buffer returns to userspace immediately.
Then the local copy is applied when main/selfpath stream starts.
This implementation is buggy for the following reasons:

- The first params buffer is applied and returned to userspace even if
userspace never calls streamon on the params node.
- If the first params buffer is queued after the stream started on the
params node then it will return to userspace but will never be used.
- The frame_sequence of the first buffer is set to -1 if the main/selfpath
did not start streaming.

To fix this, params buffers are added to the buffers list on qbuf and
then when a stream start from selfpath/mainpath then the first buffer is removed
from the list, applied and returned to userspace. This is done only
if the params node is also streaming.

Testing:
I added a code to libcamera that sets the red, blue, and green gain
interchangeably. The frames are then saved to files.
To run the code:

git clone --single-branch --branch test-various-bug-fixes-v3 https://gitlab.collabora.com/dafna/libcamera.git
cd libcamera
ninja  -C build install
meson test rkisp1-ramzor -C build

Then adding debug prints in the params node in the kernel
that prints the gain values and the current frame
http://ix.io/2ue3

Then playing frames with

ffplay -f rawvideo -pixel_format nv12 -video_size 640x480 build/frame-bla-<FRAME-NUM>.bin

and looking that the frame color matches the debug prints.

changes from v2:
* patches 11,12 in v3 are new, they fix the TODO issue "review and comment every lock"
* patches 1,2,4 from v2 are already applied so remove from v3
* patch 13 from v2: "media: staging: rkisp1: call media_pipeline_start/stop from stats and params" - dropped from this version
* patch "media: staging: rkisp1: params: use the new effect value in cproc config"
was reorder to be just before patch "media: staging: rkisp1: params: avoid using buffer if params is not streaming"
* patch 4: declare function 'rkisp1_params_apply_params_cfg' as static to fix a warning reported by 'kernel test robot <lkp@intel.com>'
* patch 5: rephrase commit message and inline doc as suggested by Helen.
* patch 6: add a closing "}" to "if" condition and remove useless inline comment
* patch 7: remove unneeded closing "}" to "if"


changes from v1:
- patch 1 from v1 is removed
- patch 3 from v1 (now patch 5) which refactor the stop_streaming params cb
is changed according to discussion with Tomasz
- 12 new patches added

Dafna Hirschfeld (12):
  media: staging: rkisp1: params: upon stream stop, iterate a local list
    to return the buffers
  media: staging: rkisp1: params: in the isr, return if buffer list is
    empty
  media: staging: rkisp1: params: use the new effect value in cproc
    config
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
  media: staging: rkisp1: params: no need to lock default config
  media: staging: rkisp1: use the right variants of spin_lock
  media: staging: rkisp1: cap: protect access to buf with the spin lock

 drivers/staging/media/rkisp1/TODO             |   1 -
 drivers/staging/media/rkisp1/rkisp1-capture.c |  19 ++-
 drivers/staging/media/rkisp1/rkisp1-common.h  |   7 +-
 drivers/staging/media/rkisp1/rkisp1-dev.c     |   2 +
 drivers/staging/media/rkisp1/rkisp1-isp.c     |  22 ++--
 drivers/staging/media/rkisp1/rkisp1-params.c  | 118 ++++++++----------
 drivers/staging/media/rkisp1/rkisp1-stats.c   |   5 +-
 7 files changed, 76 insertions(+), 98 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

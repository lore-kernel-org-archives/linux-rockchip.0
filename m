Return-Path: <SRS0=q9XV=GX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 147A4C433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 16:45:08 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A78A5233E2
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 16:45:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A78A5233E2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vZIK4CEqD8P1yS/gDtesCxW9pq3FlniF1oiyvdVz2rI=; b=extUOM/VLXBf3UKsPSa22QPgW9
	e3ahKLeVSlojRV7lN1RJy8+sg/ytGjTEB+bRWbzqQgo7zcG3xJ5cknT3OAp/ruPDqSG+ndhFa6p/+
	j0B3RZ60TzWfdhfDs7U/JFM6mSqe11WjBXf1EEZQObtAl+pVNZe9f9a/K9700y/fdwYnWcfEtCLS6
	dj7O40oEvPzSBlPKrh/7qbA4hS0MF234viS1+O4/IMnCmlxFDV33zGXgH0nk+ZTUYrIR+AHLcLwdO
	I+M/yeGTgYVq/AT7oHR0oy8i4IjNsrpXX786tiOkH+TfNM4JNj+53ROrxwO5DZ3ybPDvXXizEoT5f
	B9nK5hAw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l2GbP-0004ym-6J; Wed, 20 Jan 2021 16:45:03 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2GbK-0004vN-PI
 for linux-rockchip@lists.infradead.org; Wed, 20 Jan 2021 16:45:00 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 944DD1F44F86
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org, heiko.stuebner@theobroma-systems.com,
 heiko@sntech.de
Subject: [PATCH v7 0/5] Fix the rkisp1 userspace API for later IP versions
Date: Wed, 20 Jan 2021 17:44:41 +0100
Message-Id: <20210120164446.1220-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210120_114458_924303_967811C1 
X-CRM114-Status: GOOD (  13.23  )
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

Hi,
This is v7 of the rkisp1 fixes set sent by Heiko Stuebner. [0]

In addition to prepare the support to px30 (V12 in the uapi)
This version of the set adds more fixes to the code in params/stats
according to the changes in the uapi and also change the
hist_bins to be u32 instead of u16.

More details about the patchset can be found in v6's cover-letter [1]

[0] https://patchwork.kernel.org/project/linux-media/list/?series=416647
[1] https://patchwork.kernel.org/project/linux-media/cover/20210118110448.275389-1-heiko@sntech.de/

changes since v6:
- add a patch to change the hist_bins array type to __u32 and extend the
documentation of how the histogram measurements are taken
- remove a wrong u8 cast when filling the hist_bins array
- when reducing the number of elements in the weight grid array,
the code in rkisp1-params.c should be adjusted to iterate it 25 times
- some minor typo and checkpatch fixes.

changes since v5:
- move grid reduction for V10 to separate patch (Hans)
- fix commit message (histogram size 28 -> 25) in patch4 (Hans)

changes since v4:
- set GAMMA_OUT to the real 25 instead of the 28 with 3 spares (Dafna)
- start RKISP_Vxx enum with 10 for RKISP_V10 to make output
  easier and also allow userspace to differentiate between old (= 0)
  and newer driver variants (Dafna, Laurent)

changes since v3:
- add patch fixing the original histogram size comment
- make comments in uapi more verbose (Hans)
- fix wording in admin guide (Hans)
- document version <-> soc in uapi as well (easier for people) (Dafna)

changes since v2:
- actually zero the correct sizes for u16 values (hist-bins)
  (kernel-test-robot)

changes since v1:
- drop duplicate isp_ver storage, hw_revision is enough (Dafna)
- document multiple maximum sizes in uapi (Hans)
- document usage of hw_revision field (Hans)
- zero fields transmitted to userspace before adding data (Hans)
- use _V10 field sizes when filling fields, as there is only v10 for now

changes since rfc:
- move rkisp1_version enum into uapo
- show version in media-api hw_revision
- introduce constants for versions and make max use the biggest

Dafna Hirschfeld (2):
  media: rkisp1: uapi: change hist_bins array type from __u16 to __u32
  media: rkisp1: stats: remove a wrong cast to u8

Heiko Stuebner (3):
  media: rockchip: rkisp1: reduce number of histogram grid elements in
    uapi
  media: rockchip: rkisp1: carry ip version information
  media: rockchip: rkisp1: extend uapi array sizes

 Documentation/admin-guide/media/rkisp1.rst    | 16 ++++
 .../platform/rockchip/rkisp1/rkisp1-dev.c     | 21 +++--
 .../platform/rockchip/rkisp1/rkisp1-params.c  |  5 +-
 .../platform/rockchip/rkisp1/rkisp1-stats.c   | 15 +++-
 include/uapi/linux/rkisp1-config.h            | 84 ++++++++++++++++---
 5 files changed, 116 insertions(+), 25 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

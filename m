Return-Path: <SRS0=2LhI=B4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFF96C433DF
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2020 10:27:23 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8CDE02078B
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2020 10:27:23 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="VrprNf4i"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8CDE02078B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xyHNXZETLkDqpMGDTA0kRg9A6Qogqyd8/ZiCbqtjLN8=; b=VrprNf4ipiXz8POB9NkghTqwT9
	zqlps9AYQGCuXWgNuOfutDeMn/H1Jof2U8D33Bzl+ONfgkqu0VlttUBDcT5frLcLP9NvkPS37l+eb
	6AwSMrowOChjw96R/AmGn7Wa0EwSESmXMDfeUxlKEE18P18iGbBByN3QPVBepdmoMFzxqs3zTaNni
	2atdB4Y12ztIsNgxSjnuXcFzOvXQT7SeDZS+3Zdo48bB7XtxP3MqJqB3yTZNiShHRfG7LI0e4eqbf
	qOwaYs0niRY/lgtTRzpeEPFMN0lnhMUSfg9udgGPK6mG6EQM1afwdh1nX7asWFXXbNsYfoeu20oaP
	Jn2WEm5g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7ypq-0004Qb-9s; Tue, 18 Aug 2020 10:27:18 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7ypm-0004Nz-CN
 for linux-rockchip@lists.infradead.org; Tue, 18 Aug 2020 10:27:16 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id EFD5C2991AB
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v2 0/2] media: admin-guide: add documentation for rkisp1
Date: Tue, 18 Aug 2020 12:27:01 +0200
Message-Id: <20200818102703.30471-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200818_062714_600557_15261C6D 
X-CRM114-Status: GOOD (  12.41  )
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

Two patches that document the rkisp1 driver in the Documentation
directory.

patch 1 adds documentation to the specific metadata formats
used by the driver.

patch 2 adds a documentation of the driver.

The documentation assumes that the patchsets:

"v4l2: add support for colorspace conversion API (CSC) for video capture and subdevices"
https://patchwork.kernel.org/project/linux-media/list/?series=334393

"media: staging: rkisp1: add support to V4L2_CAP_IO_MC"
https://patchwork.kernel.org/cover/11680993/

were accepted and it documents the features that those patchsets add.

changes from v1:
----------------
- limit lines within 80 chars
- rephrasing and fixing issues due to comments

Dafna Hirschfeld (2):
  media: pixfmt-meta-rkisp1.rst: add description of rkisp1 metadata
    formats in pixfmt-meta-rkisp1.rst
  media: admin-guide: add documentation file rkisp1.rst

 Documentation/admin-guide/media/rkisp1.dot    |  18 ++
 Documentation/admin-guide/media/rkisp1.rst    | 181 ++++++++++++++++++
 .../admin-guide/media/v4l-drivers.rst         |   1 +
 .../userspace-api/media/v4l/meta-formats.rst  |   1 +
 .../media/v4l/pixfmt-meta-rkisp1.rst          |  49 +++++
 .../uapi/v4l/pixfmt-meta-rkisp1-params.rst    |  23 ---
 .../uapi/v4l/pixfmt-meta-rkisp1-stat.rst      |  22 ---
 7 files changed, 250 insertions(+), 45 deletions(-)
 create mode 100644 Documentation/admin-guide/media/rkisp1.dot
 create mode 100644 Documentation/admin-guide/media/rkisp1.rst
 create mode 100644 Documentation/userspace-api/media/v4l/pixfmt-meta-rkisp1.rst
 delete mode 100644 drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst
 delete mode 100644 drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

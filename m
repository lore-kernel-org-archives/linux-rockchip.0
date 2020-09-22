Return-Path: <SRS0=X5eU=C7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910C1C4727D
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 16:58:32 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1E01E2371F
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 16:58:32 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="lncuS3Hg"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1E01E2371F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=oOOCaYpM9yLf5rvU46gT29GBuTJlDrku1wNemdRHMj0=; b=lncuS3HgJ63HIwEcVV/XDSwK6g
	xVFC7k6q2hR89HxuXWtHCrUSMbcfY1OKFJnQXmkH64DQqR1kcqzJPBKWZdGcTQ5fo2e22yyohTb/D
	R1VgroV50Rq1+45onFWeFHsEuY9XkVu/R2qMuGuUHFQ8aqUPeuHBQlv4KHvtvRcZMmBQy1SZIZc/8
	HoLAKGzDL9EyuNO69/Af86UUJv70v01Rx0ZH1jNUyfMx2abfECfacu02ncjLX/p2C/4+axVW2O0H/
	2CLMXuTQ2KnCvmOHP2CZSmtwruI4y/RCVHMNObiJa0VZFlphN5NnjD+SKwQbuLj6OtDgoU9dLaw4G
	mrJ6Iz3g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKlca-0007OM-JS; Tue, 22 Sep 2020 16:58:28 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKlcV-0007Kh-3Y
 for linux-rockchip@lists.infradead.org; Tue, 22 Sep 2020 16:58:24 +0000
Received: from guri.fritz.box
 (p200300c7cf13ec005877be1094b7a29d.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf13:ec00:5877:be10:94b7:a29d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 7A8C029E069;
 Tue, 22 Sep 2020 17:58:20 +0100 (BST)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 0/2] Add format MEDIA_BUS_FMT_METADATA_FIXED and use it in
 rkisp1
Date: Tue, 22 Sep 2020 18:58:11 +0200
Message-Id: <20200922165813.19378-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200922_125823_307239_9E1270E7 
X-CRM114-Status: GOOD (  13.22  )
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

There are 2 pads between the entities
rkisp1_isp to rkisp1_params and rkisp1_stats that transmit
metadata. This metadata is fixed and not configurable from
userspace. Since the metadata has no dimensions, it makes
sense to set the width and height of these pads to 0.
The problem is that it makes the v4l-compliance tests fail.
Currently, in order to silent the tests, the width
and height are set to RKISP1_DEFAULT_*

This patchset sets the dimensions to 0 and solves the
compliance error by introducing a new media bus code
MEDIA_BUS_FMT_METADATA_FIXED

The new code should be used when
the same driver handles both sides of the link and
the bus format is a fixed metadata format that is
not configurable from userspace.

Then the v4l2-compliance tests can skip the
dimensions test for this media bus code.

See irc discussion for that issue:
https://linuxtv.org/irc/irclogger_log/v4l?date=2020-05-13,Wed
https://linuxtv.org/irc/irclogger_log/v4l?date=2020-05-14,Thu



Dafna Hirschfeld (2):
  meida: uapi: add MEDIA_BUS_FMT_METADATA_FIXED media bus format.
  media: staging: rkisp1: isp: set metadata pads to
    MEDIA_BUS_FMT_METADATA_FIXED

 drivers/staging/media/rkisp1/TODO         | 1 -
 drivers/staging/media/rkisp1/rkisp1-isp.c | 8 ++++----
 include/uapi/linux/media-bus-format.h     | 8 ++++++++
 3 files changed, 12 insertions(+), 5 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

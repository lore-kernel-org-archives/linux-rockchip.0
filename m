Return-Path: <SRS0=+1u9=H7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3B3B7C433E9
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Mar 2021 17:19:00 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 04964651E1
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Mar 2021 17:18:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 04964651E1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8jqMC7yHp9bJUxjsTV3ccqPHEGZH4EXco9/vjdDtVZs=; b=UetkNOmyZWk2QeSU2uVERo2PpC
	S0/y4yUtJz973EsaIB4oHD5SgViRH7uYhrPp8/8beU42QtQ7sN0Hv/eG8nTFiR5FX+ixkmGSjDpms
	SbbFTvx7xgCAJ+LFVwNUZ8W4cpiBUzqS9bDmWzJ0LblSJispNnA06p0X903F9AQb4Lqy5OHT4+VTf
	eLY4TrvDgO32CCx5TQ1FuFOrWPjkD3vuyNUudavoh/OxwuM/SclxMeOr3XQB37VIqlqw7T0i8jiez
	fPmY/7WZ/Sv+L0ppMNLH2PWZUzy1202kxME7Dlw58AnJYKK2sS/NlWfj826rAV75PMJc0Ju7GF1PH
	664lpfww==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGmC6-0000VG-2y; Mon, 01 Mar 2021 17:18:54 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGmC2-0000SJ-AT
 for linux-rockchip@lists.infradead.org; Mon, 01 Mar 2021 17:18:51 +0000
Received: from guri.fritz.box
 (p200300c7cf38380081778a42153c5979.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf38:3800:8177:8a42:153c:5979])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 3784A1F45161;
 Mon,  1 Mar 2021 17:18:43 +0000 (GMT)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v2 0/2] media: rkisp1: params: two fixes
Date: Mon,  1 Mar 2021 18:18:33 +0100
Message-Id: <20210301171835.24202-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210301_121850_494201_D19CCCA0 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
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

First patch is a v2 of a patch I already sent in another patchset.
Second patch is a fix to a bug I found.

changes from v2 in patch 1:
- remove unnecessary curly brackets
- remove unrelated indentation fixes
- rebase on latest kernel

Dafna Hirschfeld (2):
  media: rkisp1: params: remove extra 'if' conditions
  media: rkisp1: params: fix bug when configuring histogram measurements

 .../platform/rockchip/rkisp1/rkisp1-params.c  | 446 ++++++++----------
 1 file changed, 195 insertions(+), 251 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

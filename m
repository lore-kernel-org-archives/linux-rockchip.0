Return-Path: <SRS0=VuRY=NW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82D8BC432BE
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Aug 2021 09:49:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2B2F060249
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Aug 2021 09:49:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2B2F060249
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Oz6V2DrUZvZOWNYKqopvc0HIgYgcB9t3WGptc2iDe6s=; b=P289xKs5mLbrSj
	UEh1BjmZDbYLHcRQ9uM+Qre67nee8+nvEDz2oWYAIieja45++YelVT8KUFXv1jBfCMCO96gmRnY2q
	A1nQhmiBIPq5JB6kMY5xSvgilMPgZTT8p+yqjzUXKJwDkZ0GQ1Q6fQq9PJ1zYU1WZHWp2thaUF4zu
	WyjS+8aMSl+rlYeP3MtGP2glF0M77hydjHjT45bG010XQlnv5eDn7d6yfFdJVRFMiMH5dOO3OtgJU
	GJV3vHFu0s42VQwRiPECItENiYtPXKncCv0Lbxsw4zSYxXqaYc1ERkydHlwp3N/3qKL8UUyPaKCc4
	y7SmJtxAztFEd8IFOdKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mL0OX-001xmz-35; Tue, 31 Aug 2021 09:49:29 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mL0OJ-001xiL-VT; Tue, 31 Aug 2021 09:49:17 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:4cb:a870:2d6:5982:f5be:998c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 268E21F42FC8;
 Tue, 31 Aug 2021 10:49:09 +0100 (BST)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org, p.zabel@pengutronix.de, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 jernej.skrabec@gmail.com, hverkuil-cisco@xs4all.nl, jc@kynesim.co.uk,
 ezequiel@vanguardiasur.com.ar
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH 0/2] media: HEVC: RPS clean up
Date: Tue, 31 Aug 2021 11:48:58 +0200
Message-Id: <20210831094900.203283-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210831_024916_169176_1EFD45A3 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This series aims to clean up Reference Picture Set usage and flags.

Long term flag was named with RPS prefix while it is not used for RPS
but for mark long term references in DBP. Remane it and remove the two
other useless RPS flags.

Clarify documentation about RPS lists content and make sure that Hantro
driver use them correctly (i.e without look up in DBP).

Benjamin

Benjamin Gaignard (2):
  media: hevc: Remove RPS named flags
  media: hevc: Embedded indexes in RPS

 .../media/v4l/ext-ctrls-codec.rst             | 12 ++++-----
 .../staging/media/hantro/hantro_g2_hevc_dec.c | 27 +++++--------------
 .../staging/media/sunxi/cedrus/cedrus_h265.c  |  2 +-
 include/media/hevc-ctrls.h                    |  4 +--
 4 files changed, 14 insertions(+), 31 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

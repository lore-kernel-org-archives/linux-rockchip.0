Return-Path: <SRS0=rUAS=GR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5E61C433DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Jan 2021 23:36:04 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 39CB523A6C
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Jan 2021 23:36:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 39CB523A6C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wM+9UmJezoaqrCzZI4dEBTpOzcSxrh/X1X9gWXxvO38=; b=b6m9b4+sFKQxm/4Ucwi+apbYM
	5rPyPMEat6ySTTDmu61fMFSQ7ZazN6M1V7A4OqZDVppYP1cdH17bSHnUE4ESlahPJZN4pmISbiZkg
	FNC9c2vKNCJnLmUQUx2cQdFv5iw2RARdx2ZjlVBOdU4gnRYiXU9HXdMwc0AWTGTOl1c607zS0yjgb
	nKvwUhr+39lSECFQI+nqX0Edr7kJ7vnVU/uCnUoDZURoMsQHbf2xcbkmTH3F+hEDxHGR/H4y+N1n5
	BWag5eeqKt4wJkOONgeaGzXYZkMeJRhMv0k9YOVLRt8cD1a4AwFfxwWd7c6jicAW4siVtcGFQknx2
	z4CrqNd7A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l0C9p-0006Lu-Do; Thu, 14 Jan 2021 23:36:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l0C9n-0006LX-FB
 for linux-rockchip@lists.infradead.org; Thu, 14 Jan 2021 23:36:00 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1l0C9i-0001no-2u; Fri, 15 Jan 2021 00:35:54 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: dafna.hirschfeld@collabora.com, helen.koike@collabora.com,
 linux-media@vger.kernel.org, mchehab@kernel.org,
 Laurent.pinchart@ideasonboard.com, hverkuil@xs4all.nl
Subject: Re: [PATCH 0/2] Fix the rkisp1 userspace API for later IP versions
Date: Fri, 15 Jan 2021 00:35:53 +0100
Message-ID: <2248126.yKrmzQ4Hd0@diego>
In-Reply-To: <20210114233345.160223-4-heiko@sntech.de>
References: <20210114233345.160223-1-heiko@sntech.de>
 <20210114233345.160223-4-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210114_183559_533271_0D63498C 
X-CRM114-Status: GOOD (  15.02  )
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
Cc: linux-rockchip@lists.infradead.org, tfiga@chromium.org,
 ezequiel@collabora.com, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

please only look at the patches marked "v2" of course, I somehow
made git-send-email also grab the old v1 patches from a subdir
by accident.

Thanks
Heiko

Am Freitag, 15. Januar 2021, 00:33:43 CET schrieb Heiko Stuebner:
> This NEEDs to go into 5.11 while we can still adapt the uapi
> during its RC-cycle.
> 
> 
> When looking into supporting the rkisp1 of the px30 I noticed that
> some fields got bigger in the uapi, caused by bigger number of samples
> for example for histograms or gamma values.
> 
> The rkisp1 was destaged with 5.11-rc1 so we have still time during
> the 5.11 cycle to fix that without big hassles.
> 
> This was discussed previously in a mail [0] and a rfc series [1]
> and this two-part series now splits out the important parts that
> really should become part of a 5.11-rc and thus the final 5.11.
> 
> 
> [0] http://lore.kernel.org/r/3342088.iIbC2pHGDl@diego
> [1] https://lore.kernel.org/r/20210108193311.3423236-2-heiko@sntech.de
> 
> Heiko Stuebner (2):
>   media: rockchip: rkisp1: carry ip version information
>   media: rockchip: rkisp1: extend uapi array sizes
> 
>  .../platform/rockchip/rkisp1/rkisp1-common.h  |  1 +
>  .../platform/rockchip/rkisp1/rkisp1-dev.c     | 22 +++++++++-------
>  include/uapi/linux/rkisp1-config.h            | 25 ++++++++++++++++---
>  3 files changed, 35 insertions(+), 13 deletions(-)
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <SRS0=ad98=HZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE30CC433E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 21:49:54 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3C85464E83
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 21:49:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3C85464E83
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=amz4RSnUhLyHupJZZrKixwDyEy5ZY5p9Oyyg/h1iefY=; b=J+mD8Lb+EIbcUqCH8CUzh8Vq6
	Qg+83HsB1HHlVe+sHQ9nmvt5WP4rVR2eSjDA1Ph8omXO/Gju9XT1vtQdQW0GymIjZuxcLXpxkD9bS
	ZL8qS/gZtMeqj871wEk1HKPuKA0L7/G/JW94OG9wUlU+vF9bZF1knirTHJtYu/4HQUOSv9etUMllM
	lnUbY966itncsh7KBp/eX1xkUlMwvHCrySARQfOZxfTQoWjZLtC7aE+/UBCDe1vuV1f212ifuUoW6
	+/isMfcs7dvTKf3o6bpi/GwtzWeafkpwrjlhmK/oLrcK3lPQHBMGyo1g6pDnhiC846Hpoq8k7EvSV
	mZJ4WZShQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEfYx-0001rG-Fw; Tue, 23 Feb 2021 21:49:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEfYv-0001qR-1Y; Tue, 23 Feb 2021 21:49:45 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lEfYl-0004jo-Qk; Tue, 23 Feb 2021 22:49:35 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: dri-devel@lists.freedesktop.org, daniels@collabora.com, hjc@rock-chips.com,
 daniel@ffwll.ch, linux-rockchip@lists.infradead.org, airlied@linux.ie,
 andrzej.p@collabora.com,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 linux-arm-kernel@lists.infradead.org, stable@vger.kernel.org
Subject: Re: [PATCH] drm/rockchip: Require the YTR modifier for AFBC
Date: Tue, 23 Feb 2021 22:49:31 +0100
Message-Id: <161411675671.3338515.9688232276427844069.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20200811202631.3603-1-alyssa.rosenzweig@collabora.com>
References: <20200811202631.3603-1-alyssa.rosenzweig@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210223_164945_107332_5556FA04 
X-CRM114-Status: GOOD (  10.06  )
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
Cc: Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, 11 Aug 2020 16:26:31 -0400, Alyssa Rosenzweig wrote:
> The AFBC decoder used in the Rockchip VOP assumes the use of the
> YUV-like colourspace transform (YTR). YTR is lossless for RGB(A)
> buffers, which covers the RGBA8 and RGB565 formats supported in
> vop_convert_afbc_format. Use of YTR is signaled with the
> AFBC_FORMAT_MOD_YTR modifier, which prior to this commit was missing. As
> such, a producer would have to generate buffers that do not use YTR,
> which the VOP would erroneously decode as YTR, leading to severe visual
> corruption.
> 
> [...]

Applied, thanks!

[1/1] drm/rockchip: Require the YTR modifier for AFBC
      commit: 0de764474e6e0a74bd75715fed227d82dcda054c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

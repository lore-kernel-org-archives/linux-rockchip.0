Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EF73C32793
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Jan 2023 14:11:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K0glthC9stAzyA73Q4Z94ntig7PF2kw3D2wcK66TfYs=; b=A7rVsOK5huINRG
	gpX2TV1HWcHXjoGV4Hsfy+spFDwoNgmV/Qr/o7g8aQuGOMxjs3ErW+VJR9Pk2aFJcNstJjBZ7CORN
	jG+ZOY90Pk7X/T06/1vX3Fwvl+OPSi4zIMX6AA/mRPrTVkawbolgCLoZ3NdifxDhl0jU21GYJqTGn
	Q6uVB+ufjcIEnp1IqmHJ1qPrtTXuE9DdvuNwBQag1+c/F6Nty2YQPQ5ewcV4y9naXxliyS3Fo0P/k
	09mqC3U4Cb00IjfumMvw4kALw2bmUz6De0bbPfsJ2yGsj7DQcEvJ9rYlQXYyD4/GM1TogDuMe2GVh
	DzVbH1JpeKP0dayTU6iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI99h-001HRf-Iy; Wed, 18 Jan 2023 14:11:09 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI99d-001HQh-Ui
	for linux-rockchip@lists.infradead.org; Wed, 18 Jan 2023 14:11:08 +0000
Message-ID: <f4ba9333-144a-c2c4-108f-71b2b4c9acd1@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1674051057;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ilB7OTwIAX8N3WvG1TvNqQJkH9aWvuim71G4PHOXXrA=;
	b=EFBGsmmR6q243VF+wlXauMTBGMsILKrq7geT1pnQEieX6a0gPpkr1d/lb9KS1iBmF/0cma
	ycwKYXxM/GopSfdsCIZd/x8x0smN8dVjMZqY4NdDGM3IZk7m1jmejxR5DexcMRplskxRks
	Ib4/46hsfwNuaXnrbA653grzgIHwHiuCbq8Mcdq8C2/svExWyhpY31ADGDH7Rzpk7FwWOh
	d6UlufudOoNDQikO5V7emwxrKDc6cLmTx7PgplfBWqj+6gI5pQQ58gtmzdHSrIQnugEjmQ
	tR0Q5wKQcK/ZOMmzLuGBbcbMOttOtC/NNa93WNuthUgxO8v/rAhtnSEuUygJ2A==
Date: Wed, 18 Jan 2023 15:10:56 +0100
MIME-Version: 1.0
Subject: Re: [PATCH v3 0/3] drm/rockchip: dw_hdmi: Add 4k@30 support
To: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org
Cc: Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Robin Murphy <robin.murphy@arm.com>
References: <20230118132213.2911418-1-s.hauer@pengutronix.de>
Content-Language: en-US
From: Dan Johansen <strit@manjaro.org>
Organization: Manjaro ARM
In-Reply-To: <20230118132213.2911418-1-s.hauer@pengutronix.de>
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=strit@manjaro.org smtp.mailfrom=strit@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_061106_481221_332C8076 
X-CRM114-Status: GOOD (  14.68  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Tested the whole series on my Rock 3A, with my 1440p monitor. Works wonders!

Thank you.

Tested-by: Dan Johansen <strit@manjaro.org>

Den 18.01.2023 kl. 14.22 skrev Sascha Hauer:
> It's been some time since I last sent this series. This version fixes
> a regression Dan Johansen reported. The reason turned out to be simple,
> I used the YUV420 register values instead of the RGB ones.
>
> I realized that we cannot achieve several modes offered by my monitor
> as these require pixelclocks that are slightly below the standard
> pixelclocks. As these are lower than the standard clock rates the PLL
> driver offers the clk driver falls back to a way lower frequency
> which results in something the monitor can't display, so this series
> now contains a patch to discard these unachievable modes.
>
> Sascha
>
> Changes since v2:
> - Use correct register values for mpll_cfg
> - Add patch to discard modes we cannot achieve
>
> Changes since v1:
> - Allow non standard clock rates only on Synopsys phy as suggested by
>    Robin Murphy
>
> Sascha Hauer (3):
>    drm/rockchip: dw_hdmi: relax mode_valid hook
>    drm/rockchip: dw_hdmi: Add support for 4k@30 resolution
>    drm/rockchip: dw_hdmi: discard modes with unachievable pixelclocks
>
>   drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 40 ++++++++++++++++-----
>   1 file changed, 32 insertions(+), 8 deletions(-)
>
-- 
Kind regards
*Dan Johansen*
Project lead of the *Manjaro ARM* project
Manjaro-ARM <https://manjaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADCBBC43219
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Oct 2022 15:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:Subject:From:References:Cc:To:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vJZ5SfourKsl1590slCh+Egbg3A0PE+TRCFAmFjH284=; b=AAyPgzvfBicUH1
	y5SrMHRx3IbE+3yl9yNj6ODT+XZDu84W8oEgbvggH8nMxWq3A2woKHF/frQ12yVmtuSY53VrZdT6d
	ZJYsbWBCIhOpJbaJjOa0IsR/L7/BakzIL22+e0dVvNXNNbO7kTPIwcJFJkM9iqxsz3jpHO57ZPgI2
	qj73oYqXLTCs7Tfh3zEGZTqFxmlApT31yptn+YoLpaGeHOJfYEDy620Tiw1ppPUqahJogt/3HNBjM
	SYvnhQpJTk3N4JxilesaxKUgVjsCHEXb1FH99juoDWHIBUn2g9eO0L/1sehdN56ILJ+CAO05HxBS4
	468bAEJ19sM9aAUA4Dow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okoA4-007R3X-44; Tue, 18 Oct 2022 15:05:44 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okoA0-007R1R-85
	for linux-rockchip@lists.infradead.org; Tue, 18 Oct 2022 15:05:42 +0000
Message-ID: <5064b64a-6b83-d6d1-2e76-3a211ba2fae9@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1666105533;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vwjPKnn9bq7XF1y3qpMPowZjiXLSgwmSEAW5kvtiP3o=;
	b=QnRTIBOB5K9dDQSauhfix871mYwdVd38+/WjfrEJI60+JnjoOfjsOv3ZvzAB31bHTKjlYl
	nByYN/FB0AKYM8pgbSJYStnP1DSdaKMbnvvp7TCpFy9/bGUT1sDtphs5NIITUvR4BDY/b2
	tIpXWtEs11ERVA0319Eu1xUjhMWsIfmJzdfbM7OYDTbMNT20aaa3ItG1SMvS6D1OLZD4jd
	r/zcqKuoSEN7bPzzUIN7QKCvD95HgjpHZK1VF/ttGeSB9O4kI2hbGMmrMS1mlDhU4u4on+
	j+XPeJooZrq/A9iNxoAGoxsEmdI5RiYzDw/ej/F6kST9qoQYUmF58ToV1oMZqg==
Date: Tue, 18 Oct 2022 17:05:31 +0200
MIME-Version: 1.0
Content-Language: da-DK
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Robin Murphy <robin.murphy@arm.com>
References: <20220926080435.259617-1-s.hauer@pengutronix.de>
 <cf2285dc-d732-0c6d-83bc-022f23f29524@wolfvision.net>
 <2430a203-f8e7-7d78-3e9e-9e1d9c6826c9@manjaro.org>
 <20220928083755.GU986@pengutronix.de>
 <2f341aa8-b960-26d1-8073-737f828a8805@manjaro.org>
 <20221005100618.GS12909@pengutronix.de>
 <7721ac8b-7e8d-5131-70aa-7579d912a2bb@manjaro.org>
 <20221005111004.GS986@pengutronix.de>
From: Dan Johansen <strit@manjaro.org>
Organization: Manjaro ARM
Subject: Re: [PATCH v2 0/2] drm/rockchip: dw_hdmi: Add 4k@30 support
In-Reply-To: <20221005111004.GS986@pengutronix.de>
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=strit@manjaro.org smtp.mailfrom=strit@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221018_080540_926155_9D91710E 
X-CRM114-Status: GOOD (  14.72  )
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


Den 05.10.2022 kl. 13.10 skrev Sascha Hauer:
> On Wed, Oct 05, 2022 at 12:51:57PM +0200, Dan Johansen wrote:
>> Den 05.10.2022 kl. 12.06 skrev Sascha Hauer:
>>> On Wed, Sep 28, 2022 at 10:39:27AM +0200, Dan Johansen wrote:
>>>> Den 28.09.2022 kl. 10.37 skrev Sascha Hauer:
>>>>> On Tue, Sep 27, 2022 at 07:53:54PM +0200, Dan Johansen wrote:
>>>>>> Den 26.09.2022 kl. 12.30 skrev Michael Riesch:
>>>>>>> Hi Sascha,
>>>>>>>
>>>>>>> On 9/26/22 10:04, Sascha Hauer wrote:
>>>>>>>> This series adds support for 4k@30 to the rockchip HDMI controller. This
>>>>>>>> has been tested on a rk3568 rock3a board. It should be possible to add
>>>>>>>> 4k@60 support the same way, but it doesn't work for me, so let's add
>>>>>>>> 4k@30 as a first step.
>>>>>>>> 														     Sascha
>>>>>>>>
>>>>>>>> Changes since v1:
>>>>>>>> - Allow non standard clock rates only on Synopsys phy as suggested by
>>>>>>>>       Robin Murphy
>>>>>>>>
>>>>>>>> Sascha Hauer (2):
>>>>>>>>       drm/rockchip: dw_hdmi: relax mode_valid hook
>>>>>>>>       drm/rockchip: dw_hdmi: Add support for 4k@30 resolution
>>>>>>>>
>>>>>>>>      drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 34 ++++++++++++++++-----
>>>>>>>>      1 file changed, 27 insertions(+), 7 deletions(-)
>>>>>>> Thanks for the v2! On a RK3568 EVB1 with a HP 27f 4k monitor
>>>>>>>
>>>>>>> Tested-by: Michael Riesch <michael.riesch@wolfvision.net>
>>>>>> Sadly this still doesn't give my display out on my 2k monitor. Not even just
>>>>>> 1080p picture like the old current implementation does.
>>>>> By "like the old current implementation" you mean that this patchset
>>>>> introduces a regression for you?
>>>> Yes. What currently in the kernel at least shows as 1080p on my 2K monitor,
>>>> while this patchset turns off the screen.
>>> Which SoC are you testing this on? I assume RK3568, right? Which patch
>>> introduces that regression, the first or the second one?
>> I tested on the Odroid M, which is rk3568.
>> I have only applied them both, as I was under the impression that both are
>> needed for the 4k support.
> Yes, both I needed, but I am interested which one introduces the
> regression as I can't reproduce it.

Okay. Here's the result of some more tests of mine.

Patch 1 by itself does not introduce any regressions on either 1080p or 
2k monitors.

Patch 2 by itself does not introduce any regressions on either 1080p or 
2k monitors.

Applying both Patch 1 and 2, _does_ introduce the regression on my 2k 
monitor, but _not_ on my 1080p monitor.

The 2k monitor is a Dell P2418D with up to 2560x1440 resolution.

The 1080p monitor is a Sony Bravia 46" TV with up to 1920x1080 resolution.

>
> Sascha
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

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82088C04A95
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Sep 2022 08:39:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZZcxNgLVzAlT+tOs4bzgIDPkAcVsZA312xpbVI276U4=; b=4HCuxe5xvEx8I4
	nNe5hQlqnmYauf/tz4bJ4cWSSkOV8wPQLRLNQHWv2j+qcPs6x4D6yCtat7Yh+2+rZrTUeJouNSe40
	bYU2VJ74SgFSC4/syu+CkJUyfb+Xr69zPGPvkOJzJ8cO9iMLME7TDbEq41PbVsqlcLYwA8KyGr+RF
	mbsZJdfKfoCj4/ZRo5Pn70NAFJAcbUo3h1d6yHRhW/fHpzeshqm4HgqNGGV0IfhOqbeUQqigeraKN
	SV/GglBQp/LDdup7fI+FNZsUDkwoU0eldFB03SlQznGpnQBNu/REYKOpF9A8kCGwTnrAMtoN7Oa2I
	kTSt38ztbLjTCfzvGIfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odSbU-00EwRw-Dd; Wed, 28 Sep 2022 08:39:40 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odSbP-00EwP2-Jy
	for linux-rockchip@lists.infradead.org; Wed, 28 Sep 2022 08:39:37 +0000
Message-ID: <2f341aa8-b960-26d1-8073-737f828a8805@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1664354368;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=odnCR32h5bJchqerHBwrx1Lt5l9YbS6widivPl5LNjY=;
	b=pJWdtNKRskTs+7ssI6eg3TAS8vHINylC05MFxd8MfuzRpr6dJTytJ32n0QC4ovEBbtpzTZ
	VyW270OPYGeU7Ivb6PgIh+z7aTN2AXSepXuCXcKCzeWtSDxzDpgifkXyaqEPYg24aGjIIU
	ZLBrT0IhMOQc2lQWXyvu4Qmt4bmcrXMlc9lEzi29TfxXojxzeKi0JyWXKosi0G0duUaLS/
	uikpXkYClldjEgeOSJpTzpYZ1+Tqwc5RLyuh91QZF3hm6eC82l/rVhJq9HHENROdIfrlA7
	uGhca2zF3VLcJMmPj5HidkNUdianstCpEV/x1bF4yoeJYB0OUqNQ+PpBIlfKtw==
Date: Wed, 28 Sep 2022 10:39:27 +0200
MIME-Version: 1.0
Subject: Re: [PATCH v2 0/2] drm/rockchip: dw_hdmi: Add 4k@30 support
Content-Language: da-DK
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Michael Riesch <michael.riesch@wolfvision.net>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, kernel@pengutronix.de, Robin Murphy <robin.murphy@arm.com>
References: <20220926080435.259617-1-s.hauer@pengutronix.de>
 <cf2285dc-d732-0c6d-83bc-022f23f29524@wolfvision.net>
 <2430a203-f8e7-7d78-3e9e-9e1d9c6826c9@manjaro.org>
 <20220928083755.GU986@pengutronix.de>
From: Dan Johansen <strit@manjaro.org>
Organization: Manjaro ARM
In-Reply-To: <20220928083755.GU986@pengutronix.de>
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=strit@manjaro.org smtp.mailfrom=strit@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_013936_303414_F3948534 
X-CRM114-Status: GOOD (  12.25  )
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


Den 28.09.2022 kl. 10.37 skrev Sascha Hauer:
> On Tue, Sep 27, 2022 at 07:53:54PM +0200, Dan Johansen wrote:
>> Den 26.09.2022 kl. 12.30 skrev Michael Riesch:
>>> Hi Sascha,
>>>
>>> On 9/26/22 10:04, Sascha Hauer wrote:
>>>> This series adds support for 4k@30 to the rockchip HDMI controller. This
>>>> has been tested on a rk3568 rock3a board. It should be possible to add
>>>> 4k@60 support the same way, but it doesn't work for me, so let's add
>>>> 4k@30 as a first step.
>>>> 														     Sascha
>>>>
>>>> Changes since v1:
>>>> - Allow non standard clock rates only on Synopsys phy as suggested by
>>>>     Robin Murphy
>>>>
>>>> Sascha Hauer (2):
>>>>     drm/rockchip: dw_hdmi: relax mode_valid hook
>>>>     drm/rockchip: dw_hdmi: Add support for 4k@30 resolution
>>>>
>>>>    drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 34 ++++++++++++++++-----
>>>>    1 file changed, 27 insertions(+), 7 deletions(-)
>>> Thanks for the v2! On a RK3568 EVB1 with a HP 27f 4k monitor
>>>
>>> Tested-by: Michael Riesch <michael.riesch@wolfvision.net>
>> Sadly this still doesn't give my display out on my 2k monitor. Not even just
>> 1080p picture like the old current implementation does.
> By "like the old current implementation" you mean that this patchset
> introduces a regression for you?
Yes. What currently in the kernel at least shows as 1080p on my 2K 
monitor, while this patchset turns off the screen.
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

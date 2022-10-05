Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99A0CC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Oct 2022 12:29:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ScN5nOE8lwheCfZ9/Bad/EqByvYqqm+8pTUhNQ+hyz4=; b=ccSOS1pW0k3BKd
	80++VEO8yv80rP6vqqWselwCktEGzAWQnyhk4SV8LABcKKOY+ULFwo91xmyEiTntoq25TsMmaa6O3
	5saFGSOfztaKskwy7a0GYI7jA3R4jtSujG/PIVfi4BzYcjra8Xd/Wh2IAJ+Oc45JbmI1zS0PjL4BM
	+j755wi4l3v1lxDeKWcRjTvPp1v+6ZtNNJ/lrrwpJt0fYbIuyJ+4+fp8oDbmCBGUUSnSltKyBdP5x
	KUeWxGeLrh5BjS5FJHkhtVuBEq4jjCoaEiE4+62lzYCeLJR3O6nJDxVhynKsSDgTlLeW7rtGQKfKe
	a/eou9ylnQxKLFf1Pcuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1og3WU-00E2JM-Du; Wed, 05 Oct 2022 12:29:14 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1og3WR-00E2Io-6N
	for linux-rockchip@lists.infradead.org; Wed, 05 Oct 2022 12:29:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C68C3113E;
	Wed,  5 Oct 2022 05:29:11 -0700 (PDT)
Received: from [10.57.65.170] (unknown [10.57.65.170])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BF7223F73B;
	Wed,  5 Oct 2022 05:29:03 -0700 (PDT)
Message-ID: <583a33d6-9386-14c8-8374-ab53deb4fe34@arm.com>
Date: Wed, 5 Oct 2022 13:28:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH v2 0/2] drm/rockchip: dw_hdmi: Add 4k@30 support
Content-Language: en-GB
To: Sascha Hauer <s.hauer@pengutronix.de>, Dan Johansen <strit@manjaro.org>
Cc: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de
References: <20220926080435.259617-1-s.hauer@pengutronix.de>
 <cf2285dc-d732-0c6d-83bc-022f23f29524@wolfvision.net>
 <2430a203-f8e7-7d78-3e9e-9e1d9c6826c9@manjaro.org>
 <20220928083755.GU986@pengutronix.de>
 <2f341aa8-b960-26d1-8073-737f828a8805@manjaro.org>
 <20221005100618.GS12909@pengutronix.de>
 <7721ac8b-7e8d-5131-70aa-7579d912a2bb@manjaro.org>
 <20221005111004.GS986@pengutronix.de>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20221005111004.GS986@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221005_052911_379594_85A787F3 
X-CRM114-Status: GOOD (  17.76  )
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

On 2022-10-05 12:10, Sascha Hauer wrote:
> On Wed, Oct 05, 2022 at 12:51:57PM +0200, Dan Johansen wrote:
>>
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
> 
> Yes, both I needed, but I am interested which one introduces the
> regression as I can't reproduce it.

One thing that might be worthwhile is to compare what "drm.debug=4" 
output says about the chosen mode and its clock rate vs. what 
/sys/kernel/debug/clk/clk_summary says about how things ended up in 
practice, to see whether it's a case of the clock not being able to get 
close enough to the correct rate at all.

Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

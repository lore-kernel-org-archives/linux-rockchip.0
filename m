Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4935CC4332F
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Oct 2022 10:52:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ikc4OZ621HQOx3+q++loUyhtax45/QrkMVIWPO2B9FE=; b=sqZAQSuMLebHpQ
	4MaC+ywKPewnQ2OPErUPGKPU2oNiqpWs4AcSyz5uZKtbXzfnL8FlWMA9yJ98uXV0EiqXUYQWmiaLh
	QS6d0J54Kyr52Qr1c7O23KTGhgnJ8tPrxtYADBPfu6O9UXCNVLo7HZvAxMV5nCwAT1oQuQjdPPHA2
	pKd8fctzISYWlf/rfTVia48dt7GPv77j8wuBz4LsFYlK5LEnhFsEY0n056tMnMWvfskOcR5Owq4Jo
	FwJIRj2XIcL2v9cIdgxNOoHuYj6u1jSAGp6HznTtDP6gLhnjpmis2/lmqNEVPe5U5VbKp6jcbWvbt
	7bjQG2X+qqZbJqyrmAxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1og20a-00DcYe-F5; Wed, 05 Oct 2022 10:52:12 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1og20W-00DcWC-HQ
	for linux-rockchip@lists.infradead.org; Wed, 05 Oct 2022 10:52:10 +0000
Message-ID: <7721ac8b-7e8d-5131-70aa-7579d912a2bb@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1664967119;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=U0ZVUHsfuEk7p9ldcJbZJOH4/lyrdqS9P7JhD3Sj79Q=;
	b=L7tvUjAINCRs6MQgHCUqxk6PUWlXpflww4tiQKGYyKTL7kiODhcmk5cDK2yg3pd9lX/ICj
	CUOErvgU8ZWnWEEKMrXSoDLv1ZCcT1Q7nJ/CjjpnxVOy9zilh7BjkKhG1qUuMsjJSwbzBv
	DBHy1WarrHPXqDPo+aOuzaV8NE5i0RIjSXuqSJfjSAh2N5C8dlYYRGLx2ZLTckccMSJBpK
	Y20dlBmmkURwVMMdNgLYMVlK6lr6EBzo5WDjCy5UF05zwldzXvhTDWtFkuMVAR4ADJf5D2
	5i9/K0kBOCdWGfTasY80ZEwLQ7nfQ8VOba9FPcGpAfKO0A2vVLcGis6tAK0FIg==
Date: Wed, 5 Oct 2022 12:51:57 +0200
MIME-Version: 1.0
Subject: Re: [PATCH v2 0/2] drm/rockchip: dw_hdmi: Add 4k@30 support
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
Content-Language: da-DK
From: Dan Johansen <strit@manjaro.org>
Organization: Manjaro ARM
In-Reply-To: <20221005100618.GS12909@pengutronix.de>
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=strit@manjaro.org smtp.mailfrom=strit@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221005_035209_089652_219587C3 
X-CRM114-Status: GOOD (  13.56  )
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


Den 05.10.2022 kl. 12.06 skrev Sascha Hauer:
> On Wed, Sep 28, 2022 at 10:39:27AM +0200, Dan Johansen wrote:
>> Den 28.09.2022 kl. 10.37 skrev Sascha Hauer:
>>> On Tue, Sep 27, 2022 at 07:53:54PM +0200, Dan Johansen wrote:
>>>> Den 26.09.2022 kl. 12.30 skrev Michael Riesch:
>>>>> Hi Sascha,
>>>>>
>>>>> On 9/26/22 10:04, Sascha Hauer wrote:
>>>>>> This series adds support for 4k@30 to the rockchip HDMI controller. This
>>>>>> has been tested on a rk3568 rock3a board. It should be possible to add
>>>>>> 4k@60 support the same way, but it doesn't work for me, so let's add
>>>>>> 4k@30 as a first step.
>>>>>> 														     Sascha
>>>>>>
>>>>>> Changes since v1:
>>>>>> - Allow non standard clock rates only on Synopsys phy as suggested by
>>>>>>      Robin Murphy
>>>>>>
>>>>>> Sascha Hauer (2):
>>>>>>      drm/rockchip: dw_hdmi: relax mode_valid hook
>>>>>>      drm/rockchip: dw_hdmi: Add support for 4k@30 resolution
>>>>>>
>>>>>>     drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 34 ++++++++++++++++-----
>>>>>>     1 file changed, 27 insertions(+), 7 deletions(-)
>>>>> Thanks for the v2! On a RK3568 EVB1 with a HP 27f 4k monitor
>>>>>
>>>>> Tested-by: Michael Riesch <michael.riesch@wolfvision.net>
>>>> Sadly this still doesn't give my display out on my 2k monitor. Not even just
>>>> 1080p picture like the old current implementation does.
>>> By "like the old current implementation" you mean that this patchset
>>> introduces a regression for you?
>> Yes. What currently in the kernel at least shows as 1080p on my 2K monitor,
>> while this patchset turns off the screen.
> Which SoC are you testing this on? I assume RK3568, right? Which patch
> introduces that regression, the first or the second one?
I tested on the Odroid M, which is rk3568.
I have only applied them both, as I was under the impression that both 
are needed for the 4k support.
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

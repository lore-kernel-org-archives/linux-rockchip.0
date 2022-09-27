Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7AB9C07E9D
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Sep 2022 17:54:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=viipVh77XYcW1pWe0nWSrIEBpyFIrpE6jP/1wsXq87U=; b=CyXdCrj1ALBenU
	eEgyXrp2gNReu5LmmHP8TpqXOT30lQLaI1YAceypLxZ1t/oR+ccJUKuy2VtFihtSidAeKFI28b9op
	D7rcptKhuZ55mXq0sL3K46pMRP8qE6a/O8bLMsroVTKyW9iPJGidN4CSdbn1MAe1E9DDahDHO4ePQ
	O1ji+D3IGiIJmC60oH3rK1BUIsoYtOCfRDOqFujzzOSU7TAwDBiMOOlA0MlMNK+beTNWTdt2qRyi6
	YzEjOPjJqRLa0Wfzv+ufZajMNjhX51zvqCGkvLc9Buq+Wyemi0VcRmqx9wM3PmaWLDShEmS8M88oU
	4SwO+e5SG/Bew3cZ1Mkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odEmY-00C4Zz-96; Tue, 27 Sep 2022 17:54:10 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odEmT-00C4VU-AB
	for linux-rockchip@lists.infradead.org; Tue, 27 Sep 2022 17:54:07 +0000
Message-ID: <2430a203-f8e7-7d78-3e9e-9e1d9c6826c9@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1664301235;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rlXUgXCriowHMoD+UbuC8uS7M0ukzwfVFCBxHU+1p7U=;
	b=xzFTW0vI6JFzJH/lQ5QyYcY0LOV+svwCyzJ3f9A7EvU8qat067mYCxMkjEt58GJ1fKDA33
	u/chyZS/CLoKLuf+fAOIocu4ijMOtPxjoDAwU4gi7ZsbhZsw4DAKYvziPglkjYBRa7JJxH
	0IbrHswHBsaUd5uN6n2Fzentz1MfY6bnhznYHzyd3rcFYgkGaVz/W6UYuQGSFMKeoB7kKy
	4TUAGROoMcDY96oaueh8QLRV7yH0IxMEV8JXsM6llELKBzE3kh9+wfnVL39BBqgV6oft4A
	T3YQUp4vpJ7cz0nKceN5dA5ykLsKZjvAQ6AMT3tLQI8rP0F3mSzthEOnd6HMkA==
Date: Tue, 27 Sep 2022 19:53:54 +0200
MIME-Version: 1.0
Subject: Re: [PATCH v2 0/2] drm/rockchip: dw_hdmi: Add 4k@30 support
Content-Language: da-DK
To: Michael Riesch <michael.riesch@wolfvision.net>,
 Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>, kernel@pengutronix.de,
 Robin Murphy <robin.murphy@arm.com>
References: <20220926080435.259617-1-s.hauer@pengutronix.de>
 <cf2285dc-d732-0c6d-83bc-022f23f29524@wolfvision.net>
From: Dan Johansen <strit@manjaro.org>
Organization: Manjaro ARM
In-Reply-To: <cf2285dc-d732-0c6d-83bc-022f23f29524@wolfvision.net>
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=strit@manjaro.org smtp.mailfrom=strit@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_105405_890141_273D9171 
X-CRM114-Status: GOOD (  13.06  )
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


Den 26.09.2022 kl. 12.30 skrev Michael Riesch:
> Hi Sascha,
>
> On 9/26/22 10:04, Sascha Hauer wrote:
>> This series adds support for 4k@30 to the rockchip HDMI controller. This
>> has been tested on a rk3568 rock3a board. It should be possible to add
>> 4k@60 support the same way, but it doesn't work for me, so let's add
>> 4k@30 as a first step.
>> 														     Sascha
>>
>> Changes since v1:
>> - Allow non standard clock rates only on Synopsys phy as suggested by
>>    Robin Murphy
>>
>> Sascha Hauer (2):
>>    drm/rockchip: dw_hdmi: relax mode_valid hook
>>    drm/rockchip: dw_hdmi: Add support for 4k@30 resolution
>>
>>   drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 34 ++++++++++++++++-----
>>   1 file changed, 27 insertions(+), 7 deletions(-)
> Thanks for the v2! On a RK3568 EVB1 with a HP 27f 4k monitor
>
> Tested-by: Michael Riesch <michael.riesch@wolfvision.net>

Sadly this still doesn't give my display out on my 2k monitor. Not even 
just 1080p picture like the old current implementation does.

>
> Best regards,
> Michael
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
-- 
Kind regards
*Dan Johansen*
Project lead of the *Manjaro ARM* project
Manjaro-ARM <https://manjaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

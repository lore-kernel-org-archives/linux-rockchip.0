Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8AEAD65C75
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Nov 2024 11:13:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gKkM0m5HYai5sJwu8C74FiBY4mEcR3IhCDPGfL+6L1c=; b=2XH/i9IiymHE8G
	AfZcntev7rZMSnTJXe47U4xrPY9Dmv1TPKEp/34QfSt2lsXa5WHAM48Cxk+vBOEq9R67P12KuV2z9
	YhWomhkHaWZCDgZTlpfwppFlCtB91ZFwjHZpe7mhH3CX5IiLtpmxn/XG/KlFNWpXhChOkuAsj8MK/
	7kkXtUsISxrwyWPzY5OeCeIYl+LPvK8i1pKyM/x9Xk8AKzVtakbhIx//iMPHtJJ8xohmkfZoxF8im
	RTo0uMY2W2PC4I6/E/LBQkO9nQWSx5w/2aoKDO3sn8EILRy6G9nMLc/NDXEF1gaSc3rumx9wgCzKd
	a4oOS9QaMg0IEYZ7DDYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBXmo-00000009g8E-0vu4;
	Thu, 14 Nov 2024 11:13:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBWtv-00000009V7U-2KCD;
	Thu, 14 Nov 2024 10:16:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Message-ID:MIME-Version:Content-Type:
	Content-Transfer-Encoding:References:In-Reply-To:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=7V9wVdsv2KPN6OJMuQZ9qJRVimXfMfRzmfZGqmUe64U=; b=fddvixe5A3+RgWACS8LQiq5RNg
	Ibxm1efDfMYPC4em1592MDesV7kVxSWUhEK2QvicFBD1LY8OrCMhnSCTInFa2+fa0uFnJNUW3XgKu
	piTtlZVQfO6vdvkXkUNSLM3KFay8buxCrYLkir6GN0X4aavko0hdE9CbMccKHDomrQWsF9p+Bamtu
	Qq6QZtXDpEJYorIhpSYVrgKcPnW+blylr/YMIc9AZfgghhghoyZdTIWBUbgRzH02OMQUbkCMsKewc
	WedLDKJMO5k4SBDK8QpSFAxqGWdI4rJwTF/r+6rBsZO9IFU3qgpeJdwA8voKhJj6Q5MicIN3VhDeu
	tPqzw9sw==;
Received: from [117.135.210.3] (helo=m16.mail.163.com)
	by desiato.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBWtq-0000000DbMq-38DR;
	Thu, 14 Nov 2024 10:16:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=SBxPGRViDy4qKEA2AnUoV0QLf9gm+WUYbFAU+oupm6M=; b=S
	+5J8jhiUOEuqKW0Plv8Pw/8TupVhT2xnRcsYGOzmGB2oq9rSLjyuL8CC4zX0tFvV
	5rdPoQfbcBmMDm/f9OwlgXxa3lpKgejF3RSpGy+k8uxf8WygwS2VFrJd5WI7mL0U
	Itkm8EDuCFn5Qm0PfwMob2+Ls+Jw4w9YIM84bUkvSE=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-129 (Coremail) ; Thu, 14 Nov 2024 18:16:10 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Thu, 14 Nov 2024 18:16:10 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Quentin Schulz" <quentin.schulz@cherry.de>
Cc: "Heiko Stuebner" <heiko@sntech.de>, hjc@rock-chips.com, 
	andy.yan@rock-chips.com, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	"Heiko Stuebner" <heiko.stuebner@cherry.de>
Subject: Re:Re: [PATCH 1/2] drm/rockchip: vop2: fix rk3588 dp+dsi maxclk
 verification
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <030c3b0f-9396-4fbb-af4e-cf2cb58ffac1@cherry.de>
References: <20240425195506.2935955-1-heiko@sntech.de>
 <20240425195506.2935955-2-heiko@sntech.de>
 <cb73853e-4201-4cc9-9e8a-f977e66241f6@cherry.de>
 <72672888.8f9.1932826549b.Coremail.andyshrk@163.com>
 <030c3b0f-9396-4fbb-af4e-cf2cb58ffac1@cherry.de>
X-NTES-SC: AL_Qu2YA/mctkss5iWcbOkZnEobh+Y5UcK2s/ki2YFXN5k0mCTmyg4+bG5cLH7q9fmiKiCmoQmLURl14P5jTa5KbpgvJYJ4KLKrPIqpZhbvvHSv
MIME-Version: 1.0
Message-ID: <63e26c50.a433.1932a2c5c38.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: gSgvCgBX_jTqzTVn+icnAA--.61527W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiMw6XXmc1yndEJwABs5
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241114_101631_371772_D161A3DA 
X-CRM114-Status: GOOD (  13.29  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


Hi Quetin,
At 2024-11-14 17:38:56, "Quentin Schulz" <quentin.schulz@cherry.de> wrote:
>Hi Andy,
>
>On 11/14/24 1:50 AM, Andy Yan wrote:
>> 
>> Hi,
>> 
>> At 2024-05-06 15:44:36, "Quentin Schulz" <quentin.schulz@cherry.de> wrote:
>>> Hi Heiko,
>>>
>>> On 4/25/24 9:55 PM, Heiko Stuebner wrote:
>>>> From: Heiko Stuebner <heiko.stuebner@cherry.de>
>>>>
>>>> The clock is in Hz while the value checked against is in kHz, so
>>>> actual frequencies will never be able to be below to max value.
>>>> Fix this by specifying the max-value in Hz too.
>>>>
>>>> Fixes: 5a028e8f062f ("drm/rockchip: vop2: Add support for rk3588")
>>>> Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
>>>> ---
>>>>    drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 4 ++--
>>>>    1 file changed, 2 insertions(+), 2 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>>>> index 9bee1fd88e6a2..523880a4e8e74 100644
>>>> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>>>> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>>>> @@ -1719,7 +1719,7 @@ static unsigned long rk3588_calc_cru_cfg(struct vop2_video_port *vp, int id,
>>>>    		else
>>>>    			dclk_out_rate = v_pixclk >> 2;
>>>>    
>>>> -		dclk_rate = rk3588_calc_dclk(dclk_out_rate, 600000);
>>>> +		dclk_rate = rk3588_calc_dclk(dclk_out_rate, 600000000);
>>>>    		if (!dclk_rate) {
>>>>    			drm_err(vop2->drm, "DP dclk_out_rate out of range, dclk_out_rate: %ld KHZ\n",
>>>
>>> It seems the error message is incorrect as well and should be saying Hz
>>> instead of KHz. (note also the lowercase z).
>> 
>> I think kHz is fine, we can find many siminary usage in drm:
>> 
>> drivers/gpu/drm/drm_vblank.c
>> 656:    drm_dbg_core(dev, "crtc %u: clock %d kHz framedur %d linedur %d\n",
>
>The issue is that we print kHz for something that is in Hz, not that we 
>print a value in kHz.
>
>The former is incorrect, the latter is fine. We are in the former 
>scenario here I believe, so it needs to be fixed.

Yes, you are right.

>
>Cheers,
>Quentin
>
>_______________________________________________
>Linux-rockchip mailing list
>Linux-rockchip@lists.infradead.org
>http://lists.infradead.org/mailman/listinfo/linux-rockchip
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

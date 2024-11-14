Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 982F7D637D5
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Nov 2024 00:54:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CwM97G+SNss6nOMiQce460wb9uG9ROIVwPeh4bX3ROs=; b=o7A2NoN8g34D5V
	AJd465j8TpX3T10Cjkioh9vSniqUu/ttILVZ68jrvZ4/zNUAGCfRalDxQxAKlTIvjYMYAHSZPDLEJ
	acQAmMsHw5Qyi7gZ3anoiXPR4tP06TOI7I5RqC4a5scs+iD/ODrw3iveSoauHU4pJtuABBCMfodFb
	eIDR7x9sjGxzZ0w+8uqC1ZQpbJeh8V6Vr+7bkC+/ps302sspVGmdZ7BM242DWMN7I0LDNUylUg+fi
	KEvTq/dKQarvt10zviwiRO1qrjJH1thUmwlY+zdAbDyzZrOwbV1POJe6JtYXhL7Wj5JMEdeQadzif
	13zPqkA1gWlPzEcWHO1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBO8I-00000008NlB-2jL0;
	Thu, 14 Nov 2024 00:54:50 +0000
Received: from m16.mail.163.com ([220.197.31.4])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBO4A-00000008NIG-1SCR;
	Thu, 14 Nov 2024 00:50:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=HxStjIbqCkHIGsb5YkLzMTsySu2+FeJnPPzLOOGhizw=; b=k
	8lCXi3/VVMZA7GmT/BivtNVcY43y+238j3Csx+YKmsAdK7gRrJnZrMm++OVJs6cE
	eNFzB9PWcKHuTP/dk78GzfKKXSF5FHo9597UVfze6R6X2cs8lD9avI9IGAgUbm7P
	yLZOobo+5xtZhOCOGbCObTIgRlYt/Zf+Cvrwqkv3KQ=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-129 (Coremail) ; Thu, 14 Nov 2024 08:50:20 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Thu, 14 Nov 2024 08:50:20 +0800 (CST)
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
In-Reply-To: <cb73853e-4201-4cc9-9e8a-f977e66241f6@cherry.de>
References: <20240425195506.2935955-1-heiko@sntech.de>
 <20240425195506.2935955-2-heiko@sntech.de>
 <cb73853e-4201-4cc9-9e8a-f977e66241f6@cherry.de>
X-NTES-SC: AL_Qu2YA/mfukwp5imdZekZnEobh+Y5UcK2s/ki2YFXN5k0mCTmyg4+bG5cLH7q9fmiKiCmoQmLURl14P5jTa5KbpjPaX03fUneRyBcUR0WBzmI
MIME-Version: 1.0
Message-ID: <72672888.8f9.1932826549b.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: gSgvCgD3_+JNSTVnfU8mAA--.60608W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0hKXXmc1QEikyQABs-
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241113_165034_766917_F7B6247A 
X-CRM114-Status: GOOD (  11.53  )
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


Hi,

At 2024-05-06 15:44:36, "Quentin Schulz" <quentin.schulz@cherry.de> wrote:
>Hi Heiko,
>
>On 4/25/24 9:55 PM, Heiko Stuebner wrote:
>> From: Heiko Stuebner <heiko.stuebner@cherry.de>
>> 
>> The clock is in Hz while the value checked against is in kHz, so
>> actual frequencies will never be able to be below to max value.
>> Fix this by specifying the max-value in Hz too.
>> 
>> Fixes: 5a028e8f062f ("drm/rockchip: vop2: Add support for rk3588")
>> Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
>> ---
>>   drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>> index 9bee1fd88e6a2..523880a4e8e74 100644
>> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>> @@ -1719,7 +1719,7 @@ static unsigned long rk3588_calc_cru_cfg(struct vop2_video_port *vp, int id,
>>   		else
>>   			dclk_out_rate = v_pixclk >> 2;
>>   
>> -		dclk_rate = rk3588_calc_dclk(dclk_out_rate, 600000);
>> +		dclk_rate = rk3588_calc_dclk(dclk_out_rate, 600000000);
>>   		if (!dclk_rate) {
>>   			drm_err(vop2->drm, "DP dclk_out_rate out of range, dclk_out_rate: %ld KHZ\n",
>
>It seems the error message is incorrect as well and should be saying Hz 
>instead of KHz. (note also the lowercase z).

I think kHz is fine, we can find many siminary usage in drm:

drivers/gpu/drm/drm_vblank.c
656:    drm_dbg_core(dev, "crtc %u: clock %d kHz framedur %d linedur %d\n",
>
>>   				dclk_out_rate);
>> @@ -1736,7 +1736,7 @@ static unsigned long rk3588_calc_cru_cfg(struct vop2_video_port *vp, int id,
>>   		 * dclk_rate = N * dclk_core_rate N = (1,2,4 ),
>>   		 * we get a little factor here
>>   		 */
>> -		dclk_rate = rk3588_calc_dclk(dclk_out_rate, 600000);
>> +		dclk_rate = rk3588_calc_dclk(dclk_out_rate, 600000000);
>>   		if (!dclk_rate) {
>>   			drm_err(vop2->drm, "MIPI dclk out of range, dclk_out_rate: %ld KHZ\n",
>
>Ditto.
>
>Otherwise,
>
>Reviewed-by: Quentin Schulz <quentin.schulz@cherry.de>

Acked-by: Andy Yan<andyshrk@163.com>

>
>Thanks!
>Quentin
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

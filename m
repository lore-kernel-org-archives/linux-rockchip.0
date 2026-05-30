Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 357D3CD6E52
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 May 2026 13:38:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Subject:From:To:
	Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JI01oH9Sv7IfQoF3qtTlPsf6GSjNeaCH4m82nrO63w4=; b=G0RkJziEUE9NiG
	KFXPf1+7QG4919tHCLPrG9MH1WBd0kXctTM3/gd1vYxgq9ZaGUZ3CN/sxvKn3jv4hmBk6wgNP6Cp2
	c42Ft5yc6hNwJuyAopYhV6fgC16/afuFFwefhKgIgvoKjDeZ/9i42Zn0DgFl/pLewzsqxCFoJtrTt
	WCxmPhR8yAzpJ6zgA2m25ZmvZqcbP+3phA+PTCGEQeUTjNM4ieWczM+ZveEFu80z+L9wPAOY1R6fQ
	IEC+rXIOwCf3f2IFPav54ECmZQJx4RpOcD7Ei9M8/6LZcaUJUuUr2H2nWeYX8Mc37Bbht6Lk6jEF0
	vsdOauhkrmafo9RiUmXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTJtR-00000008lkS-3sRg;
	Sat, 30 May 2026 13:38:25 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTJtO-00000008ljm-13QT
	for linux-rockchip@lists.infradead.org;
	Sat, 30 May 2026 13:38:24 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 986674E42DA2;
	Sat, 30 May 2026 13:38:20 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 490586073B;
	Sat, 30 May 2026 13:38:20 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id C663610888CC8;
	Sat, 30 May 2026 15:38:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1780148298; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=HKrIBJHZD91OGHEHVz5icU8jb2dXEwclJl95UpuDS+U=;
	b=0Ec7yLjHV7F3GfRWpGS/Jh45rOIY/RCXZ6DwjKTCVXMkdaD1xzjp6Y9XyRUkjyFtFZfuOF
	3P9QhCvry/SyDVW4RyYe/KaOzIrbL6MJgGDQ/YmLYcItXJI0fH33gfSrAON6P+dq6a/m3r
	JZRwfZNaYNZNdiyb5cMRN007pFtXOz6LowX1oNqXurum5rFfxcHPTmmIvDzdTI8XOanlfZ
	cTlS4RLyJ1pv0NiT+gTpGvH4u+J6JRbm5ElJ++gnZLG/8jfkzAjakCKu/hZBH91W3Ga5nu
	ybQ4NtweDzYbPMWJAs2u08gXQlqMmVNoiygSG7yri/prWlXLGR5JTurKvIYDRw==
Mime-Version: 1.0
Date: Sat, 30 May 2026 15:38:05 +0200
Message-Id: <DIW1WGLL0GW5.1BGU194UXN0HO@bootlin.com>
To: "Luca Ceresoli" <luca.ceresoli@bootlin.com>, "Damon Ding"
 <damon.ding@rock-chips.com>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v4 2/3] drm/bridge: analogix_dp: Add validation for
 samsung,lane-count property
X-Mailer: aerc 0.21.0
References: <20260529040530.741336-1-damon.ding@rock-chips.com>
 <20260529040530.741336-3-damon.ding@rock-chips.com>
 <178014803941.21632.16225608049285101452.b4-review@b4>
In-Reply-To: <178014803941.21632.16225608049285101452.b4-review@b4>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260530_063822_447295_CB167D8C 
X-CRM114-Status: GOOD (  15.82  )
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
Cc: heiko@sntech.de, dri-devel@lists.freedesktop.org, dianders@chromium.org, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, airlied@gmail.com, m.szyprowski@samsung.com, simona@ffwll.ch, robh@kernel.org, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, maarten.lankhorst@linux.intel.com, mripard@kernel.org, linux-arm-kernel@lists.infradead.org, dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org, hjc@rock-chips.com, linux-kernel@vger.kernel.org, tzimmermann@suse.de, andy.yan@rock-chips.com, krzk+dt@kernel.org, nicolas.frattaroli@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sat May 30, 2026 at 3:33 PM CEST, Luca Ceresoli wrote:
> On Fri, 29 May 2026 12:05:29 +0800, Damon Ding <damon.ding@rock-chips.com> wrote:
>
> Hello Damon,
>
>>
>> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
>> index 8cf6b73bceac..699a7f380c56 100644
>> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
>> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
>> @@ -1260,8 +1261,16 @@ static int analogix_dp_dt_parse_pdata(struct analogix_dp_device *dp)
>>  		 */
>>  		of_property_read_u32(dp_node, "samsung,link-rate",
>>  				     &video_info->max_link_rate);
>> -		of_property_read_u32(dp_node, "samsung,lane-count",
>> -				     &video_info->max_lane_count);
>> +		ret = of_property_read_u32(dp_node, "samsung,lane-count",
>> +					   &video_info->max_lane_count);
>> +		if (!ret) {
>> +			if (video_info->max_lane_count == 0 ||
>> +			    video_info->max_lane_count > LANE_COUNT4) {
>
> This sashiko report seems to me valid.

Meh, messed up with 'b4 review' :-/ Apologies

"This sashiko report" [0] was about an enum being signed, so '== 0' could miss
negative numbers coming from bogus DT values higher than 1^31.

>
> But I'n no DP expert, I have no idea whether this ther one is valid.

And this was about "Additionally, does this check inadvertently allow 3,
which is an invalid DisplayPort lane count?"

>> +				dev_err(dp->dev, "samsung,lane-count = %d is out of range\n",
>> +					video_info->max_lane_count);
>> +				return -EINVAL;
>> +			}
>> +		}
>
> As reported by sashiko, 'count == 0' should be 'count <= 0', being an enum.
>
> Additionally I'd avoid the nested if, and I think using dev_err_probe() is
> correct here (we are only called by probe functions), so it all could
> become:
>
>    if (ret || count <= 0 || count > LANE_COUNT0)
>         return dev_err_probe(...);
>
> There are other sashiko reports to patch 3, and at least one seems valid to
> me. Can you either fix them in the next iteration or elaborate on why the
> code is correct there?
>
> Thanks!


[0] https://sashiko.dev/#/patchset/20260529040530.741336-1-damon.ding%40rock-chips.com

Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

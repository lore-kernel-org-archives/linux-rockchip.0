Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F11F9C61DF7
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Nov 2023 12:55:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FkhL7CIo7ubKnVTsEwvqrfd+zs6vgwthkPC2rt4XReM=; b=Qzj3Sn4R1GT7F4
	yKlHFhkY0U+PiqpkyPOLzDl7iQGAcvCrrEts/ipsFXlKZDPnIWU71wLVXRPeJPVVNxH7LQqDThZ4N
	l57BsyiBk3EZbh/+GD/Zusjv0h/ovf68zrTjlEHyr1hE4YeVkCPMaH2rml+133vsjBy/WgyvhhNHT
	srG4kSpnhGMIaxp8dWDCu1ll3hFpLWeCvI6C2KSASaLL/eE7vFIkhpR0z7rfWE2EfZXlNkg1WcXzQ
	g1BmOxrlulzs/+RDLdyNMt+bZ0pCiecWJOgIMngLnLEOTeWycn5o6GwmEVZj1WC6gQ6x/VWRhuBIH
	rJGTdq2ZWCl7eenv8PXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r69E9-004q3Q-0r;
	Thu, 23 Nov 2023 12:54:41 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r69E5-004q2B-0b;
	Thu, 23 Nov 2023 12:54:38 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-5437d60fb7aso1126349a12.3;
        Thu, 23 Nov 2023 04:54:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700744072; x=1701348872; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XMiAmI0N+zA2Zy2MN+Me1gO6TWzNpKzUKMz67wciuHU=;
        b=AB0lmfzChtpeC5MNF5nxxf0NnzXhIEmfM18ETfEWTC5Jcg4unFTYhYnzhdStM9xRHR
         Xq4Nv5rjLf3j0KPLjQIBlx3xpSjzx6KLQ1OoP4bSIQIvrJXx3DMKykFSxUjEEw+KaU0F
         xjggPls0NbacgbbXUmcVJer9AThKQAzd3MWjbz3bv6UqgWkixHxWDWYmYN6PrlEE8AdL
         L6ci6m0uaixHeJ1eXLjrUPc6g40Yon9T1+vF7QcrFRZ+VlHP2r1hlYsGxHnCgby2cyJd
         MwNjge2pkprQX5jBO+g5UuBFU+qn+sDcrPa+nWOkipGsagWgcCzDQFFdrnWO54N03Z54
         xMPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700744072; x=1701348872;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XMiAmI0N+zA2Zy2MN+Me1gO6TWzNpKzUKMz67wciuHU=;
        b=c+hOYhHGsI68/zsGPqlu3Bx8wpHinVT3mOxPIB5qZVgkQfSswq+QJa3r6auUfcf9Jh
         HxszjAaEacV33H0i+Gt5yQZ+zZ0gFMk11xBe7+NObi4ENBFKl7mrB1aG2jJlY9xCetbO
         Qp9uIvCNGHnBc9luqWFEPdubeqnNKKsh04aMyniC9RkKoicLHXtU1vI1rnbR06enEUic
         y1LvGy8WRZI7Td0Tri0xu/KgEDsJ7qtU7pVWOcB4t0i75lkEA+Er6iHuG69z7zy/jWrr
         jJ4mMVNA0zaE82lUoeEEMvIngBWgILzb4LQ55DGh8LVchNt3JqHN4Qpn0jvsx3GrABja
         VAXA==
X-Gm-Message-State: AOJu0YxBKwpHNwiJ2LqIhfUl5tg7TBBmM9ianqMNAK/O0i62hqSu1eBt
	eBgHQ4S6KDVmJco/UobYboSn6XQVHFo=
X-Google-Smtp-Source: AGHT+IEfMsMMK3PTkgT5L3rE44Um/aejWIC8WA6lrcJ5UFXUyEvyxQe0w2kXnraoQtMQXn9QN0dt4A==
X-Received: by 2002:a17:906:73c9:b0:a01:d2db:205d with SMTP id n9-20020a17090673c900b00a01d2db205dmr3770078ejl.4.1700744072019;
        Thu, 23 Nov 2023 04:54:32 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id lb16-20020a170907785000b009fda665860csm752780ejc.22.2023.11.23.04.54.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Nov 2023 04:54:30 -0800 (PST)
Message-ID: <bff69815-1185-c74f-82ab-5b8f7faccfac@gmail.com>
Date: Thu, 23 Nov 2023 13:54:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v1 3/4] drm/rockchip: rk3066_hdmi: Remove useless output
 format
To: Heiko Stuebner <heiko@sntech.de>, hjc@rock-chips.com
Cc: airlied@gmail.com, daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <cda574be-4f33-b66d-eb14-92c2b31d241e@gmail.com>
 <bb5cac77-a705-738e-13ae-667ea87f1cb1@gmail.com> <4308014.ejJDZkT8p0@phil>
Content-Language: en-US
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <4308014.ejJDZkT8p0@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231123_045437_227503_0606513B 
X-CRM114-Status: GOOD (  23.75  )
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



On 11/20/23 18:06, Heiko Stuebner wrote:
> Hi Johan,
> 
> Am Donnerstag, 2. November 2023, 14:42:19 CET schrieb Johan Jonker:
>> The Rk3066 hdmi output format is hard coded to RGB. Remove
>> all useless code related to colorimetry and enc_out_format.
>>
>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> 

> I guess my first question is, is the hardcoding happening just because
> of missing functionality in the driver, or does the hardware only
> support RGB?

This driver can do so much more..., but is crippled by various causes.
If in need for a full functional rk3066 driver a little bit help/advise/action from other people is needed.

1:
Missing rk3066 TRM HDMI register info.
Could Rockchip (= Sandy Huang) disclose this info to the open source community?

As a way around we can look at older driver code and port to mainline.
More info gives better results.
rk30_hdmi_config_csc() function:
https://github.com/RockchipOpensourceCommunity/px2-android-kernel-3.0/blob/master/drivers/video/rockchip/hdmi/chips/rkpx2/rkpx2_hdmi_hw.c#L315

2:
Could DRM people show us examples for:
- How to advertise to the VOP driver what data formats (RGB, YCBCR) it can send to the HDMI driver or any other Rockchip DRM sub driver other then RGB.
- Advertise EDID data monitor modes RGB444, YCBCR444 and YCBCR422 to the HDMI driver.

https://github.com/RockchipOpensourceCommunity/px2-android-kernel-3.0/blob/master/drivers/video/rockchip/hdmi/rk_hdmi_edid.c#L217C1-L218C41

3:
Advise when what Infoframe is needed for only RGB vs. the rest according to the specification.
https://engineering.purdue.edu/ece477/Archive/2012/Spring/S12-Grp10/Datasheets/CEC_HDMI_Specification.pdf

rk3066 currently only sends avi info. Does it need vsi as well? Can anyone give some clarity here?
inno_hdime sends avi and vsi info.

4:
rk3066_hdmi and inno_hdmi are HDMI 1.4a drivers for DVI and HDMI.
Validated by drm_match_cea_mode() this function only gives us both HDMI + HDMI2 focus, but nothing for old DVI monitors.
How to improve?

5:
Sound support was submitted:
Re: [PATCH v6 2/5] drm: rockchip: add sound support to rk3066 hdmi driver
https://lore.kernel.org/linux-rockchip/48dbe9b7-0aa0-f459-301f-f380e2b7f2f8@gmail.com/

No reply was given (by Heiko or others) on why it wasn't applied or what needs to be improved.

Without reply no improvement.

Johan


> 
> 
>> ---
>>  drivers/gpu/drm/rockchip/rk3066_hdmi.c | 20 +-------------------
>>  1 file changed, 1 insertion(+), 19 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/rockchip/rk3066_hdmi.c b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
>> index 0e7aae341960..f2b1b2faa096 100644
>> --- a/drivers/gpu/drm/rockchip/rk3066_hdmi.c
>> +++ b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
>> @@ -23,8 +23,6 @@
>>
>>  struct hdmi_data_info {
>>  	int vic; /* The CEA Video ID (VIC) of the current drm display mode. */
>> -	unsigned int enc_out_format;
>> -	unsigned int colorimetry;
>>  };
>>
>>  struct rk3066_hdmi_i2c {
>> @@ -200,14 +198,7 @@ static int rk3066_hdmi_config_avi(struct rk3066_hdmi *hdmi,
>>  	rc = drm_hdmi_avi_infoframe_from_display_mode(&frame.avi,
>>  						      &hdmi->connector, mode);
>>
>> -	if (hdmi->hdmi_data.enc_out_format == HDMI_COLORSPACE_YUV444)
>> -		frame.avi.colorspace = HDMI_COLORSPACE_YUV444;
>> -	else if (hdmi->hdmi_data.enc_out_format == HDMI_COLORSPACE_YUV422)
>> -		frame.avi.colorspace = HDMI_COLORSPACE_YUV422;
>> -	else
>> -		frame.avi.colorspace = HDMI_COLORSPACE_RGB;
>> -
>> -	frame.avi.colorimetry = hdmi->hdmi_data.colorimetry;
>> +	frame.avi.colorspace = HDMI_COLORSPACE_RGB;
>>  	frame.avi.scan_mode = HDMI_SCAN_MODE_NONE;
>>
>>  	return rk3066_hdmi_upload_frame(hdmi, rc, &frame,
>> @@ -329,15 +320,6 @@ static int rk3066_hdmi_setup(struct rk3066_hdmi *hdmi,
>>  	struct drm_display_info *display = &hdmi->connector.display_info;
>>
>>  	hdmi->hdmi_data.vic = drm_match_cea_mode(mode);
>> -	hdmi->hdmi_data.enc_out_format = HDMI_COLORSPACE_RGB;
>> -
>> -	if (hdmi->hdmi_data.vic == 6 || hdmi->hdmi_data.vic == 7 ||
>> -	    hdmi->hdmi_data.vic == 21 || hdmi->hdmi_data.vic == 22 ||
>> -	    hdmi->hdmi_data.vic == 2 || hdmi->hdmi_data.vic == 3 ||
>> -	    hdmi->hdmi_data.vic == 17 || hdmi->hdmi_data.vic == 18)
>> -		hdmi->hdmi_data.colorimetry = HDMI_COLORIMETRY_ITU_601;
>> -	else
>> -		hdmi->hdmi_data.colorimetry = HDMI_COLORIMETRY_ITU_709;
> 

> while I can understand the RGB output format, why does the colorimetry
> also get removed? This looks like it is dependent on the mode itself
> and not the output format?

From the old driver these conditions apply whether csc is needed.
https://github.com/RockchipOpensourceCommunity/px2-android-kernel-3.0/blob/master/drivers/video/rockchip/hdmi/chips/rkpx2/rkpx2_hdmi_hw.c#L320C1-L324C3

	if( ((vpara->input_color == VIDEO_INPUT_COLOR_RGB) && (vpara->output_color == VIDEO_OUTPUT_RGB444)) ||
		((vpara->input_color == VIDEO_INPUT_COLOR_YCBCR) && (vpara->output_color != VIDEO_OUTPUT_RGB444) ))
	{
		return;
	}

> 
> Thanks
> Heiko
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

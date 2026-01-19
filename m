Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE920C9830C
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jan 2026 02:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LPoW+BT+MpAgzNKHM3e2z8quEP4CZ21mSOh2sy6ID2Q=; b=OOrKdGazPMRBe6
	XjIm4GOVfTY0T692Gt9sWRC2y9GpE/okSe5EQq5wXcjvBcEJS/ZqXTMlByvldiYCHYeNbEHOZHkFu
	Ra2TXKNnkfA7xrPRi9r7UidLA5ON6lItcS4Tyv7Iq9ntJMAeRS9Wh26MHWmiFTDkgGYWTJpo556j+
	Yb2JV7jEdvc2NqVXv1PPSc2LpkX9hRSt2vIGeDbpOyo9GP1f4OGcobyRYZ0Ke5ld55zrcQRRbIKP5
	Y1RjI/beguwWVgDiurFn6Z8/NaDL/W2aKx2MeUU3UTw49Bgh2O62CBkvYcydBLP4VD5kue175++wQ
	Tl/ZUCmwLHAiElVuJUqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhfEj-00000001Hmv-0pHP;
	Mon, 19 Jan 2026 02:43:25 +0000
Received: from m16.mail.163.com ([117.135.210.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhfEg-00000001Hjh-10Z1;
	Mon, 19 Jan 2026 02:43:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:To:Subject:Content-Type:MIME-Version:
	Message-ID; bh=TyAXUBD7uOyPYlui3WNLL/25FSRmrDEhXyuUgnSCwxw=; b=f
	24c+GSjt6QNdZT/pv1Iv1y/eT9J3aOEl7FpCqNWRhdhr6sEZDZ5TN2jICXMxpYFX
	ocwdm0nMv7dSbkFRWtmIRmUF3MqQeN1IiEZ/NZPK6/2i6jBITewmt0qNbjlzOzcd
	th94hf2EV2O06FNPQRhpuDOZDrJGJFNCX6akz+d/cU=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-107 (Coremail) ; Mon, 19 Jan 2026 10:42:41 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Mon, 19 Jan 2026 10:42:41 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, mripard@kernel.org,
	maarten.lankhorst@linux.intel.com, tzimmermann@suse.de,
	airlied@gmail.com, simona@ffwll.ch, dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	"Andy Yan" <andy.yan@rock-chips.com>
Subject: Re:Re: [PATCH v2] drm/rockchip: vop2: Add mode valid callback for
 crtc
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2023.4-cmXT build
 20251222(83accb85) Copyright (c) 2002-2026 www.mailtech.cn 163com
In-Reply-To: <aW1uWZD6u4e2o6jF@venus>
References: <20260117020738.294825-1-andyshrk@163.com>
 <aW1uWZD6u4e2o6jF@venus>
X-CM-CTRLMSGS: 3aJFg3BsdXM9MTc2ODc5MDU2MDE3N19jOGE5NTM2MjQ0ZDM5YzliZDkzMTVkZ
 DNkODc4MTZlNQ==
X-NTES-SC: AL_Qu2dCvuSv00t5yacY+kfmUgWjuw/WsG1v/Ul1YBSP556jCHp1zA+YHtOI0XuzsGkOiqykTu2XSVH2/VTe6BkepsbK5GKdGuSvG2Z4ObiVbFiCw==
MIME-Version: 1.0
Message-ID: <5cc9f5c4.27fa.19bd4221378.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: aygvCgDHzwcimm1pknhZAA--.4457W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbC7QJkwmltmiJPpwAA3d
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260118_184323_205043_76FA48FF 
X-CRM114-Status: GOOD (  16.08  )
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


Hello Sebastian,

At 2026-01-19 07:43:35, "Sebastian Reichel" <sebastian.reichel@collabora.com> wrote:
>Hi,
>
>On Sat, Jan 17, 2026 at 10:07:30AM +0800, Andy Yan wrote:
>> From: Andy Yan <andy.yan@rock-chips.com>
>> 
>> The different Video Ports support different maximum resolutions.
>> Reject resolutions that are not supported by a specific VP.
>> 
>> Only the output width is checked because the hardware itself does
>> not have a hard output height limit.
>> 
>> Filter the mode that can't output by the VP/crtc.
>> 
>> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
>> 
>> ---
>
>A common RK3576 setup is VP0 mapped to HDMI and VP1 mapped to USB-C
>DP AltMode. Since RK3576 VP1 only supports 2.5K, this can easily
>become relevant when connecting a 4K screen via USB-C DP AltMode.
>I've tested that this patch properly drops all unsupported modes
>based on the resolution.
>
>Further checks will be needed to ensure the bandwidth requirements
>are also met (e.g. RK3576 VP1 only supports 2.5K@60Hz, so 2.5K@120Hz
>should be marked as BAD). I think the bandwidth check should be a
>separate patch, but thought it might be worth mentioning here in
>case somebody stumbles over it.

Yes, I also think it's better to do by a separate patch,  because we should add
more detail dclk description for every VP.  I will do it after this patch get merged.

>
>Anyways:
>
>Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
>Tested-by: Sebastian Reichel <sebastian.reichel@collabora.com> # Sige5
>
>Greetings,
>
>-- Sebastian
>
>> 
>> Changes in v2:
>> - Add more detailed commit message
>> 
>>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 12 ++++++++++++
>>  1 file changed, 12 insertions(+)
>> 
>> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>> index 498df0ce4680..74fba29bfff3 100644
>> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>> @@ -1439,6 +1439,17 @@ static void vop2_crtc_disable_vblank(struct drm_crtc *crtc)
>>  	vop2_crtc_disable_irq(vp, VP_INT_FS_FIELD);
>>  }
>>  
>> +static enum drm_mode_status vop2_crtc_mode_valid(struct drm_crtc *crtc,
>> +						 const struct drm_display_mode *mode)
>> +{
>> +	struct vop2_video_port *vp = to_vop2_video_port(crtc);
>> +
>> +	if (mode->hdisplay > vp->data->max_output.width)
>> +		return MODE_BAD_HVALUE;
>> +
>> +	return MODE_OK;
>> +}
>> +
>>  static bool vop2_crtc_mode_fixup(struct drm_crtc *crtc,
>>  				 const struct drm_display_mode *mode,
>>  				 struct drm_display_mode *adj_mode)
>> @@ -1884,6 +1895,7 @@ static void vop2_crtc_atomic_flush(struct drm_crtc *crtc,
>>  
>>  static const struct drm_crtc_helper_funcs vop2_crtc_helper_funcs = {
>>  	.mode_fixup = vop2_crtc_mode_fixup,
>> +	.mode_valid = vop2_crtc_mode_valid,
>>  	.atomic_check = vop2_crtc_atomic_check,
>>  	.atomic_begin = vop2_crtc_atomic_begin,
>>  	.atomic_flush = vop2_crtc_atomic_flush,
>> -- 
>> 2.43.0
>> 
>> base-commit: 1613a67b5360d6ff78f62143a1cf123414a1b4d9
>> branch: rk3576-dp-upstream
>> 
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

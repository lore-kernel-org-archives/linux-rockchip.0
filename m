Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F13DEC0218B
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jan 2025 09:45:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RayiCZpR9V/XxiCn/iCjCSJpIEfI4ILUV2SWbvkvysQ=; b=OVefssavJCvFzK
	C0rrIXOSUy/8ArOgEwTPd48z9H6GBySEjEoN4zjXhlDqLTeO0Hz1RcAXAeLA8WT/IBC2V88eR3pMl
	/6FVBtm4TVj2XuoF7jXn24qKOP7vIOJCfwegjNrW65h2GO8mnoC2YtZZkZVWh+RsE4MvaTN3FmH0U
	CLtv8fiCa9j+RBEaGA2hakr0qRCaX89SqwHolI6WlB06cN2brj+7GWQ2cKon8cQlMHZaYcoNs637P
	2bLxS7b/z32+uqtNyS1hpr0FB4sLOFMvPK0Blm2BTWzie+gzGiZoeS2h9agNwLklosg2womnljojk
	haYzRJVGUYT6IOh8BZjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tbGFE-0000000EOGj-2Nzt;
	Fri, 24 Jan 2025 09:44:56 +0000
Received: from m16.mail.163.com ([117.135.210.5])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tbGDd-0000000ENsV-23mm;
	Fri, 24 Jan 2025 09:43:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=LYzbzwYDYoKwztDPD6C/feKlYvHgUyz6eZNhruyqgMA=; b=o
	2KQvA139ZZaXDHG8Qh0zBlrYw4wTb1LDBD8MQzlYqsqtQHxQqdUAQvl7jjPVpXWF
	TI/YlfD3C3B0+RdfbVuPnroUQ5nD7ObPxNQNN7dSBSP3OSwgG8IJwCfe6CrYXviN
	y17KJ+dX7vUio7RXAfzVdHIo2EfrQ4IWFcAZgT3wU4=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-141 (Coremail) ; Fri, 24 Jan 2025 17:41:58 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Fri, 24 Jan 2025 17:41:58 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Jani Nikula" <jani.nikula@linux.intel.com>
Subject: Re:Re: [PATCH v5 05/20] drm/rockchip: analogix_dp: Replace
 DRM_...() functions with drm_...() or dev_...()
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2025 www.mailtech.cn 163com
In-Reply-To: <87ed0tn29l.fsf@intel.com>
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
 <20250109032725.1102465-6-damon.ding@rock-chips.com>
 <40b09942.533e.19449c023a1.Coremail.andyshrk@163.com>
 <a8bee693-cbde-469d-abcf-363311cfd904@rock-chips.com>
 <87ed0tn29l.fsf@intel.com>
X-NTES-SC: AL_Qu2YBfuavk8q7iaYY+kfmkcVgOw9UcO5v/Qk3oZXOJF8jCrr+CUnVkFMJFbsweeONhCLrheYTj1O48h1bZN6b5Mb80po9H52mNq8qQu8uCzI4A==
MIME-Version: 1.0
Message-ID: <6007b76a.6021.19497b090d4.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: jSgvCgCXn_RmYJNnEy9eAA--.22874W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqAjeXmeTWj0-8QAEs5
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250124_014317_924090_BDA4ED47 
X-CRM114-Status: GOOD (  14.89  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, vkoul@kernel.org, dri-devel@lists.freedesktop.org, sebastian.reichel@collabora.com, kever.yang@rock-chips.com, dmitry.baryshkov@linaro.org, Damon Ding <damon.ding@rock-chips.com>, hjc@rock-chips.com, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

At 2025-01-23 20:27:50, "Jani Nikula" <jani.nikula@linux.intel.com> wrote:
>On Wed, 22 Jan 2025, Damon Ding <damon.ding@rock-chips.com> wrote:
>> Hi Andy,
>>
>> On 2025/1/9 14:28, Andy Yan wrote:
>>> 
>>> Hi Damon,
>>> 
>>> At 2025-01-09 11:27:10, "Damon Ding" <damon.ding@rock-chips.com> wrote:
>>>> According to the comments in include/drm/drm_print.h, the DRM_...()
>>>> functions are deprecated in favor of drm_...() or dev_...() functions.
>>>>
>>>> Use drm_err()/drm_dbg_core()/drm_dbg_kms() instead of
>>>> DRM_DEV_ERROR()/DRM_ERROR()/DRM_DEV_DEBUG()/DRM_DEBUG_KMS() after
>>>> rockchip_dp_bind() is called, and replace DRM_DEV_ERROR() with dev_err()
>>>> before calling it.
>>>>
>>>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>>>> ---
>>>> .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 29 ++++++++++---------
>>>> 1 file changed, 15 insertions(+), 14 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
>>>> index 546d13f19f9b..8114c3238609 100644
>>>> --- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
>>>> +++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
>>>> @@ -100,13 +100,13 @@ static int rockchip_dp_poweron(struct analogix_dp_plat_data *plat_data)
>>>>
>>>> 	ret = clk_prepare_enable(dp->pclk);
>>>> 	if (ret < 0) {
>>>> -		DRM_DEV_ERROR(dp->dev, "failed to enable pclk %d\n", ret);
>>>> +		drm_err(dp->drm_dev, "failed to enable pclk %d\n", ret);
>>> 
>>>                 You just need to pass dp here:
>>>                  drm_err(dp, "failed to enable pclk %d\n", ret);
>>> 
>>
>> I see. It is really better to pass dp instead of dp->drm_dev. I will 
>> update all relevant logs in the next version.
>
>No, this was bad review feedback. You're absolutely expected to pass
>struct drm_device to drm_err() and friends.

No, I didn't see how the drm_err macro and friends restrict/expect the passing of only the drm_device pointer.
As for the platform device driver itself,  we hope that when an error occurs, the log clearly indicates
the specific device that the log corresponds to, rather than a generic drm_device.
The original code of this driver used the macro related to DRM_DEV_ERROR to do just that.
And similar patches have been merged before

Please also refer to the discussion here.[0]
[0]https://lore.kernel.org/linux-rockchip/20250109032725.1102465-1-damon.ding@rock-chips.com/T/#m54bd842be660031773834cedea6c73a5033ca973



>
>BR,
>Jani.
>
>
>>
>>>> 		return ret;
>>>> 	}
>>>>
>>>> 	ret = rockchip_dp_pre_init(dp);
>>>> 	if (ret < 0) {
>>>> -		DRM_DEV_ERROR(dp->dev, "failed to dp pre init %d\n", ret);
>>>> +		drm_err(dp->drm_dev, "failed to dp pre init %d\n", ret);
>>>> 		clk_disable_unprepare(dp->pclk);
>>>> 		return ret;
>>>> 	}
>>>> @@ -126,12 +126,13 @@ static int rockchip_dp_powerdown(struct analogix_dp_plat_data *plat_data)
>>>> static int rockchip_dp_get_modes(struct analogix_dp_plat_data *plat_data,
>>>> 				 struct drm_connector *connector)
>>>> {
>>>> +	struct rockchip_dp_device *dp = pdata_encoder_to_dp(plat_data);
>>>> 	struct drm_display_info *di = &connector->display_info;
>>>> 	/* VOP couldn't output YUV video format for eDP rightly */
>>>> 	u32 mask = DRM_COLOR_FORMAT_YCBCR444 | DRM_COLOR_FORMAT_YCBCR422;
>>>>
>>>> 	if ((di->color_formats & mask)) {
>>>> -		DRM_DEBUG_KMS("Swapping display color format from YUV to RGB\n");
>>>> +		drm_dbg_kms(dp->drm_dev, "Swapping display color format from YUV to RGB\n");
>>>> 		di->color_formats &= ~mask;
>>>> 		di->color_formats |= DRM_COLOR_FORMAT_RGB444;
>>>> 		di->bpc = 8;
>>>> @@ -201,17 +202,17 @@ static void rockchip_dp_drm_encoder_enable(struct drm_encoder *encoder,
>>>> 	else
>>>> 		val = dp->data->lcdsel_big;
>>>>
>>>> -	DRM_DEV_DEBUG(dp->dev, "vop %s output to dp\n", (ret) ? "LIT" : "BIG");
>>>> +	drm_dbg_core(dp->drm_dev, "vop %s output to dp\n", (ret) ? "LIT" : "BIG");
>>>>
>>>> 	ret = clk_prepare_enable(dp->grfclk);
>>>> 	if (ret < 0) {
>>>> -		DRM_DEV_ERROR(dp->dev, "failed to enable grfclk %d\n", ret);
>>>> +		drm_err(dp->drm_dev, "failed to enable grfclk %d\n", ret);
>>>> 		return;
>>>> 	}
>>>>
>>>> 	ret = regmap_write(dp->grf, dp->data->lcdsel_grf_reg, val);
>>>> 	if (ret != 0)
>>>> -		DRM_DEV_ERROR(dp->dev, "Could not write to GRF: %d\n", ret);
>>>> +		drm_err(dp->drm_dev, "Could not write to GRF: %d\n", ret);
>>>>
>>>> 	clk_disable_unprepare(dp->grfclk);
>>>> }
>>>> @@ -236,7 +237,7 @@ static void rockchip_dp_drm_encoder_disable(struct drm_encoder *encoder,
>>>>
>>>> 	ret = rockchip_drm_wait_vact_end(crtc, PSR_WAIT_LINE_FLAG_TIMEOUT_MS);
>>>> 	if (ret)
>>>> -		DRM_DEV_ERROR(dp->dev, "line flag irq timed out\n");
>>>> +		drm_err(dp->drm_dev, "line flag irq timed out\n");
>>>> }
>>>>
>>>> static int
>>>> @@ -277,7 +278,7 @@ static int rockchip_dp_of_probe(struct rockchip_dp_device *dp)
>>>>
>>>> 	dp->grf = syscon_regmap_lookup_by_phandle(np, "rockchip,grf");
>>>> 	if (IS_ERR(dp->grf)) {
>>>> -		DRM_DEV_ERROR(dev, "failed to get rockchip,grf property\n");
>>>> +		dev_err(dev, "failed to get rockchip,grf property\n");
>>>> 		return PTR_ERR(dp->grf);
>>>> 	}
>>>>
>>>> @@ -287,19 +288,19 @@ static int rockchip_dp_of_probe(struct rockchip_dp_device *dp)
>>>> 	} else if (PTR_ERR(dp->grfclk) == -EPROBE_DEFER) {
>>>> 		return -EPROBE_DEFER;
>>>> 	} else if (IS_ERR(dp->grfclk)) {
>>>> -		DRM_DEV_ERROR(dev, "failed to get grf clock\n");
>>>> +		dev_err(dev, "failed to get grf clock\n");
>>>> 		return PTR_ERR(dp->grfclk);
>>>> 	}
>>>>
>>>> 	dp->pclk = devm_clk_get(dev, "pclk");
>>>> 	if (IS_ERR(dp->pclk)) {
>>>> -		DRM_DEV_ERROR(dev, "failed to get pclk property\n");
>>>> +		dev_err(dev, "failed to get pclk property\n");
>>>> 		return PTR_ERR(dp->pclk);
>>>> 	}
>>>>
>>>> 	dp->rst = devm_reset_control_get(dev, "dp");
>>>> 	if (IS_ERR(dp->rst)) {
>>>> -		DRM_DEV_ERROR(dev, "failed to get dp reset control\n");
>>>> +		dev_err(dev, "failed to get dp reset control\n");
>>>> 		return PTR_ERR(dp->rst);
>>>> 	}
>>>>
>>>> @@ -315,12 +316,12 @@ static int rockchip_dp_drm_create_encoder(struct rockchip_dp_device *dp)
>>>>
>>>> 	encoder->possible_crtcs = drm_of_find_possible_crtcs(drm_dev,
>>>> 							     dev->of_node);
>>>> -	DRM_DEBUG_KMS("possible_crtcs = 0x%x\n", encoder->possible_crtcs);
>>>> +	drm_dbg_kms(drm_dev, "possible_crtcs = 0x%x\n", encoder->possible_crtcs);
>>>>
>>>> 	ret = drm_simple_encoder_init(drm_dev, encoder,
>>>> 				      DRM_MODE_ENCODER_TMDS);
>>>> 	if (ret) {
>>>> -		DRM_ERROR("failed to initialize encoder with drm\n");
>>>> +		drm_err(drm_dev, "failed to initialize encoder with drm\n");
>>>> 		return ret;
>>>> 	}
>>>>
>>>> @@ -340,7 +341,7 @@ static int rockchip_dp_bind(struct device *dev, struct device *master,
>>>>
>>>> 	ret = rockchip_dp_drm_create_encoder(dp);
>>>> 	if (ret) {
>>>> -		DRM_ERROR("failed to create drm encoder\n");
>>>> +		drm_err(drm_dev, "failed to create drm encoder\n");
>>>> 		return ret;
>>>> 	}
>>>>
>>>> -- 
>>>> 2.34.1
>>>>
>>
>> Best regards,
>> Damon
>
>-- 
>Jani Nikula, Intel
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

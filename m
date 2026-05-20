Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4A37CD4F54
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 May 2026 09:38:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fF0Iu3FAA7F6uKQKf85G9ScoyJvccm65XmdTG/GnneQ=; b=wmLTv/d+uIJEPB
	vwe5eaHvqZBsCn8sGbmJaFxukPcbM3qnw/4qphaas+Nt9odYMIqk4DGCaLrDv1duA3ftbWrO1cS8h
	Y+l64Os55E1mPMSBxdMWz16H0rmXMQxyho0m5K4y+WR4yAt6/jefxDrdY45j1hTVyiw1a05g0hKwz
	KYTsvOQI39z1X9KnbCbHGHmIhqD1L0UGIkTw/CJojMKrJXGTvDoZ/1kPbRVDb6f8UR3q+k415GhDH
	VOEAA/JspO0onntdSGUhkB9D+tfFR7TakJJUZYizLXLrZPWBwCR5uQrICYLO5jwHWGBrldEqiuyh0
	4JtzhD5AqfJyGK/EEIIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPdNp-00000004CX2-2ZNN;
	Wed, 20 May 2026 09:38:33 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPdNm-00000004CVJ-48ew
	for linux-rockchip@lists.infradead.org;
	Wed, 20 May 2026 09:38:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1779269910;
 bh=pNNLUbu+3snnvIu37IYCE7mkwLu2owdhLPa7+/GJ59k=;
 b=EBJ2gXvRb0tbxs346Wwd/sOJq+2p37CxGY4BMVPDSzxoCuv+mcl7CKl//HRm53GgTRoxsnvl8
 g3Gu3p5GxZKOYQ8ZkFzxJNbETQAtwXf3uIM0iHHgg/UD6dTBVDDPYpdsZe/tg0WP2YE8g86YWt9
 CUM/wcxyMXwadwxgG4oX1nT2M1Domj45tR9u6K+a3UepGLwOeHALi+0pajR3fH6sKugF6TKVbxS
 bVksAMdbVZUYw5a86o0KxVYhRZGMLr23wDjMMP/pVBN4SbpvjoW7qjAsKt7vgG+iHCvVifnbUkN
 hNwRarR08ZlKtATI/cU/aY58G2ck6lKIrVKX5lBpsk2g==
X-Forward-Email-ID: 6a0d811240ac652fcd447b35
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 2.8.15
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <1bc6969c-110a-46e0-99fb-1a2e0cfef842@kwiboo.se>
Date: Wed, 20 May 2026 11:38:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 04/23] drm: bridge: dw_hdmi: Hold bridge ref until
 connector cleanup
To: Luca Ceresoli <luca.ceresoli@bootlin.com>
References: <20260518180206.2480119-1-jonas@kwiboo.se>
 <20260518180206.2480119-5-jonas@kwiboo.se>
 <177919241969.545972.18169905222569864569.b4-review@b4>
 <e90eddfc-2f57-418a-ae05-43a411d72b99@kwiboo.se>
 <177925954999.1337464.14745526881417951688.b4-reply@b4>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <177925954999.1337464.14745526881417951688.b4-reply@b4>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_023831_130651_5902C658 
X-CRM114-Status: GOOD (  19.86  )
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
Cc: imx@lists.linux.dev, Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Diederik de Haas <diederik@cknow-tech.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Robert Foss <rfoss@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, Liu Ying <victor.liu@nxp.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, linux-amlogic@lists.infradead.org, Chen-Yu Tsai <wens@kernel.org>, linux-arm-kernel@lists.infradead.org, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>, Louis Chauvet <louis.chauvet@bootlin.com>, Christian Hewitt <christianshewitt@gmail.com>, Sandy Huang <hjc@rock-chips.com>, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Luca,

On 5/20/2026 8:45 AM, Luca Ceresoli wrote:
> Hello Jonas,
> 
> On 2026-05-19 17:18 +0200, Jonas Karlman wrote:
>> Hello Luca,
>>
>> On 5/19/2026 2:06 PM, Luca Ceresoli wrote:
>>> On Mon, 18 May 2026 18:01:40 +0000, Jonas Karlman <jonas@kwiboo.se> wrote:
>>>
>>> Hello Jonas,
>>>
>>>>
>>>> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
>>>> index b7bfc0e9a6b2..9d795c550f8a 100644
>>>> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
>>>> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
>>>> @@ -2600,10 +2609,14 @@ static int dw_hdmi_connector_create(struct dw_hdmi *hdmi)
>>>>
>>>>  	drm_connector_helper_add(connector, &dw_hdmi_connector_helper_funcs);
>>>>
>>>> -	drm_connector_init_with_ddc(hdmi->bridge.dev, connector,
>>>> -				    &dw_hdmi_connector_funcs,
>>>> -				    DRM_MODE_CONNECTOR_HDMIA,
>>>> -				    hdmi->ddc);
>>>> +	ret = drm_connector_init_with_ddc(hdmi->bridge.dev, connector,
>>>> +					  &dw_hdmi_connector_funcs,
>>>> +					  DRM_MODE_CONNECTOR_HDMIA,
>>>> +					  hdmi->ddc);
>>>> +	if (ret)
>>>> +		return ret;
>>>> +
>>>> +	drm_bridge_get(&hdmi->bridge);
>>>
>>> I'm not fully following the code paths, but both the report and the fix
>>> make sense to me. Only I'd move the drm_bridge_get() before
>>> drm_connector_init_with_ddc(), to avoid a short window where no reference
>>> is held and the bridge might be destroyed before drm_bridge_get() is
>>> called. I'm not sure this can happen, but it's better to write the code in
>>> a way that clearly makes it impossible.
>>
>> dw_hdmi_connector_create() is only called from dw_hdmi_bridge_attach()
>> so the bridge should already have a ref for the lifetime of this call.
> 
> Ah, that's true. So the patch is correct.
> 
> Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

Thanks.

> In case you send a new iteration, please add this extra explanation to the
> commit message, similar to the above paragraph.

Sure, I will include a note about this if/when I need to re-spin.

>> I explicitly chose the placement after drm_connector_init_with_ddc()
>> to ensure ref count is correctly balanced without having to add a
>> drm_bridge_put() call in any error path. I.e. connector destroy() is
>> only called when drm_connector_init_with_ddc() succeeds.
>>
>> This code/call is also planned to be removed in a future series,
> 
> In order to remove the !DRM_BRIDGE_ATTACH_NO_CONNECTOR case? That would be
> welcome!

That would be an end goal, however initial plan/step was to just change
to use drm_bridge_connector_init() inside this driver [1] or possible
move that to the consuming driver (imx6, rockchip and sun8i), in an
unpolished future series [2].

Fully change to use ATTACH_NO_CONNECTOR for those affected drivers may
possibly be pushed to a follow-up future series.

Main end goal of my current effort is to enable support for Deep Color
and YCbCr output modes on Rockchip RK32xx/RK33xx/RK356x devices [3].

[1] https://github.com/Kwiboo/linux-rockchip/commit/813b55961e5a8fa864ea157e2793e76ca4967bac
[2] https://github.com/Kwiboo/linux-rockchip/compare/7e9084cc75011ce28b1ceafec804091438eed1ff...3b5507aa260eb8306554c34a0c362e514ea41c3b
[3] https://github.com/Kwiboo/linux-rockchip/commits/next-20260518-rk-hdmi-v5/

Regards,
Jonas

> 
> Luca
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

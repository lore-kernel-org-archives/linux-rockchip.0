Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A185C25B78
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Jun 2024 21:35:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L5JFjXAeeUvZFoL/7FTAY51b++AsCDsG5rVK/4gUNBk=; b=29mxaBBFnuOZMo
	LBfkyd7Ejj4KbSVoVZFDQpzhHChiEaV0Y+LtAPzkVn94vetx2wXkdCPQAmKjBe36vga94YwUkzSfm
	az6c4c2zg7ib2Zv9uZdXV3YvLmyaiDlsPa4ToPUj7MOyzaXha/sRQhMG9Jh8XH9s+UlUPz5QNJw8p
	rpQX+UL50j22b4dUKA2z51UOjvkxunYgV8vpCeko+Ccy2gaaytL11J8s4txCZVRycByITm9x8wQ4m
	yC1Eoqkwj5z5BcNiwwyZGWDljU78jxWrBst2KbbCCWc9c9sDzv7Uyy+24MxD01STZA9hX9G8LV2kr
	DkGVfK0c/TighxxAIBJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEboD-00000003s8m-32bH;
	Tue, 04 Jun 2024 21:35:09 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEbo8-00000003s7t-3ICV;
	Tue, 04 Jun 2024 21:35:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1717536900;
	bh=4j+xcEIW6UJVNE2Sr/TwZL1PpYm/E0XsZ43FgrExk3M=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=lR1C3lC0F22dScTwYgb/PlbrW444zV6vG6SUqY30nK1kZczq4RMlbCtCHs3KNvVZC
	 OXriDU9xexPGxkACTS4+HrKgwgUQCRbj0za8jIGchpW/Q3wL+xGEVzhlmiMq9+O1Rr
	 8WnWurzV6iPf3gflmpmklD3ARSK5NRKFdy/S9MBqy3KhSoOTzAg8wZ1+zz31cljVxh
	 NJAG6eThabGJncG5AxcJpr2fixrSdnTpCLY6Y0NRXEPliU+jOuQdcUdI0r/nCIzjPx
	 RNREZde+ONgynJ+XqQ2Vp+WQLdTq0iiJ1guQgu6JTk6YSN8cpuspqEmlTHSKhYSK3x
	 py6phNsJD8jeA==
Received: from [100.115.223.179] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 6E8AD37810EF;
	Tue,  4 Jun 2024 21:34:58 +0000 (UTC)
Message-ID: <f656c72e-fac8-4345-9b65-1031ebe81c25@collabora.com>
Date: Wed, 5 Jun 2024 00:34:57 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 13/14] drm/bridge: synopsys: Add DW HDMI QP TX controller
 driver
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@collabora.com,
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>,
 Algea Cao <algea.cao@rock-chips.com>
References: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
 <20240601-b4-rk3588-bridge-upstream-v1-13-f6203753232b@collabora.com>
 <20240601143226.GA2003970@ravnborg.org>
 <59519381-2729-4839-9882-65a981a0c551@collabora.com>
 <20240604204110.GA84949@ravnborg.org>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <20240604204110.GA84949@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240604_143505_028319_59488D00 
X-CRM114-Status: GOOD (  17.48  )
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

On 6/4/24 11:41 PM, Sam Ravnborg wrote:
> Hi Cristian.
> 
> On Tue, Jun 04, 2024 at 10:32:04PM +0300, Cristian Ciocaltea wrote:
>> Hi Sam,
>>
>> On 6/1/24 5:32 PM, Sam Ravnborg wrote:
>>> Hi Cristian,
>>>
>>> a few drive-by comments below.
>>>
>>> 	Sam
>>>
>>>
>>>> +
>>>> +static const struct drm_connector_funcs dw_hdmi_qp_connector_funcs = {
>>>> +	.fill_modes = drm_helper_probe_single_connector_modes,
>>>> +	.detect = dw_hdmi_connector_detect,
>>>> +	.destroy = drm_connector_cleanup,
>>>> +	.force = dw_hdmi_qp_connector_force,
>>>> +	.reset = drm_atomic_helper_connector_reset,
>>>> +	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
>>>> +	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
>>>> +};
>>>> +
>>>> +static int dw_hdmi_qp_bridge_attach(struct drm_bridge *bridge,
>>>> +				    enum drm_bridge_attach_flags flags)
>>>> +{
>>>> +	struct dw_hdmi *hdmi = bridge->driver_private;
>>>> +
>>>> +	if (flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR)
>>>> +		return drm_bridge_attach(bridge->encoder, hdmi->next_bridge,
>>>> +					 bridge, flags);
>>>> +
>>>> +	return dw_hdmi_connector_create(hdmi, &dw_hdmi_qp_connector_funcs);
>>>> +}
>>>
>>> Are there any users left that requires the display driver to create the
>>> connector?
>>> In other words - could this driver fail if DRM_BRIDGE_ATTACH_NO_CONNECTOR
>>> is not passed and drop dw_hdmi_connector_create()?
>>>
>>> I did not try to verify this - just a naive question.
>>
>> I've just tested this and it doesn't work - dw_hdmi_connector_create()
>> is still needed.
> 
> Hmm, seems the display driver or some other bridge driver fails to
> support "DRM_BRIDGE_ATTACH_NO_CONNECTOR".
> what other drivers are involved?

Could it be related to the glue driver (updated in the next patch) which
is also responsible for setting up the encoder?

> Note that my comments here should be seen as potential future
> improvements, and do not block the patch from being used.

Thanks for the heads up! Will try to get back to this soon and investigate.

Cristian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

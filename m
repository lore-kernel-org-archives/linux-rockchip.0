Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A594DC27C53
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 11:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0fvVMH+9VNAc8L3GH2n2mD8SxeVYAuiw8joGb6bQP98=; b=V5UEwK1nVH9SXFZFVvtpGCV+H/
	nJ7YegAty5Nc6d5Uiv/rvECk29jdzNZNaUUqqlGbV3MDRbfmMO4BwWAaDWSPDPfe87qpKGuRbuq9/
	/4bD51xwSV1OpYo14Lkgi24QvEIjPX9EsJaC3RqgYQehDx8+QF33a8TkXcYhV1hfYUEEX3eJmKive
	yxhUGNO47PwqZ8uuzzvBBhS9ybW1UBSkfUnu9+NotPRDWCFVyqcEOigwZCgwSVAA5iHGFm1EgUmTh
	MhfIc1CK/fPWnBfmeYRNfYSI8blBjh9xuPaddf7+enPDBVT5AUpdU4QTaVOOq0tvkGO071DV+ska5
	rxlr3tFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEp7s-00000005m3i-2DIu;
	Wed, 05 Jun 2024 11:48:20 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEp7p-00000005m2b-3CiN
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Jun 2024 11:48:19 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-35dc04717a1so4988052f8f.2
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Jun 2024 04:48:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717588092; x=1718192892; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Sq/Mg5xdkn7VG051aeSlr0cnodPM8eEq6trD79vAGKI=;
        b=ijYsWVt3Jzqp75oew/ruedswLOlsN1J2ChUt3YrfjoQ2uriPZm80kl66jY77iR+ef7
         /Fx5yraWzaWC9U6UvmBSJo+UdzmG4VZe11RPu7YMcv1WdIQ1ZMK9lvP8xc+xuZI35R9M
         +nQpogaYDJO+hfY9pPVKQMCNt+zv9KpP/TW4VdawgLakAEPXeIQjXa+77ufzNgGMbRPA
         nQULEhGCixz1kgRZ10WHswLRqne90h79OBxumu6OpUM8EFg7iK114W/Lkr/aSSQVWGj9
         9lMh7W2pjueeLTkXvWfM48kbCJXPDE2vbG7tiJzxFKxLQB38iFXv7CUrZw71qhUDie35
         uuMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717588092; x=1718192892;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Sq/Mg5xdkn7VG051aeSlr0cnodPM8eEq6trD79vAGKI=;
        b=NJVvmA5Kb3Nn5IQbi1d9OYMwHRMssZoIRWQ36F/rRIGRt/x7MPEEqOWkNlysYp/AaK
         Zu9db15SMWpIjeCaY9oF/gPgc4f03l8u376ukYInKK3qFzFNmSUgLqp+vJE9mCgqarMz
         4t+aR8huv3J2dlmPjXjZdUpvbCX/4PAJx1uT5JUR3f6cj8lJOyA8cXmH0OJFRv4Sgcod
         2i1gm6metXMDcbZpx/2yrQwRvFjtnZjG5JIqaMmggSKOhhuo9DJp6cwPlHVfs+Ainl4T
         qwnz8lD+4BSIsTK71H411XeBWs6m8A5LA9MzIi0Tcpl8iVaeSPO6Im8+6y+7UzHf7spW
         nuOA==
X-Forwarded-Encrypted: i=1; AJvYcCXXH4sk+EHNUCjK6JdIzGD/4zpbfezWi4VD7OXsTZ+xVcz33XjFudimlT4e82BM/kgDBQEZ+VeTxZf+40MgrJ5rP6qPQMjuDiCPpE3LInzzU3hu
X-Gm-Message-State: AOJu0YzTK6efAYyU5xANUnAsSsWuabLZfrKXotF0XAIM4JruxUvfK07P
	5/iBOFxvvXQEdbqnGEqvnI0AdswPq8A3AZnWxXkGxzJ14jjaLEB9+G/rqaY0RVI=
X-Google-Smtp-Source: AGHT+IHlR2SK96JLCdyyN00srFLb5WsC8iq/TUAeaI5Vi/UOfNYzNfpAYVSwhJmvRN6a17FGY+m4Ng==
X-Received: by 2002:a05:6000:b84:b0:35a:dff9:73bd with SMTP id ffacd0b85a97d-35e8ef8fc97mr1926848f8f.56.1717588092369;
        Wed, 05 Jun 2024 04:48:12 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:c7ce:7756:462d:a8bd? ([2a01:e0a:982:cbb0:c7ce:7756:462d:a8bd])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35dd04cac9asm14374570f8f.34.2024.06.05.04.48.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Jun 2024 04:48:11 -0700 (PDT)
Message-ID: <5dc16b34-d638-4fab-84e1-cb7db08ad80e@linaro.org>
Date: Wed, 5 Jun 2024 13:48:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 13/14] drm/bridge: synopsys: Add DW HDMI QP TX controller
 driver
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Sam Ravnborg <sam@ravnborg.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
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
 <f656c72e-fac8-4345-9b65-1031ebe81c25@collabora.com>
 <304b4602-8722-4ed0-a555-8dada573ee79@collabora.com>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <304b4602-8722-4ed0-a555-8dada573ee79@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_044817_825667_16BF9977 
X-CRM114-Status: GOOD (  24.64  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 05/06/2024 12:11, Cristian Ciocaltea wrote:
> On 6/5/24 12:34 AM, Cristian Ciocaltea wrote:
>> On 6/4/24 11:41 PM, Sam Ravnborg wrote:
>>> Hi Cristian.
>>>
>>> On Tue, Jun 04, 2024 at 10:32:04PM +0300, Cristian Ciocaltea wrote:
>>>> Hi Sam,
>>>>
>>>> On 6/1/24 5:32 PM, Sam Ravnborg wrote:
>>>>> Hi Cristian,
>>>>>
>>>>> a few drive-by comments below.
>>>>>
>>>>> 	Sam
>>>>>
>>>>>
>>>>>> +
>>>>>> +static const struct drm_connector_funcs dw_hdmi_qp_connector_funcs = {
>>>>>> +	.fill_modes = drm_helper_probe_single_connector_modes,
>>>>>> +	.detect = dw_hdmi_connector_detect,
>>>>>> +	.destroy = drm_connector_cleanup,
>>>>>> +	.force = dw_hdmi_qp_connector_force,
>>>>>> +	.reset = drm_atomic_helper_connector_reset,
>>>>>> +	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
>>>>>> +	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
>>>>>> +};
>>>>>> +
>>>>>> +static int dw_hdmi_qp_bridge_attach(struct drm_bridge *bridge,
>>>>>> +				    enum drm_bridge_attach_flags flags)
>>>>>> +{
>>>>>> +	struct dw_hdmi *hdmi = bridge->driver_private;
>>>>>> +
>>>>>> +	if (flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR)
>>>>>> +		return drm_bridge_attach(bridge->encoder, hdmi->next_bridge,
>>>>>> +					 bridge, flags);
>>>>>> +
>>>>>> +	return dw_hdmi_connector_create(hdmi, &dw_hdmi_qp_connector_funcs);
>>>>>> +}
>>>>>
>>>>> Are there any users left that requires the display driver to create the
>>>>> connector?
>>>>> In other words - could this driver fail if DRM_BRIDGE_ATTACH_NO_CONNECTOR
>>>>> is not passed and drop dw_hdmi_connector_create()?
>>>>>
>>>>> I did not try to verify this - just a naive question.
>>>>
>>>> I've just tested this and it doesn't work - dw_hdmi_connector_create()
>>>> is still needed.
>>>
>>> Hmm, seems the display driver or some other bridge driver fails to
>>> support "DRM_BRIDGE_ATTACH_NO_CONNECTOR".
>>> what other drivers are involved?
>>
>> Could it be related to the glue driver (updated in the next patch) which
>> is also responsible for setting up the encoder?
>>
>>> Note that my comments here should be seen as potential future
>>> improvements, and do not block the patch from being used.
>>
>> Thanks for the heads up! Will try to get back to this soon and investigate.
>   
> IIUC, modern bridges should not create the connector but rely on display
> drivers to take care of, which in this case is the VOP2 driver. However,
> it also handles some of the older SoCs relying on the non-QP variant of
> DW HDMI IP. Hence the existing dw-hdmi driver would be also impacted in
> order to come up with a proper solution.
> 
> A quick check shows there are several users of this IP:
> 
> $ git grep -E '= dw_hdmi_(bind|probe)\('
> drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx.c:    hdmi->dw_hdmi = dw_hdmi_probe(pdev, plat_data);
> drivers/gpu/drm/bridge/synopsys/dw-hdmi.c:      hdmi = dw_hdmi_probe(pdev, plat_data);
> drivers/gpu/drm/imx/ipuv3/dw_hdmi-imx.c:        hdmi->hdmi = dw_hdmi_probe(pdev, match->data);
> drivers/gpu/drm/ingenic/ingenic-dw-hdmi.c:      hdmi = dw_hdmi_probe(pdev, &ingenic_dw_hdmi_plat_data);
> drivers/gpu/drm/meson/meson_dw_hdmi.c:  meson_dw_hdmi->hdmi = dw_hdmi_probe(pdev, &meson_dw_hdmi->dw_plat_data);
> drivers/gpu/drm/renesas/rcar-du/rcar_dw_hdmi.c: hdmi = dw_hdmi_probe(pdev, &rcar_dw_hdmi_plat_data);
> drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c:            hdmi->hdmi = dw_hdmi_bind(pdev, encoder, plat_data);
> drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c:  hdmi->hdmi = dw_hdmi_bind(pdev, encoder, plat_data);
> 
> I didn't check which display drivers would be involved, I'd guess there
> are quite a few of them as well. So it seems this ends up being a pretty
> complex task.

If this would be a brand new driver, then it should only support DRM_BRIDGE_ATTACH_NO_CONNECTOR,
so you should not create a connector from the driver.

The fact dw-hdmi accepts an attach without the flag is for legacy purpose
since some DRM drivers haven't switched to DRM_BRIDGE_ATTACH_NO_CONNECTOR yes,
but it's a requirement for new bridges so at some point you'll need to make
sure the rockchip glue and drm driver supports DRM_BRIDGE_ATTACH_NO_CONNECTOR.

This will greatly simplify the driver!

Neil

> 
> Cristian


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

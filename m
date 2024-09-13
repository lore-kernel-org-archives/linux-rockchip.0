Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35F42FA3728
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Sep 2024 08:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RI05P+FlUY7YqkjdkILwg5zG/ObePLf7sE4Pt4ttu/U=; b=LGsDCphPtODo/GB+VNUg85JsYv
	Re22HKnpKfMiL8eMfGxhNSEJipyDf5/HGYEbNL62k25a2o0WB/lbeBxVoOk+UYDYAigzWRjSfZtBw
	TqsttXGIY/Q5o4PDMwFrx3x7sNDMCFa6pWod1ntxJSzaGKXL89EQyAqTmg4UsAxcKN7A/ZpGv9fPy
	nUG6Y2H+k5H1FPG1+KcTsZHdyZ3KdLNWCwL3ObMtNiNCsGgoz5HOdzungwvXsBhlesI/avGAe7qsZ
	qe37d3rEySPmuREjx+R3gccWW3qrBIix38bx4/TGBpQSMTXjrvwd/pOvAAjimam5WyeLqVCqtfe+a
	hUSZ6lbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp1Fy-0000000FGpA-3Yjk;
	Fri, 13 Sep 2024 08:02:18 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp1Fv-0000000FGo3-40ED
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Sep 2024 08:02:17 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-374c180d123so380356f8f.3
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Sep 2024 01:02:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726214534; x=1726819334; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KAjUdoyXPSNHLiRF/5bnxLG0wpq4kPs9TC2hjddZOXw=;
        b=DPyAJmQLQ3qTu1DUWRp0HAZX0UUu7gTEt8FqTRJVrK7tiiQ2CJBZ2plSzUHLN5eU+z
         lx6XbZ3PI26gYeDHpGvvq9gVSOM3absJSL+sNnvuaQRnTKmFH46QmSKHETkwRf6cPT/a
         JVRXtR2uO9qbUNz2/cptj/fakbtsj8oJiYX6WgiHxdBbObC4aPiy9jqMZko/ilOIazJx
         MaKytXJFc9edAslbfOCa0hrwPeQuyC6FRBKA5zGSXxrB9yde34QpXfabnDtYiWA3HsCa
         U0/VuxrgiMK+MT47gcow90vHGhB1y0gS+iXSN1LLPQm5KSNeJusNi/uMGFR9lLghi78e
         abqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726214534; x=1726819334;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=KAjUdoyXPSNHLiRF/5bnxLG0wpq4kPs9TC2hjddZOXw=;
        b=LbZ85IVvPYC/0AnnfPLpGC6Am9jHhmcghfirYjCU/svwDG8shPEfuXNKvWWjlPil5J
         8gtBeaRQ+KSUQ9iOpjV8pM+z42c6tazdh6NyYcQvJ9sk53Xqt+bk5yFwBmhEboQyEZ/E
         rur6pwGIdMqbo6S7xpWN00cZT+whRYHVGOMkEbXkcLnELOdEwc8fwxheTkAM8gUFeoel
         aCx4oLK7jcy4IE2O9g+TDYecbf9swQuWO8XnevNc1htHlwkU812s9pECNRWiWmBAvDeC
         jwBhyC4Ah8PhHODlGLVu/GloQ9vc3W/AMPxIjF0l1lWz021N2t3vAfKKAc6ejFmDmyiG
         ks2w==
X-Forwarded-Encrypted: i=1; AJvYcCWfQoAg+WBXXZwhL7ldD9d8Fy4fyYRj21m6FMHEvJZdsQmkbGjYw5gl2FwCFFUFXRrWLyfc80oIhbZNvudv2A==@lists.infradead.org
X-Gm-Message-State: AOJu0YxQPgUr01o3LGOSonyRBafKBzQJHKmBF7ziUv/9ZkOF4QpM87Of
	ZWceQzfiXLDDyCwN4bahlm8E9Ufx5MOLMaY18Zc7r8qJaRqnoI1+6tbL+F1KSWk=
X-Google-Smtp-Source: AGHT+IFqhk+bK1ONAFkVcGqoWxYXj5S5OT3U3eVNN4v3VLfYwyLCWyCWI1nrQX0GDWFegfWc7EvPkg==
X-Received: by 2002:adf:f045:0:b0:374:c101:32 with SMTP id ffacd0b85a97d-378d623c027mr995199f8f.46.1726214533967;
        Fri, 13 Sep 2024 01:02:13 -0700 (PDT)
Received: from [192.168.7.202] ([212.114.21.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37895665108sm16057316f8f.28.2024.09.13.01.02.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Sep 2024 01:02:13 -0700 (PDT)
Message-ID: <4bc6a5e6-f2cf-43ab-8555-4f8aaf9f2cd0@linaro.org>
Date: Fri, 13 Sep 2024 10:02:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 09/10] drm: bridge: dw_hdmi: Update EDID during hotplug
 processing
To: Jonas Karlman <jonas@kwiboo.se>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Robert Foss <rfoss@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: Christian Hewitt <christianshewitt@gmail.com>,
 Diederik de Haas <didi.debian@cknow.org>,
 Christopher Obbard <chris.obbard@collabora.com>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240908132823.3308029-1-jonas@kwiboo.se>
 <20240908132823.3308029-10-jonas@kwiboo.se>
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
In-Reply-To: <20240908132823.3308029-10-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_010216_042101_D9A64F26 
X-CRM114-Status: GOOD (  14.08  )
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

On 08/09/2024 15:28, Jonas Karlman wrote:
> Update successfully read EDID during hotplug processing to ensure the
> connector diplay_info is always up-to-date.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
> v2: No change
> ---
>   drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 12 ++++++++++++
>   1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> index c19307120909..7bd9f895f03f 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> @@ -2457,6 +2457,18 @@ dw_hdmi_connector_detect(struct drm_connector *connector, bool force)
>   
>   	status = dw_hdmi_detect(hdmi);
>   
> +	/* Update EDID during hotplug processing (force=false) */
> +	if (status == connector_status_connected && !force) {
> +		const struct drm_edid *drm_edid;
> +
> +		drm_edid = dw_hdmi_edid_read(hdmi, connector);
> +		if (drm_edid)
> +			drm_edid_connector_update(connector, drm_edid);
> +		cec_notifier_set_phys_addr(hdmi->cec_notifier,
> +			connector->display_info.source_physical_address);
> +		drm_edid_free(drm_edid);
> +	}
> +
>   	if (status == connector_status_disconnected)
>   		cec_notifier_phys_addr_invalidate(hdmi->cec_notifier);
>   

I wonder why we should read edid at each dw_hdmi_connector_detect() call,
AFAIK it should only be when we have HPD pulses

Neil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

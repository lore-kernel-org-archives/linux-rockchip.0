Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44570CD4F54
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 May 2026 09:17:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=D9genT5sGkMGxM+mfvcLYKJDpb6GNKnI7FYByTiOS/I=; b=uCYwAY2feyk710//MgnTK9lUhl
	E2+kHY3ziwU7PEaTrjRLXpmtzMbgeJxeQ7xtyayN94UH0oUT4aJZDB/2Bq90qdtIo1L6pcRlu8PZu
	JIK94YpVjWgyI0fFX2hn1OvVPg3aTam43O+PlFM9vm+aMyk7pVqNC13dKizFxOMawXYISP3sgLJKQ
	ieL+Gmzz2FhPsHjGNMQGasqocLdb5zAtlJJBgiiKT7kTSKkc1KZVY8yh4kRx/nsZjv3udHAvePdmg
	fXMDgvyIWVJUISJ1n3cXfi5g9tPBgmAX2n3CWmf+csLTGCyjam4k6FIAIiIY5tVRJGRlfC7xBITKM
	++gQwCxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPd3J-000000045iG-3r24;
	Wed, 20 May 2026 09:17:21 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPd3G-000000045gI-40TW
	for linux-rockchip@lists.infradead.org;
	Wed, 20 May 2026 09:17:20 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-488b8bc6bc9so26918635e9.3
        for <linux-rockchip@lists.infradead.org>; Wed, 20 May 2026 02:17:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1779268637; x=1779873437; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MQM11Mg1okAZbmmFPoevnMUA1OvrXb8LaWj00KaDlLQ=;
        b=Sezn03KNPCREoWEjuCTUKTGe5Nl1WMBF3L0fAIgsnuqz4p5IFy8x92zfIdcfiYs5Ur
         z2wkiwIoN3pW+q94Pc5WPshvz1pr04ZOMLmTurxtrPw18fb5UwBc42q69mmZc/TeZLje
         PjJ8aLdiGAVay07ttcITHyuvYLCcRN09vFcPFrkXZKnFM/X3aNtXVYQcXf5iMtJ9UeCs
         3HCIt1TNyzCz10oFMLstyydfUw+IT3WbxAleTWqX0SaqUvSdthwI6wBmzLpDlvL1r29O
         lvslnGqumR8rSy8nYgATkoqEcm/A38mk7xrMGCZRSS1o5FdHDptTncVqh3dVYN+tTe5/
         yLwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779268637; x=1779873437;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MQM11Mg1okAZbmmFPoevnMUA1OvrXb8LaWj00KaDlLQ=;
        b=L24gMnD2zv6Rj4Msh4xdo5mhND/Z1VPxI5SiRCs30yggye/uYQyeCmhEPiXhPeVmQC
         If/BW7Qx5V6RbJjROP2Ky7osDV3A6ZC43NiqsFni1ShgXmIcNHqNgOuus4tIq7fi9HIT
         LSUPXOPNZ8/Dpa6qcQyrjJB5xjwAtjJQafkLdnWnivEdLfIg7DhnhkNvgSpbQW4CynUW
         pO13Jv/XPrJK21CCiRa8h+YiveLITSvVsaASjzTCGAICFx+J8hI0/ROvigR4MwxIffe1
         UGUKf71XGWv08hZ1IakSsCdJpYEXmc3AIgcp6HRAe1cHWJ6/1JQuWAj2tarUEiuv9NKn
         C0FA==
X-Forwarded-Encrypted: i=1; AFNElJ8ISSbjPZsT36+hEEkFlDz0SZ5xDUZMtApl/j/USJ8EcDRKHtQUzWmb6sqHY3CbPqVMEXmM5LQRHplH/XtRoA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxdZMtcSHL0+ZOIoVU8IqDyolApSOYpb62HVXdSOLkSCglihk0P
	tVc0p0amv4FezfCChwXjeYICAclBo2f4chBERrgm+lNRg+TWkolS+a3njQwUGITpVr8=
X-Gm-Gg: Acq92OFc2px0qynxHA8M9eM0Z4m9ZBns1xbF9gV+FppywVCx8jVli0iDe94O4oDzAB5
	h0cBIIlLM0S9XirVVhUenmy4YG9nrjBWUy2hVqYtIB4trtDmOjCV7qZbx+j9Ad434RrOJTg0oSX
	8cnb/LWNIe7lkLscZXfsX1oZf3N2+Of1XO0LlpfjcLddMzVIhozKLh7uEF3xML3UiQ2WchRIC+3
	wWvTRurt4VXquL6ZdeIMFjM9NLeCPEn7RgNQ7LPQhRm7CaKGzwYcSvczE7Pxb896Cg0nwt6ap99
	RVJCKyStgLodrfSioMuhbJobpLUsZbmAWP/z1qTEHnAT4GG7Yo9EgWxUJrAWWYhy2gW+aNbONM5
	HUFKbZe2gTs92XIjFCf4t5TkryGWcDJoe81PnsP9/YjJ9HE4wrOwBfW9Ffo4rQBxvXRJNWB7HB5
	TyxxLJKOk4ul5y8qTT+TreuJHUwL5mCKj3Ordyo/MbqVl036JggWvW0zhE3z0IgaZjgGJNaPCU/
	EAb
X-Received: by 2002:a05:600c:4e87:b0:48a:768b:eea9 with SMTP id 5b1f17b1804b1-48fe60e51bamr379132105e9.4.1779268636948;
        Wed, 20 May 2026 02:17:16 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:5dda:3751:f88e:6ff? ([2a01:e0a:106d:1080:5dda:3751:f88e:6ff])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48febe7543asm127859995e9.28.2026.05.20.02.17.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 May 2026 02:17:16 -0700 (PDT)
Message-ID: <b9499456-3fd5-4c0b-a0a4-7a6344f21708@linaro.org>
Date: Wed, 20 May 2026 11:17:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v7 16/23] drm: bridge: dw_hdmi: Update EDID and CEC phys
 addr in bridge detect()
To: Jonas Karlman <jonas@kwiboo.se>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Robert Foss <rfoss@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: Liu Ying <victor.liu@nxp.com>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>, Chen-Yu Tsai <wens@kernel.org>,
 Christian Hewitt <christianshewitt@gmail.com>,
 Diederik de Haas <diederik@cknow-tech.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-sunxi@lists.linux.dev, imx@lists.linux.dev,
 linux-kernel@vger.kernel.org
References: <20260518180206.2480119-1-jonas@kwiboo.se>
 <20260518180206.2480119-17-jonas@kwiboo.se>
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
In-Reply-To: <20260518180206.2480119-17-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_021719_032820_8F9A74E5 
X-CRM114-Status: GOOD (  18.82  )
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
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 5/18/26 20:01, Jonas Karlman wrote:
> Update EDID and CEC phys addr in the bridge detect() func to closely
> match the behavior of a bridge connector with a HDMI bridge attached
> and the dw-hdmi connector.
> 
> This change introduce a slight delay to the bridge connector detect()
> and get_modes() funcs due to multiple EDID reads. This is an acceptable
> added delay to help ensure EDID and CEC phys addr always are correct.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
> v7: Update commit message
> v6: New patch
> 
> This is a temporary change until dw-hdmi is fully converted into a
> HDMI bridge in a future part of this multi-series effort.
> 
> The patch "drm/bridge-connector: Use cached connector status in
> .get_modes()" [1] can help remove one unnecessary EDID read until
> dw-hdmi is fully converted into a HDMI bridge.
> 
> [1] https://lore.kernel.org/dri-devel/20260426-dw-hdmi-qp-scramb-v5-3-d778e70c317b@collabora.com/
> ---
>   drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 11 ++++++++++-
>   1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> index 37406555af7b..0c4388e7aa5e 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> @@ -2947,8 +2947,17 @@ static enum drm_connector_status
>   dw_hdmi_bridge_detect(struct drm_bridge *bridge, struct drm_connector *connector)
>   {
>   	struct dw_hdmi *hdmi = bridge->driver_private;
> +	enum drm_connector_status status;
>   
> -	return dw_hdmi_detect(hdmi);
> +	status = dw_hdmi_detect(hdmi);
> +
> +	/*
> +	 * Update EDID and CEC phys addr to match the behavior of a bridge
> +	 * connector with a HDMI bridge attached and the dw-hdmi connector.
> +	 */
> +	dw_hdmi_connector_status_update(hdmi, connector, status);
> +
> +	return status;
>   }
>   
>   static const struct drm_edid *dw_hdmi_bridge_edid_read(struct drm_bridge *bridge,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

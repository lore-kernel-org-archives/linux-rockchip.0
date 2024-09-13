Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 781F0FA3728
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Sep 2024 08:03:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4XpBbV7wUCzJSnaQSDYzk8ezzWEX5RRfu72lpFGgC9w=; b=S95niM01pYBcbLsvTKrOiTx4t5
	pk4+xY91Y3KelRvchp2zq74SQ/mlZv/x9Y3keZLSeekXMIZniPvHLoVmCvwbMZsPslSrkU1NruRRK
	H7xrwPZHVJ0KbykSpcDVBpiMKAU0/uo+2JECvK2fbhg/h39QWm3esTloBb0WYcWGyaNtGsySLDZSg
	0urIexw+uU1H/6yomQqVUdnIJ2/kW0fKdjvs8LAh5Z08aGeWjJR9aoNBX6aSE6c6E/UKA+2B02LS1
	pNb0XcJrDErIZqSudrkaW8V7Sbp2K2Uglnw5e41d6RPrJRjsDLzIl6H4bmYRYNSnsa4hd6c3G4aP4
	YBiage5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp1Gk-0000000FH3h-25Po;
	Fri, 13 Sep 2024 08:03:06 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp1Gh-0000000FH2j-3akQ
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Sep 2024 08:03:05 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-374d29ad870so459181f8f.3
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Sep 2024 01:03:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726214582; x=1726819382; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WuKvojtCZg7g14c14RQDvHtxwoqt5QeCZyN0kUqDmA0=;
        b=Roel7WmTHdhXW+DB3SD4zCUu98ArgMyPLbehZIX6JeonawSHWmVtZCjppHSQ1Hm2cP
         mderQRwYRjtDHdwIvm9rB5j/U6jWNtbJK0ulsDpg5rp+ag02JRe0FYFgTrgLuHTRAJXN
         8Og3JidBwAelt6stV2VPZrtZpGB3oHKIp+x8kOoHwGl0FNI2N+OKyMfiVzLeUHvss3eO
         LptKru5L39YirSMo0VKzbFatjJbiXTrc8H/pXNJKDLB5uPdwCynkVlBInRpXuvczXhgl
         /mAVZGRVeNlS+RhKsoy/ABs/2fdfrR0Ey5ZPidgDKW7+lsUyoq5yZv2trIERd+unWAPo
         yhHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726214582; x=1726819382;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=WuKvojtCZg7g14c14RQDvHtxwoqt5QeCZyN0kUqDmA0=;
        b=sKqNUYiK8J7eignIlQcc/cLWW6LKFBwAow2hhBKhsLtk9wFLixTaYID5AiJQ/j860s
         7dN/wSm5+AQcP6ZLw6pvRNrl4MIo/YX5UDKit/krbPf2yA40iRFifPT4YgjFx5A9SW/c
         xfqMcNkf0gBxXz44fOKFF7sHQcjF3GSlNlD2tyGDcjc2YQq5snw2dAkFYAiEEI4gO5oZ
         Vs58Rpt2Fb2fXhaGdzfaSLedXU4HwbzWc4DHZ1/HmUGDisJ+7iY+Kz8V1WAxlBbhohIq
         lGCtOaSxgzSMi1OwARyeT10KSALnVG9sZUNcuXkusDtPvBHQhSX3wrUnrJfWSrHfdfTi
         tmuQ==
X-Forwarded-Encrypted: i=1; AJvYcCUGLuum4xCs6aOaXuIHzdOFVaf5tYnnNC0xX4ZsfBh/CdhoPlX+Y7OYXWCXqauh01kUAiFAF/RKUlpSnlpBCQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxH9xXMpNleJzf7J1KJWlr8AMUAtbOOS3BB6/yg8YBCU0vCJQjN
	LMku63dYE9noTfKjNhJtLERkhNVZAP+GbN6+HFXt8Rntq+4MYX7k2fPorKYo6Xo=
X-Google-Smtp-Source: AGHT+IGjWX8++sbopvCOcrzHWzZMeCZ109rEfa8ItpaKA91i9e/Yn1nIyeUmaUhA27muapNY9/QnTA==
X-Received: by 2002:adf:edc6:0:b0:34d:ae98:4e7 with SMTP id ffacd0b85a97d-378d6241ff8mr1021335f8f.41.1726214581833;
        Fri, 13 Sep 2024 01:03:01 -0700 (PDT)
Received: from [192.168.7.202] ([212.114.21.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-378956761c6sm16112834f8f.61.2024.09.13.01.03.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Sep 2024 01:03:01 -0700 (PDT)
Message-ID: <17aece51-fe00-4c60-85cc-f89cb14b2e6a@linaro.org>
Date: Fri, 13 Sep 2024 10:03:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 06/10] drm: bridge: dw_hdmi: Remove previous_mode and
 mode_set
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
 <20240908132823.3308029-7-jonas@kwiboo.se>
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
In-Reply-To: <20240908132823.3308029-7-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_010303_931246_B26875D3 
X-CRM114-Status: GOOD (  16.71  )
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
> With the use of adjusted_mode directly from the crtc_state there is no
> longer a need to store a copy in previous_mode, remove it and the now
> unneeded mode_set ops.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
> v2: No change
> ---
>   drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 19 +------------------
>   1 file changed, 1 insertion(+), 18 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> index 1eefa633ff78..6a94376a3da3 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> @@ -154,8 +154,6 @@ struct dw_hdmi {
>   		bool enabled;
>   	} phy;
>   
> -	struct drm_display_mode previous_mode;
> -
>   	struct i2c_adapter *ddc;
>   	void __iomem *regs;
>   	bool sink_is_hdmi;
> @@ -165,7 +163,7 @@ struct dw_hdmi {
>   	struct pinctrl_state *default_state;
>   	struct pinctrl_state *unwedge_state;
>   
> -	struct mutex mutex;		/* for state below and previous_mode */
> +	struct mutex mutex;		/* for state below */
>   	enum drm_connector_force force;	/* mutex-protected force state */
>   	struct drm_connector *curr_conn;/* current connector (only valid when !disabled) */
>   	bool disabled;			/* DRM has disabled our bridge */
> @@ -2894,20 +2892,6 @@ dw_hdmi_bridge_mode_valid(struct drm_bridge *bridge,
>   	return mode_status;
>   }
>   
> -static void dw_hdmi_bridge_mode_set(struct drm_bridge *bridge,
> -				    const struct drm_display_mode *orig_mode,
> -				    const struct drm_display_mode *mode)
> -{
> -	struct dw_hdmi *hdmi = bridge->driver_private;
> -
> -	mutex_lock(&hdmi->mutex);
> -
> -	/* Store the display mode for plugin/DKMS poweron events */
> -	drm_mode_copy(&hdmi->previous_mode, mode);
> -
> -	mutex_unlock(&hdmi->mutex);
> -}
> -
>   static void dw_hdmi_bridge_atomic_disable(struct drm_bridge *bridge,
>   					  struct drm_bridge_state *old_state)
>   {
> @@ -2971,7 +2955,6 @@ static const struct drm_bridge_funcs dw_hdmi_bridge_funcs = {
>   	.atomic_get_input_bus_fmts = dw_hdmi_bridge_atomic_get_input_bus_fmts,
>   	.atomic_enable = dw_hdmi_bridge_atomic_enable,
>   	.atomic_disable = dw_hdmi_bridge_atomic_disable,
> -	.mode_set = dw_hdmi_bridge_mode_set,
>   	.mode_valid = dw_hdmi_bridge_mode_valid,
>   	.detect = dw_hdmi_bridge_detect,
>   	.edid_read = dw_hdmi_bridge_edid_read,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

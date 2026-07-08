Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56D12C43458
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Jul 2026 12:53:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nQ8Kf5Fi7JaeMUVEQtATYgPXiWuxP4gun0XMR2Uj3p8=; b=fpPGFmUsOlIvZG
	B2zhFQWNMmiq1oXRRb5tlcIxd8SnZQQYQEZagSl8XxM7e3Z8WueIFIK9zIWMlJav0g34yd0M4/tvb
	hmTxpF+OXsUJQ/etaYwuqxZR0IO/cXa6U+OEn8HJ8ICdz1UzwfmuKWKKatcXFKxR5mROL+0XUZcre
	izNdrdVJY6XORzKmSmTlYCgpIueAdaE/arui+P0yLUo1K8ul/1e+lR08o84DHiY/hSfrUiQNm5enN
	Gj8G61rlj4HRSGYYCL9yzyScvTEibIhJhOk5++xJspzoRbRrLTFS4HBWQsy+jWKrFfBw7ar/aB0zX
	etPY3hk0vHb8xBZ6fwLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whRmb-0000000H9Dk-16Sc;
	Wed, 08 Jul 2026 12:53:45 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whRmY-0000000H9DG-1BGe;
	Wed, 08 Jul 2026 12:53:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783515218;
	bh=QxoMb4ScZ54Fq062ICFyFTE3Ebaf4OLK2xJ0v8uoiLs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=VreLbx6abeA2IUFgGJUzE3r9liF5gxD1A9+U9a54GiIVuO+W7xxNICcGJ+FaQmWVJ
	 4JQdZzt92/ZN9Qlk4PL27DIRbAEhw4Xm/PzsFxRdcA3n7Lbqrm6ZYahC9ZsUp1dvDa
	 Lda4pXK+xKX1A+XX2Y/0xM+KCKgD515W+kwAA8kJDhE8nQ4b8jgMZFepB97EAC6aSM
	 Wa/rMxR+ko+z9Rcw5ZuzPBdTITqWqy/JyUAJuryGB1IZ/cwwNg+WZnavrNX+PrVcyE
	 1kC9ImbK8LrlxkbUOtEuNlWMGz472rdw19yjHyuvFZCtDbH6LSTgGGdgXJwBRu6xC8
	 4xNFy6km3gjHg==
Received: from [100.64.0.241] (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 0D34B17E0713;
	Wed, 08 Jul 2026 14:53:38 +0200 (CEST)
Message-ID: <a5f4c939-c7f6-4119-aa48-b56d4e16772d@collabora.com>
Date: Wed, 8 Jul 2026 15:53:37 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 31/39] drm/vc4: hdmi: Convert to common SCDC scrambling
 infrastructure
To: Maxime Ripard <mripard@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>, Daniel Stone <daniels@collabora.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>,
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
 kernel@collabora.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20260702-dw-hdmi-qp-scramb-v8-0-d79890d00b6a@collabora.com>
 <20260702-dw-hdmi-qp-scramb-v8-31-d79890d00b6a@collabora.com>
 <20260707-jade-wapiti-of-reverence-ad31b6@houat>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <20260707-jade-wapiti-of-reverence-ad31b6@houat>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260708_055342_483379_DA456750 
X-CRM114-Status: GOOD (  16.96  )
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

On 7/7/26 6:36 PM, Maxime Ripard wrote:
> Hi,
> 
> On Thu, Jul 02, 2026 at 05:46:44PM +0300, Cristian Ciocaltea wrote:
>> @@ -416,10 +281,11 @@ static int vc4_hdmi_connector_detect_ctx(struct drm_connector *connector,
>>  			status = connector_status_connected;
>>  	}
>>
>> -	vc4_hdmi_handle_hotplug(vc4_hdmi, ctx, status);
>> +	ret = drm_atomic_helper_connector_hdmi_hotplug(connector, status, ctx);
>> +
>>  	pm_runtime_put(&vc4_hdmi->pdev->dev);
>>
>> -	return status;
>> +	return ret == -EDEADLK ? ret : status;
>>  }
> 
> This looks like a change that should have its own patch and explanation.

Yeah, I think .detect_ctx is supposed to return -EDEADLK to allow context
owners, e.g. drm_helper_probe_detect_ctx(), to do the backoff and retry.

vc4_hdmi_handle_hotplug() instead runs its own retry loop, calling
drm_modeset_backoff() on the acquire context not owned by the driver, which
drops every lock in the context, including connection_mutex owned by the core.

This is now implicitly fixed by this patch, but you're right that we should
handle this separately, before doing the conversion, i.e. drop the local retry
logic and propagate -EDEADLK to the top level.

>> @@ -778,32 +658,14 @@ static int vc4_hdmi_write_spd_infoframe(struct drm_connector *connector,
>>  					buffer, len);
>>  }
>>  
>> -#define SCRAMBLING_POLLING_DELAY_MS	1000
>> -
>> -static void vc4_hdmi_enable_scrambling(struct drm_encoder *encoder)
>> +static int vc4_hdmi_scrambler_enable(struct drm_connector *connector)
>>  {
>> -	struct vc4_hdmi *vc4_hdmi = encoder_to_vc4_hdmi(encoder);
>> -	struct drm_connector *connector = &vc4_hdmi->connector;
>> -	struct drm_device *drm = connector->dev;
> 
> If you don't remove this line....
> 
>> -	const struct drm_display_mode *mode = &vc4_hdmi->saved_adjusted_mode;
>> +	struct vc4_hdmi *vc4_hdmi = connector_to_vc4_hdmi(connector);
>>  	unsigned long flags;
>>  	int idx;
>>  
>> -	lockdep_assert_held(&vc4_hdmi->mutex);
>> -
>> -	if (!vc4_hdmi_supports_scrambling(vc4_hdmi))
>> -		return;
>> -
>> -	if (!drm_hdmi_mode_needs_scrambling(mode,
>> -					    vc4_hdmi->output_bpc,
>> -					    vc4_hdmi->output_format))
>> -		return;
>> -
>> -	if (!drm_dev_enter(drm, &idx))
> 
> Then you don't need to change this one either

Ack.

Cristian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

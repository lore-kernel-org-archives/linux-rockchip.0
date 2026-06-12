Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C1DDCD98D2
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Jun 2026 19:23:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p2JMCuyDnaGSd4IROw6567xCm+UPtwaqE50NhaZRiHw=; b=iCpqgBn8axH0QX
	onIBhcBejuNberr5xaXcs+xlC4H0HtIu1vbLshK8zR9Nb7/Cq8f81VUAMGZLvStQalCeeUreyEiuc
	xTEDiJ/DVBIiwgzU+HUhgBM+1+BKIUjgD1FUlI0razfehV62e6I0k1jKXLNslXxLLD7bs3B5Az5Kg
	PvE9Aj53Mm9xLOGSMtZg0FLBSpAPl79AJl7sFLclb4Vcq5ii5QFBG41HoD9PaYCveoB8TdiAdv+Zm
	VOQ1XxT52/DsocTfAy6sflH1iRtnrVMeT1gWJzO5gB5uoLVX/ZnFTjGBFkPUBjSaqP3xET4WRJ2rx
	TcvU2zGvLJW0vz98QFZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY7TT-0000000BS71-3kLY;
	Fri, 12 Jun 2026 19:23:27 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY7TR-0000000BS6P-1PiH;
	Fri, 12 Jun 2026 19:23:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1781292201;
	bh=0gYiI0nuF3TbeK77gJZHu37hGbu8poCEiD0ZSHVH6BI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Gm3y3rLlS68dIE9jBDPmevDg42WfdulXApUp3vAv7VyBiVDX5lBLsVz4Ooo6x8oiQ
	 fVzGhxPc15D3LNsmcxF3UzV/dX+t5U3yv66pQR7P6saOQI7//NVDOgS1YT7jq2v6mp
	 XrVqT3wv2DbKwu3I691jheVivA51j13/bTKpUU3udFEyHqbvv33cDmhSi5CsfiEJo1
	 sLuG0ZWupmhJBmyeVBs2hceJeHsPa2ciUBo3fHa/LXSE55Wvsn4SzScBoYeEKbDCNg
	 yXVwsudNWFnlsrDmQsR5WVP11ouXRXzoT8w0+dhe22v2tqkinnK5WM7JZdmcNl9iIL
	 wkeyr6clHNf+w==
Received: from [100.64.0.241] (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id DA53517E040C;
	Fri, 12 Jun 2026 21:23:20 +0200 (CEST)
Message-ID: <e81b477a-ff61-4fdf-9622-b980f8ac453c@collabora.com>
Date: Fri, 12 Jun 2026 22:23:20 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 05/30] drm/display: hdmi_state_helper: Add ctx-aware
 hotplug helper for SCDC sync
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
References: <20260602-dw-hdmi-qp-scramb-v7-0-445eb54ee1ed@collabora.com>
 <20260602-dw-hdmi-qp-scramb-v7-5-445eb54ee1ed@collabora.com>
 <20260611-refined-idealistic-sunfish-3df3a4@houat>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <20260611-refined-idealistic-sunfish-3df3a4@houat>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_122325_560728_79B96958 
X-CRM114-Status: GOOD (  11.44  )
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

On 6/11/26 6:25 PM, Maxime Ripard wrote:
> On Tue, Jun 02, 2026 at 01:44:05AM +0300, Cristian Ciocaltea wrote:
>> Introduce drm_atomic_helper_connector_hdmi_hotplug_ctx(), a variant of
>> drm_atomic_helper_connector_hdmi_hotplug() that accepts a
>> drm_modeset_acquire_ctx.
>>
>> This enables SCDC status synchronization on hotplug events, which
>> requires lock acquisition context for performing the CRTC reset
>> triggered by drm_scdc_sync_status().

[...]

>> diff --git a/include/drm/display/drm_hdmi_state_helper.h b/include/drm/display/drm_hdmi_state_helper.h
>> index 13375bd0f4ae..75fedd4a3ba8 100644
>> --- a/include/drm/display/drm_hdmi_state_helper.h
>> +++ b/include/drm/display/drm_hdmi_state_helper.h
>> @@ -7,6 +7,7 @@ struct drm_atomic_commit;
>>  struct drm_connector;
>>  struct drm_connector_state;
>>  struct drm_display_mode;
>> +struct drm_modeset_acquire_ctx;
>>  struct hdmi_audio_infoframe;
>>  
>>  enum drm_connector_status;
>> @@ -24,6 +25,9 @@ int drm_atomic_helper_connector_hdmi_update_infoframes(struct drm_connector *con
>>  						       struct drm_atomic_commit *state);
>>  void drm_atomic_helper_connector_hdmi_hotplug(struct drm_connector *connector,
>>  					      enum drm_connector_status status);
>> +int drm_atomic_helper_connector_hdmi_hotplug_ctx(struct drm_connector *connector,
>> +						 enum drm_connector_status status,
>> +						 struct drm_modeset_acquire_ctx *ctx);
> 
> There's not a lot of users, so I'd prefer if we were just changing the
> prototype of drm_atomic_helper_connector_hdmi_hotplug()

Ack - that was actually my first attempt, but I later thought it would be more
desirable to handle it incrementally.

Cristian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

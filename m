Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBF44CCA462
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2026 08:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LE8+WvLaIFQnWtf2C+QO9nAUALc+fkQbVuEDM90j778=; b=Svrp1d+HEKqdd1
	rMRFHFgueFSWt2msRfAyKllS1HzD+mMrKWiqtfeZUdDF1orCowqRJA+v4WrsI0z3rlzXDSQFntNa3
	IbcgKxxnN+muo5pqGLki8Pm/X+40jlPM4F+hOle7aVAZXB/hln7g5gEe9//axxVT8TzbX9KXJEiL8
	jEYktiv9jeCRhvveihUBqvmUjMCT2Nd8V4I3+9WnUXuxyPSGB1Blil/V3o8VrONu+4WnvmnTZ428F
	mqS6GQ8MnMcD1a+DHZYTdRZj2N6/cR6qrs3UZrOrFP1YtDPDkdS4PRnQG/t/NmXvNdRititjbYTMG
	oropX21BLSc+XZq65fPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHd2X-00000002IcY-2g8S;
	Fri, 16 Oct 2026 08:11:45 +0000
Received: from forward501d.mail.yandex.net ([31.44.14.17])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHd2R-00000002Iaf-3qFG;
	Fri, 16 Oct 2026 08:11:43 +0000
Received: from mail-nwsmtp-smtp-production-main-94.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-94.yp-c.yandex.net)
	by forward501d.mail.yandex.net (postfix) with ESMTPS id E1EFB8C89B;
	Fri, 16 Oct 2026 11:11:27 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-94.klg.yp-c.yandex.net (smtp) with ESMTPSA id JBRg126jYuQ0-DVbcivsL;
	Fri, 16 Oct 2026 11:11:26 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.com; s=mail;
	t=1792138286; bh=rq6SMlQuCiakYGNieZYuyvDSsk5kerjEngv1ARm94rA=;
	h=From:In-Reply-To:Cc:Date:References:To:Subject:Message-ID;
	b=f7qE8oi8x9EViSgs5j3yIQIvEdvIJ7JRnJK2OPlDA+pKZsr3oe84ND5ICPhNVrLsR
	 Gocrh9iQ2tHoSPTTgG+pp+u5lkmia/cIEiCTxRuxpEXmnxgtIVn8Fv7fzI/cJuaibv
	 +LHaNQiSFiDh9RwwzXfuoF1d3dyNuw1c7b45YysQ=
Authentication-Results: mail-nwsmtp-smtp-production-main-94; dkim=pass header.i=@yandex.com
Message-ID: <d1f0369c-ff43-4b76-9092-5c638b132f15@yandex.com>
Date: Fri, 16 Oct 2026 10:11:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] drm: devm_drm_bridge_alloc() conversion and cleanup
To: Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Huseyin BIYIK <boogiepop@gmx.com>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20261001-bridge-alloc-conv-v1-0-f0a1fe040a86@collabora.com>
 <179213353665.3058528.14437637653539699061.b4-ty@b4>
Content-Language: en-US, ar-EG
From: Johan Jonker <jbx6244@yandex.com>
In-Reply-To: <179213353665.3058528.14437637653539699061.b4-ty@b4>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_011140_441667_8894882A 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
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

Hi,

If any decency or Code of Conduct left in the DRM group then also credit the original author.
Also remove driver_private.

Johan

===

[PATCH v3] drm/rockchip: rk3066_hdmi: convert to devm_drm_bridge_alloc() API
https://lore.kernel.org/linux-rockchip/20260904-drm-v3-1-5b36532a3b72@gmail.com/  

[PATCH v2] drm/rockchip: rk3066_hdmi: convert to devm_drm_bridge_alloc() API
https://lore.kernel.org/linux-rockchip/20260824-drm-v2-1-7f9273c6020b@gmail.com/

https://lore.kernel.org/linux-rockchip/dea8a038-577b-45da-bff3-703e9099b7e1@gmail.com/
[PATCH v1] drm/rockchip: rk3066_hdmi: convert to devm_drm_bridge_alloc() API

On 10/16/26 08:52, Luca Ceresoli wrote:
> 
> On Thu, 01 Oct 2026 11:25:10 +0300, Cristian Ciocaltea wrote:
>> Bridge drivers are expected to allocate their private data via
>> devm_drm_bridge_alloc(), which also initializes the embedded struct
>> drm_bridge, including its funcs pointer.  Most drivers were converted by
>> commit 9c399719cfb9 ("drm: convert many bridge drivers from
>> devm_kzalloc() to devm_drm_bridge_alloc() API"), but a couple of
>> leftovers remain.
>>
>> [...]
> 
> Applied, thanks!
> 
> [1/2] drm/rockchip: rk3066_hdmi: Convert to devm_drm_bridge_alloc() API
>       commit: 5c0cdbee4fa4a621f871d6dc825e759db08a1a4a
> [2/2] drm/bridge: lontium-lt8713sx: Drop redundant bridge funcs assignment
>       commit: 382c1e8ba409d1611cd256dccebdfa828c832bb1
> 
> Best regards,


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

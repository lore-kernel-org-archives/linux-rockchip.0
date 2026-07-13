Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36F57C44501
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jul 2026 10:23:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aF1lvAYg3/uibzb2t2fuDNLB0mTXc6sjF2QwngfVvcA=; b=Ozkc0c4YB/Ljic
	T2nw9i6w2E/DukaR9wNFPU3zlr2kSJ5DT6XXfDAqHnX9My4Jdxvzx/PSJAMynKB34uONx9p0JR3qz
	nGLV2ShYOjeC3WpRoKE9QMMWDU2YDj5lmDUY1czFMnwI40CADttcPvMnHuG4KTYy2qi/ZgtgXSAl/
	B8R2ufs7AlJ8dKthYwNd9fG9gLjLJFA3m/lqxQCVBFbwybRaxp6Z5u2tSKXDCMZjlwiSoyWWThIdU
	I316Hhl/1cCDrYVJAFk84cBHYS5Q7BZXxumnIUTgM9dt/gv+5h0zuQL2sbyJTdDoNkyZxcllzr0w6
	5xDthb0KVIQlnLCGZ8jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjDod-00000008s2H-1Jll;
	Mon, 13 Jul 2026 10:23:11 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjDoW-00000008ryW-37jd;
	Mon, 13 Jul 2026 10:23:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783938182;
	bh=2r583XFfObOO9iTa1b+fiv9AEByaQ06sNo4m0E6ODtM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=NZb6XZ//5JX0tOhJA7XAYNQcOl8FFLopCWT74GVz3uGNrs+oaysIKDUILbXHolj+l
	 U+mXStLMVirMzQviZqKZdgRuZquMmdUmTRhmnSi6PtHnXAl1JTEfnLFS57pAH/SBnR
	 30ki5UfRzkg1XBOZPkJzntRo2UZ94AEu9cHDdXypFjbbY2pI0EIbCtPKMuJxIuHqKN
	 ewK6lzPzuebILhrYvY8M82B++JGnIgeXbY6Mzp5hr7q2zQG59hBMwTDpIaHxOcJ0YC
	 Kz4su9gynjYJwiTYM1VPdRigw/pfrLyGO2jTFwg0CYakYgC39zNYlkEX88Jfhufu0/
	 4dQY1Nt2JIHOg==
Received: from [100.64.0.241] (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 4DB7C17E03CE;
	Mon, 13 Jul 2026 12:23:01 +0200 (CEST)
Message-ID: <91c3a825-3344-4ff5-8ea0-f8f057665b3f@collabora.com>
Date: Mon, 13 Jul 2026 13:23:00 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 04/39] drm/connector: Add HDMI 2.0 scrambler
 infrastructure
To: Maxime Ripard <mripard@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
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
 <20260702-dw-hdmi-qp-scramb-v8-4-d79890d00b6a@collabora.com>
 <tjsidlnvswo2rdhqa6jybxrnb47lxgmxdlfrfbasuh67wjbqoy@3a45n3zawvnf>
 <17753a1c-824a-4835-ac2d-8b2796bba1eb@collabora.com>
 <534b921c-638c-4fc3-b89e-5dfc1f269f96@collabora.com>
 <20260713-statuesque-nonchalant-seagull-b9c39d@houat>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <20260713-statuesque-nonchalant-seagull-b9c39d@houat>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260713_032304_969223_86FEA25B 
X-CRM114-Status: GOOD (  19.73  )
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

On 7/13/26 11:50 AM, Maxime Ripard wrote:
> On Thu, Jul 09, 2026 at 10:25:54PM +0300, Cristian Ciocaltea wrote:
>> On 7/3/26 11:54 PM, Cristian Ciocaltea wrote:
>>> On 7/3/26 5:34 PM, Dmitry Baryshkov wrote:
>>>> On Thu, Jul 02, 2026 at 05:46:17PM +0300, Cristian Ciocaltea wrote:
>>>>> Add the connector-level infrastructure to support HDMI 2.0 scrambling:
>>>>>
>>>>> - A scrambler_supported flag to indicate whether the source supports the
>>>>>   scrambling capability, in which case the newly introduced
>>>>>   .scrambler_{enable|disable}() callbacks in drm_connector_hdmi_funcs
>>>>>   are mandatory
>>>>
>>>> Do we need a flag? What would it mean if the flag is set, but the
>>>> callbacks are not? Can we drop the flag and use the presence of the
>>>> callbacks as a way to identify that scrambler is enabled?
>>>
>>> The flag is intended to be set only within drmm_connector_hdmi_init_with_caps()
>>> when drivers advertise HDMI 2.x capability, in which case it also ensures the
>>> callbacks are provided.  
>>>
>>> We could drop the flag and instead have the init helper clear the callbacks if
>>> they were provided for HDMI 1.x.  This might slightly reduce code readability,
>>> as it relies on checking the presence of individual callbacks - especially since
>>> we plan to extend this further with HDMI 2.1 support, providing four or five
>>> additional FRL-specific callbacks.
>>
>> I tried to replace the flag with a helper that checks the presence of (one of)
>> the callbacks, but it's not straightforward to unset those for non-HDMI 2.x
>> cases since the hdmi_funcs argument is immutable.
> 
> I'm not sure why we would need to unset them. If the driver states that
> it support HDMI 2.0, then it needs to be there, if it doesn't, then who
> cares? it's not going to be used. We can log a warning that it's
> inconsistent I guess, but there's no need to actively remove it.

I was trying to address the use case where drivers provide the scrambler
callbacks despite not supporting HDMI 2.0.  If we replace the
scrambler_supported flag with a helper checking the presence of the scrambler
callbacks, then we would need to ensure the callbacks do not exist in this case.
Since we cannot/don't want to unset them, the remaining solution would be to
bail out in init().

>> Also, rejecting that use case is less than ideal, since we would restrict
>> reusing the struct instance, e.g. to support HW revisions with varying
>> scrambling capabilities.
> 
> We can have several structures instances in that case.

Fair enough, I wasn't sure if that'd be an acceptable drawback.

Thanks,
Cristian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

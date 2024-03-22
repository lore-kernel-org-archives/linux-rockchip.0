Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88C0DC54E71
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Mar 2024 11:28:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K8EmjTxvUatzitS8ydXJEQo/9tuxNUnHxWsPLJ94jCo=; b=IG6Q/xDHrkV3YW
	rDD0lY4+UCXrXksXrz2eF91lzoIrzFDCKThOtXC4aWZchbD3ywp/LM3GPU322p946l5vk/EPPDh+2
	ew3CoxXMdZjrColpCVHdTsVI1sjsUYbBhDy7bp8437niJbU14fJPrxKwoiwIBSGUu/IYaWvVHWYPO
	ne8Zi6qH98iBVCthpudBa+xTXapqJNbgY9kfncWugxXBDV4BtwAHz0kDH1AgWNvPZT3Z6QIu5fnNT
	E1dz5tK+i3f5fb/nEqO7MnDhZA5dg1tuNwnA5SeMpAPZ6Lnb4+QYlru5Oj6R0KiLeLIb71HazBaF4
	bYwqQ+hiQXMu4V+eJXew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnd4c-00000006xsL-08EK;
	Fri, 22 Mar 2024 11:28:34 +0000
Received: from out-170.mta0.migadu.com ([2001:41d0:1004:224b::aa])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnd4Y-00000006xqK-1nAl
	for linux-rockchip@lists.infradead.org;
	Fri, 22 Mar 2024 11:28:32 +0000
Message-ID: <6ea523f5-2628-4269-9194-dfb6bf07f4db@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1711106904;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=uNC0CCmpYhCcH8TuokVlW8ASQZ45O/eH5PrkVa66tCA=;
	b=IIB1jlFbZEqqghgVkJSf3iJOkGODQW2yz0EtVMKFmrmwi5YI2/k1T2ZNs9yLzICh1yGzfQ
	b1OTU/sKMALlLoLwIIS9N1aYn9LrVET8//z8YRlHr6aB6o3zKvgaSyCkjkTc47+pKf+/tF
	FzT2awU6tMmBerhJCJI7vciw4oeFL34=
Date: Fri, 22 Mar 2024 19:28:08 +0800
MIME-Version: 1.0
Subject: Re: [v10,20/27] drm/connector: hdmi: Add Infoframes generation
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>,
 Sebastian Wick <sebastian.wick@redhat.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-sunxi@lists.linux.dev
References: <20240321-kms-hdmi-connector-state-v10-20-e6c178361898@kernel.org>
 <07125064-2a78-4515-bb48-655f2aec140f@linux.dev> <87sf0iliyh.fsf@intel.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Sui Jingfeng <sui.jingfeng@linux.dev>
In-Reply-To: <87sf0iliyh.fsf@intel.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_042830_719430_76B2EB6F 
X-CRM114-Status: GOOD (  14.18  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,


On 2024/3/22 17:22, Jani Nikula wrote:
> On Fri, 22 Mar 2024, Sui Jingfeng <sui.jingfeng@linux.dev> wrote:
>> Hi,
>>
>>
>> On 2024/3/21 23:29, Maxime Ripard wrote:
>>> Infoframes in KMS is usually handled by a bunch of low-level helpers
>>> that require quite some boilerplate for drivers. This leads to
>>> discrepancies with how drivers generate them, and which are actually
>>> sent.
>>>
>>> Now that we have everything needed to generate them in the HDMI
>>> connector state, we can generate them in our common logic so that
>>> drivers can simply reuse what we precomputed.
>>>
>>> Signed-off-by: Maxime Ripard <mripard@kernel.org>
>>> ---
>>>    drivers/gpu/drm/Kconfig                            |   1 +
>>>    drivers/gpu/drm/drm_atomic_state_helper.c          | 338 +++++++++++++++++++++
>>>    drivers/gpu/drm/drm_connector.c                    |  14 +
>>>    .../gpu/drm/tests/drm_atomic_state_helper_test.c   |   1 +
>>>    drivers/gpu/drm/tests/drm_connector_test.c         |  12 +
>>>    include/drm/drm_atomic_state_helper.h              |   8 +
>>>    include/drm/drm_connector.h                        | 109 +++++++
>>>    7 files changed, 483 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
>>> index 16029435b750..3d3193c7aa5f 100644
>>> --- a/drivers/gpu/drm/Kconfig
>>> +++ b/drivers/gpu/drm/Kconfig
>>> @@ -97,10 +97,11 @@ config DRM_KUNIT_TEST
>>>    	  If in doubt, say "N".
>>>    
>>>    config DRM_KMS_HELPER
>>>    	tristate
>>>    	depends on DRM
>>> +	select DRM_DISPLAY_HDMI_HELPER
>> Should we select DRM_DISPLAY_HELPER here? Otherwise there will have some compile error
>> emerged with default config.
> Can we stop abusing select instead of adding more selects to paper over
> the issues?
>
> Use select only for non-visible symbols (no prompts anywhere) and for
> symbols with no dependencies.


OK, fine.

You probably want to tell us a concrete method, then we will follow.
But I guess that is up to Maxime will adopt it or not. Probably need
some discussion then.


>
> BR,
> Jani.
>


-- 
Best regards,
Sui


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

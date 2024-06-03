Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E469CC25B75
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Jun 2024 09:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1TYJZNlsqv5mDAHlO6AVoWkxlhhIBWsGXLnsDh1LCgI=; b=qUSd17gZKy/rBt
	N8nGbcKUf7t8syX3UNPeJom+M9U4iakxtdA4/z1RDx0r92TmlJ/uPL8jotEmG+KYc9+pVNZHy4WAQ
	/Z8qrbZUvfEHsfxCoiBDug2GG5ZkNtNn3hGrIcHpQT6MlJFZza6NWyp1/Fr6wAvxcFmLwgyLnuyKn
	jxaldNSdsjhJYhnReEG88O4AhXXgmA7UTX0iqsR8+ugFKYfgeuM0vw20VGX3dlp5FRihpFX8zyHOh
	74KqxgbOs02zSHCMtgguIPlhDDODjaeKP76CVfVPzWqZ2vWjocLpD+sBbEYd4RofQwm3fpoms1sst
	EnTslbmhjQQieuuGeAhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sE40B-0000000GCi7-3jmT;
	Mon, 03 Jun 2024 09:29:16 +0000
Received: from mgamail.intel.com ([192.198.163.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sE404-0000000GCZu-29nZ;
	Mon, 03 Jun 2024 09:29:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1717406948; x=1748942948;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version;
  bh=j4w9K5djQp5xn5C5Ueh22RoGjSGi1Sn90cfAUmAMli4=;
  b=elLBe2ttsGdDqQ/t0/KDm8D1NTBS6UTbGTXCqHkEK0UyQ3vJK/ZYT1lG
   KiZ2dIU8p7sU04dut2zOht644DiQIVJOU4LOG3T3HE2orNIHmLXPxcdkN
   bY0E9MQ/lJ4aUYJl1qQGHwVV2zPKjwBFOxQp7g5MdtDa03Eo/F0DUFM1D
   ASn6IXXIyfUl+DwCz8IBffTNXP8GKSDhIdMPPWzVFFZwNsh3Za/kUsEEa
   rUQooqKZHppv3sEGs5sY+u2jo/CmAVsDpeOxYqsydclERweAg3xPeYr+3
   czXVDtigNbe6Yfs0HvLHL445y8zfC1TbfD+aHpg/40BbIlTeyQbiCumm2
   Q==;
X-CSE-ConnectionGUID: hY4f2AvSQJCbGHns9syemQ==
X-CSE-MsgGUID: 9RAW3ZvfSReCSJcW6Qc6Xw==
X-IronPort-AV: E=McAfee;i="6600,9927,11091"; a="17731601"
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; 
   d="scan'208";a="17731601"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
  by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Jun 2024 02:29:04 -0700
X-CSE-ConnectionGUID: eWA6METETtCUr4cLJQgSJw==
X-CSE-MsgGUID: MRakdQpsR5CfCmhg/Ux7PQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; 
   d="scan'208";a="37444940"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost) ([10.245.246.39])
  by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Jun 2024 02:28:54 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Maxime Ripard <mripard@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter
 <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, Sandy Huang
 <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
 Chen-Yu Tsai
 <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland
 <samuel@sholland.org>, Andy Yan <andy.yan@rock-chips.com>, Hans Verkuil
 <hverkuil@xs4all.nl>, Sebastian Wick <sebastian.wick@redhat.com>, Ville
 =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, Dave
 Stevenson <dave.stevenson@raspberrypi.com>, Sui Jingfeng
 <sui.jingfeng@linux.dev>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Pekka Paalanen <pekka.paalanen@collabora.com>, =?utf-8?Q?Ma=C3=ADra?= Canal
 <mcanal@igalia.com>, Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH v15 00/29] drm/connector: Create HDMI Connector
 infrastructure
In-Reply-To: <20240603-nippy-ludicrous-caracara-e02e3c@houat>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240527-kms-hdmi-connector-state-v15-0-c5af16c3aae2@kernel.org>
 <874jadesaj.fsf@intel.com>
 <20240603-nippy-ludicrous-caracara-e02e3c@houat>
Date: Mon, 03 Jun 2024 12:28:51 +0300
Message-ID: <87zfs2cr3g.fsf@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240603_022908_613599_D2533901 
X-CRM114-Status: GOOD (  14.01  )
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

On Mon, 03 Jun 2024, Maxime Ripard <mripard@kernel.org> wrote:
> Hi Jani,
>
> On Fri, May 31, 2024 at 09:43:16PM GMT, Jani Nikula wrote:
>> On Mon, 27 May 2024, Maxime Ripard <mripard@kernel.org> wrote:
>> > Let me know what you think,
>> 
>> Sorry to report that this series generates a bunch of kernel-doc
>> warnings in include/drm/drm_connector.h. Documenting nested struct
>> members doesn't work as smoothly as you'd expect:
>>
>> ../include/drm/drm_connector.h:1138: warning: Excess struct member 'broadcast_rgb' description in 'drm_connector_state'
>> ../include/drm/drm_connector.h:1138: warning: Excess struct member 'infoframes' description in 'drm_connector_state'
>> ../include/drm/drm_connector.h:1138: warning: Excess struct member 'avi' description in 'drm_connector_state'
>> ../include/drm/drm_connector.h:1138: warning: Excess struct member 'hdr_drm' description in 'drm_connector_state'
>> ../include/drm/drm_connector.h:1138: warning: Excess struct member 'spd' description in 'drm_connector_state'
>> ../include/drm/drm_connector.h:1138: warning: Excess struct member 'vendor' description in 'drm_connector_state'
>> ../include/drm/drm_connector.h:1138: warning: Excess struct member 'is_limited_range' description in 'drm_connector_state'
>> ../include/drm/drm_connector.h:1138: warning: Excess struct member 'output_bpc' description in 'drm_connector_state'
>> ../include/drm/drm_connector.h:1138: warning: Excess struct member 'output_format' description in 'drm_connector_state'
>> ../include/drm/drm_connector.h:1138: warning: Excess struct member 'tmds_char_rate' description in 'drm_connector_state'
>> ../include/drm/drm_connector.h:2112: warning: Excess struct member 'vendor' description in 'drm_connector'
>> ../include/drm/drm_connector.h:2112: warning: Excess struct member 'product' description in 'drm_connector'
>> ../include/drm/drm_connector.h:2112: warning: Excess struct member 'supported_formats' description in 'drm_connector'
>> ../include/drm/drm_connector.h:2112: warning: Excess struct member 'infoframes' description in 'drm_connector'
>> ../include/drm/drm_connector.h:2112: warning: Excess struct member 'lock' description in 'drm_connector'
>> ../include/drm/drm_connector.h:2112: warning: Excess struct member 'audio' description in 'drm_connector'
>> 
>> Noticed this when I was rebasing [1]. Having that merged would find
>> issues in headers at build time instead of 'make htmldocs'.
>> 
>> In the mean time, this is the quick reproducer:
>> 
>> $ scripts/kernel-doc -none include/drm/drm_connector.h
>
> Thanks for the report and the reproducer. I have to admit I have no idea
> how to fix it, do you have a suggestion?

Some of them can be fixed by adding the parent struct name, like so:

-                * @broadcast_rgb: Connector property to pass the
+                * @hdmi.broadcast_rgb: Connector property to pass the

but I think even that falls apart at some point. :(

In the end might be easier to separate the struct definitions to reduce
nesting.


BR,
Jani.


-- 
Jani Nikula, Intel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9EC8C54E71
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Mar 2024 11:47:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x5VfFZ/I2b88YWZPojmCbn5sbGP9YRoC6Yclu5lCxq0=; b=oLd7SRkyJw2FTx
	qOQaR9ODXs3xatINYuDSExmFE7rlHxKNNeZhDcIEpzJc20XzplXQOi7Ut1ns1GEcHK0f025AUG8oN
	kn3BVBjyRt03fV1aatcduTh4W6mLO0h2o+Yjh5JxVrqY8QMkh3voIEb2LaVh4c3/FlXZFpiuGQp+y
	yCrTbX0h75QOs23sPrP4wcdY26pcE7/66yUcUP0oqbjVvvVSREkB2nBRkB6OJF2bUgS+hMPSjgbC7
	YnT+LzkKawlqnDECbYPzAMJZLlBNeu0nUGVIrb55DEedNYmJ6x9LHP5d5oJzCXkFp59bjLeEXg04N
	F6qmKXOasiVI7VTs561Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rndMS-000000070W4-0oCw;
	Fri, 22 Mar 2024 11:47:00 +0000
Received: from mgamail.intel.com ([198.175.65.10])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rndMP-000000070VS-0ClR;
	Fri, 22 Mar 2024 11:46:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1711108017; x=1742644017;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version;
  bh=medsa2dMRB93xUxNAamarustBHMc8szL/8blQzMu2XM=;
  b=G5vMBiA42yhiWIE8tgewMbxzU3aTTmwRMJzer+oJOLOSCZqosL5iesRU
   Kx3j8Uvhg3YP76EQMRljkul93J0S2/6g+4z7edJ64IjqZ7C4V+8QlZE7r
   58o0qHecwpaaVVk2Ryuqe9vnmT9mK3eLu0l8y4xRR5bPHqt9U9VcdlJyj
   j1YyDeUu3PR9fho/iFkJhSkJi52GKx2URACf9lRbokDTIWG+wTtoWYfgi
   aBTgiQk45PdrkRvGdSup84hUg+NL6RWaAT6XfBxQzdFV2/aiHGj4sRvWT
   78Htgfsbh/dPnxVMCw7CCDdVLqjQ3ce+12VMvTDtE2vOz3UgzUzAaPSAa
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="23604098"
X-IronPort-AV: E=Sophos;i="6.07,145,1708416000"; 
   d="scan'208";a="23604098"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Mar 2024 04:46:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,145,1708416000"; 
   d="scan'208";a="19349726"
Received: from ghoshsu1-mobl.ger.corp.intel.com (HELO localhost) ([10.252.55.6])
  by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Mar 2024 04:46:48 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Maxime Ripard <mripard@kernel.org>
Cc: Sui Jingfeng <sui.jingfeng@linux.dev>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter
 <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, Sandy Huang
 <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
 Chen-Yu Tsai
 <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland
 <samuel@sholland.org>, Hans Verkuil <hverkuil@xs4all.nl>, Sebastian Wick
 <sebastian.wick@redhat.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject: Re: [v10,20/27] drm/connector: hdmi: Add Infoframes generation
In-Reply-To: <20240322-petite-fabulous-bustard-b168ec@houat>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240321-kms-hdmi-connector-state-v10-20-e6c178361898@kernel.org>
 <07125064-2a78-4515-bb48-655f2aec140f@linux.dev>
 <87sf0iliyh.fsf@intel.com> <20240322-petite-fabulous-bustard-b168ec@houat>
Date: Fri, 22 Mar 2024 13:46:42 +0200
Message-ID: <87plvmjxp9.fsf@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_044657_156486_79F66B7C 
X-CRM114-Status: GOOD (  21.20  )
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

On Fri, 22 Mar 2024, Maxime Ripard <mripard@kernel.org> wrote:
> On Fri, Mar 22, 2024 at 11:22:14AM +0200, Jani Nikula wrote:
>> On Fri, 22 Mar 2024, Sui Jingfeng <sui.jingfeng@linux.dev> wrote:
>> > Hi,
>> >
>> >
>> > On 2024/3/21 23:29, Maxime Ripard wrote:
>> >> Infoframes in KMS is usually handled by a bunch of low-level helpers
>> >> that require quite some boilerplate for drivers. This leads to
>> >> discrepancies with how drivers generate them, and which are actually
>> >> sent.
>> >>
>> >> Now that we have everything needed to generate them in the HDMI
>> >> connector state, we can generate them in our common logic so that
>> >> drivers can simply reuse what we precomputed.
>> >>
>> >> Signed-off-by: Maxime Ripard <mripard@kernel.org>
>> >> ---
>> >>   drivers/gpu/drm/Kconfig                            |   1 +
>> >>   drivers/gpu/drm/drm_atomic_state_helper.c          | 338 +++++++++++++++++++++
>> >>   drivers/gpu/drm/drm_connector.c                    |  14 +
>> >>   .../gpu/drm/tests/drm_atomic_state_helper_test.c   |   1 +
>> >>   drivers/gpu/drm/tests/drm_connector_test.c         |  12 +
>> >>   include/drm/drm_atomic_state_helper.h              |   8 +
>> >>   include/drm/drm_connector.h                        | 109 +++++++
>> >>   7 files changed, 483 insertions(+)
>> >>
>> >> diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
>> >> index 16029435b750..3d3193c7aa5f 100644
>> >> --- a/drivers/gpu/drm/Kconfig
>> >> +++ b/drivers/gpu/drm/Kconfig
>> >> @@ -97,10 +97,11 @@ config DRM_KUNIT_TEST
>> >>   	  If in doubt, say "N".
>> >>   
>> >>   config DRM_KMS_HELPER
>> >>   	tristate
>> >>   	depends on DRM
>> >> +	select DRM_DISPLAY_HDMI_HELPER
>> >
>> > Should we select DRM_DISPLAY_HELPER here? Otherwise there will have some compile error
>> > emerged with default config.
>> 
>> Can we stop abusing select instead of adding more selects to paper over
>> the issues?
>> 
>> Use select only for non-visible symbols (no prompts anywhere) and for
>> symbols with no dependencies.
>
> I don't really have an opinion there, but it looks like all the other
> helpers Kconfig symbols are using select everywhere, and I don't really
> see how we could turn them into visible symbols with depends on without
> breaking a number of defconfig.
>
> Could you expand a bit what you have in mind here?

Just my standard grumbling about the rampant select abuse.

Maybe one day someone takes the hint and starts fixing things up. :p

See the note under "reverse dependencies" at [1].


BR,
Jani.


[1] https://docs.kernel.org/kbuild/kconfig-language.html#menu-attributes


-- 
Jani Nikula, Intel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

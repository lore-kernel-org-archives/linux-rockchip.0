Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B7C1C25B75
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 May 2024 18:43:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t2aNRmE7gDejCmfTxmHzRGatQ5dvWslXbzPtsXXwMYk=; b=lVo6PU/ag19QVK
	OjaDcqlP8DM6z76hDhfYvN3wJ6L8aj553j+gl1nCZIBdRwDG5ImplazOYVD0yIq+LuaZd2hxqRgXV
	+PVmSc+mmG9zXJkUxq4rIVw4VLe9quhPxoTvNUhmfceh2bsXey+xnxrFvFbIkAKj1V7dhRxf6dK5N
	paQAPVEvJ5M51ym6BToH7cV0nqYVX1x2ZskB5qVqn+WA52zcUnLugR/6Kqdn+yXpvWluxnjVwy0Me
	w6qi4sdrhMKwq0JcumSr9KXIGO1A5V1pUYiCZe0oXBtCZ7t8hI/uw98ujVnQO0GqVi9uQY9UzUYye
	AJQpcMTfdZdgVkl+RKCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD7EB-0000000B9fZ-3bZn;
	Fri, 31 May 2024 18:43:47 +0000
Received: from mgamail.intel.com ([198.175.65.18])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD7E1-0000000B9bh-21zA;
	Fri, 31 May 2024 18:43:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1717181017; x=1748717017;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version;
  bh=2998ZpVyEGYSKDxYSM479TmMh5OPYVOX8crtu3Z6n7M=;
  b=QkFbBiAo2ChwIc3XgTsk1OvKNyPTIAYkxprrrZBAsQyNeqlJ3afuhQ2z
   jBVxcnfNe7DoNmJTYjXMsQbcN3Luumx79GiXSIHUrYMV5E7hvm2cKmk5E
   Yz/fJBU9tr3NFcBWJrdV1ZTF6E+YnvhJ7Nb7zag4fbmp7p/Wg8Khf/qbh
   8R90O3H63+JupqcDKQEPlkZ2gq5nWAo17oPyS0XYhlO5G15zkPnWaHjF6
   3MUSg4xeLaQZDzyVhmfIjnnWjGdUDpK1l6bO1MzLBlPC90aIG9IMcn068
   nn8VwOwvC+JBp/0NYwz2VP2Q7ZFUEVKRhvNeB9ewoX/zSqHiq3XORPKku
   Q==;
X-CSE-ConnectionGUID: bgbenSDNQTm/qVZbvNMLEQ==
X-CSE-MsgGUID: 5f62LyyFSSujQkpgBsojMw==
X-IronPort-AV: E=McAfee;i="6600,9927,11089"; a="13906109"
X-IronPort-AV: E=Sophos;i="6.08,205,1712646000"; 
   d="scan'208";a="13906109"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
  by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 May 2024 11:43:30 -0700
X-CSE-ConnectionGUID: XalLKdCvTZiIXlO2BFstSA==
X-CSE-MsgGUID: x6tLlc2wR5SjtXITRwjjtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,205,1712646000"; 
   d="scan'208";a="41322240"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.246.190])
  by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 May 2024 11:43:20 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Maxime Ripard <mripard@kernel.org>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter
 <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, Sandy Huang
 <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
 Chen-Yu Tsai
 <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland
 <samuel@sholland.org>, Andy Yan <andy.yan@rock-chips.com>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, Sebastian Wick
 <sebastian.wick@redhat.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, Maxime
 Ripard <mripard@kernel.org>, Dave Stevenson
 <dave.stevenson@raspberrypi.com>, Sui Jingfeng <sui.jingfeng@linux.dev>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Pekka Paalanen
 <pekka.paalanen@collabora.com>, =?utf-8?Q?Ma=C3=ADra?= Canal
 <mcanal@igalia.com>, Andy Yan
 <andyshrk@163.com>
Subject: Re: [PATCH v15 00/29] drm/connector: Create HDMI Connector
 infrastructure
In-Reply-To: <20240527-kms-hdmi-connector-state-v15-0-c5af16c3aae2@kernel.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240527-kms-hdmi-connector-state-v15-0-c5af16c3aae2@kernel.org>
Date: Fri, 31 May 2024 21:43:16 +0300
Message-ID: <874jadesaj.fsf@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240531_114337_572792_BE4675AD 
X-CRM114-Status: UNSURE (   5.67  )
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

On Mon, 27 May 2024, Maxime Ripard <mripard@kernel.org> wrote:
> Let me know what you think,

Sorry to report that this series generates a bunch of kernel-doc
warnings in include/drm/drm_connector.h. Documenting nested struct
members doesn't work as smoothly as you'd expect:

../include/drm/drm_connector.h:1138: warning: Excess struct member 'broadcast_rgb' description in 'drm_connector_state'
../include/drm/drm_connector.h:1138: warning: Excess struct member 'infoframes' description in 'drm_connector_state'
../include/drm/drm_connector.h:1138: warning: Excess struct member 'avi' description in 'drm_connector_state'
../include/drm/drm_connector.h:1138: warning: Excess struct member 'hdr_drm' description in 'drm_connector_state'
../include/drm/drm_connector.h:1138: warning: Excess struct member 'spd' description in 'drm_connector_state'
../include/drm/drm_connector.h:1138: warning: Excess struct member 'vendor' description in 'drm_connector_state'
../include/drm/drm_connector.h:1138: warning: Excess struct member 'is_limited_range' description in 'drm_connector_state'
../include/drm/drm_connector.h:1138: warning: Excess struct member 'output_bpc' description in 'drm_connector_state'
../include/drm/drm_connector.h:1138: warning: Excess struct member 'output_format' description in 'drm_connector_state'
../include/drm/drm_connector.h:1138: warning: Excess struct member 'tmds_char_rate' description in 'drm_connector_state'
../include/drm/drm_connector.h:2112: warning: Excess struct member 'vendor' description in 'drm_connector'
../include/drm/drm_connector.h:2112: warning: Excess struct member 'product' description in 'drm_connector'
../include/drm/drm_connector.h:2112: warning: Excess struct member 'supported_formats' description in 'drm_connector'
../include/drm/drm_connector.h:2112: warning: Excess struct member 'infoframes' description in 'drm_connector'
../include/drm/drm_connector.h:2112: warning: Excess struct member 'lock' description in 'drm_connector'
../include/drm/drm_connector.h:2112: warning: Excess struct member 'audio' description in 'drm_connector'

Noticed this when I was rebasing [1]. Having that merged would find
issues in headers at build time instead of 'make htmldocs'.

In the mean time, this is the quick reproducer:

$ scripts/kernel-doc -none include/drm/drm_connector.h


BR,
Jani.

[1] https://lore.kernel.org/r/20240402140136.1722533-1-jani.nikula@intel.com


-- 
Jani Nikula, Intel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
